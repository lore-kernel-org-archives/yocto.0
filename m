Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.1663.1621280241855816001
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 May 2021 12:37:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=TP0MbAe7;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: b.hutchman@gmail.com)
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	by mail.yoctoproject.org (Postfix) with ESMTPS id CA98838C11C9
	for <yocto@yoctoproject.org>; Mon, 17 May 2021 19:37:20 +0000 (UTC)
Received: by mail-pf1-f176.google.com with SMTP id g18so4023079pfr.2
        for <yocto@yoctoproject.org>; Mon, 17 May 2021 12:37:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=rRDupLZZHqbbvf/doqxCkRS8rF6CYqbuccx3Ahvbgwk=;
        b=TP0MbAe7YOub1bwLn13csR2wvYGUduROTrDXWLrgD0L5mWxc/gW+duvkls5Eh2zKzb
         l2gYmzLVnzgcqqtilsNuFoU5xq/1bgPSn8OPyklXirCGDeEgAcwm9Z7Sq94IpaTW09bC
         aofEGNWdcn0y99zaqPyIo06i7DvWm3cDo2KSJZrpnWYaiTUacx2x/khzrhyWRLVhKj5d
         hNZXNWNjO0PT/ACjzO+GWlZYMz4fY3mc2U5RJgKoeWc3aY3ljWO82ZQqgSHSzq56bplE
         +jR32ACAZIit+Et34GYxL1xPGwUbWQBQwl5AdBGBNXq3NFQqqznTCIuII0yZmUAPdtjr
         7GVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=rRDupLZZHqbbvf/doqxCkRS8rF6CYqbuccx3Ahvbgwk=;
        b=An6PNsps17PruATqg3915RlhiguwrTH7ck+4Uwien8nyyiXezE2x0vAtD3KPAK+r0k
         2GUh2xXd0SFSACCv/6mGRhJhBxjI+oK4tb6kXtb03GB2tON4YhAhBA4dq80EGZZ3k4CL
         E26tH3kxje1hdsouL/ivUZH6jKRfaiKjhd4/VNMA/hLuMPCRA4BK1It4bychvKKUYB3f
         uJDdbc3gjfxDgTb5vO1wVH0adLZRoNMf1y3QdiMOKflP7JJFMNTUCPbAmFXZG1A1Byd4
         HLz5L4u3LucWZRYw7lLN3LKlQvSRcDyin36Ja0aT15bfX5ZnBiO/sMraSGfhuRGkPy2q
         XoYw==
X-Gm-Message-State: AOAM531Lq6X0LZID2NyBoDaI4VkkTR2vjEzJIZKBNBYaE/U8cbO/S1jV
	azhOySde7Z/vTVUwsMGPklLrsUe6rFlyCBkJ5mw=
X-Google-Smtp-Source: ABdhPJy157MtuwIk/XWMqNaiMvTCgSERgccctibmvEOzS4XFNj5pVm+xtB6BkCVRC6R3MzqJK7rOCELygKmhRsuPzFw=
X-Received: by 2002:a63:4648:: with SMTP id v8mr1135154pgk.34.1621280239447;
 Mon, 17 May 2021 12:37:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAFZh4h9LFAduG7dAS8=5stVuE2x3RWcVz3zy5rTmPPshEY+AiA@mail.gmail.com>
 <f557832d-7de2-b752-d18f-38fb951dfa69@windriver.com> <CAFZh4h8banfu_VSPPMxa7PceqS8WETnDNNGiG2c+DWUE=AzFUQ@mail.gmail.com>
 <224d4a1b-cac4-5264-6112-518af8624ad1@windriver.com>
In-Reply-To: <224d4a1b-cac4-5264-6112-518af8624ad1@windriver.com>
From: "Brian Hutchinson" <b.hutchman@gmail.com>
Date: Mon, 17 May 2021 15:37:03 -0400
Message-ID: <CAFZh4h-+Bn9t6FqKHL2GoJd2DTZUxct1BuPbPRb069+vLa9d8Q@mail.gmail.com>
Subject: Re: [yocto] meta-selinux issues. Depending on what I put in my local.conf, I get boot loops or can't log in.
To: Yi Zhao <yi.zhao@windriver.com>, yocto@yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000c0f49105c28bb826"

--000000000000c0f49105c28bb826
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> imx8mmevk login: root
> Last login: Fri May 14 14:05:04 UTC 2021 on ttymxc1
> [  102.258579] audit: type=3D1107 audit(1621001122.465:14): pid=3D1 uid=
=3D0
> auid=3D4294967295 ses=3D4294967295 subj=3Dsystem_u:system_r:kernel_t:s0 m=
sg=3D'avc:
>  denied  { start } for auid=3Dn/a uid=3D0 gid=3D0 path=3D
> "/lib/systemd/system/user@.service" </lib/systemd/system/user@.service>
> cmdline=3D"/lib/systemd/sy0
> [  102.258579]  exe=3D"/lib/systemd/systemd" sauid=3D0 hostname=3D? addr=
=3D?
> terminal=3D?'
> Cannot execute /bin/sh: No such f[  102.298664] audit: type=3D1107
> audit(1621001122.481:15): pid=3D1 uid=3D0 auid=3D4294967295 ses=3D4294967=
295
> subj=3Dsystem_u:system_r:kernel_t:s0 msg=3D'avc:  denied  { start } for
> auid=3Dn/a uid=3D0 gid=3D0 path=3D"/run/systemd/transient/ses0
>
> There was an error: Cannot execute /bin/sh: No such file
>
> Would you please check this file in your rootfs ?
>
> You can add "selinux=3D1 enforcing=3D0" to your kernel boot cmdline to en=
able
> selinux permissive mode. Then you can easy to debug.
>
>
> //Yi
>
>
> Hi Yi,

I never could figure out which specific file wasn't found.

I did however pass "selinux=3D1 enforcing=3D0" to kernel and can now log in=
.
But of course selinux isn't in "enforcing" mode.

I do get tons of audit messages.  Does this mean I need to do "policy work"
to address these messages and get back to "enforcing" mode?  I guess I
still don't understand the issues here ... again new to selinux.

Will copy latest log of booting below.

Thanks,

Brian

local.conf:

MACHINE ??=3D 'imx8mmevk'
DISTRO ?=3D 'poky'
PACKAGE_CLASSES ?=3D 'package_rpm'
EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks"
DISTRO_FEATURES_remove =3D " sysvinit"
DISTRO_FEATURES_append +=3D " acl xattr pam selinux systemd"
#PREFERRED_PROVIDER_virtual/refpolicy ?=3D "refpolicy-minimum"
PREFERRED_PROVIDER_virtual/refpolicy ?=3D "refpolicy-mcs"
VIRTUAL-RUNTIME_init_manager =3D "systemd"
#DISTRO_FEATURES_BACKFILL_CONSIDERED +=3D "sysvinit"
DISTRO_FEATURES_BACKFILL_CONSIDERED =3D ""
#VIRTUAL-RUNTIME_initscripts =3D ""
USER_CLASSES ?=3D "buildstats image-mklibs image-prelink"
#IMAGE_INSTALL_append =3D " packagegroup-core-selinux"
CORE_IMAGE_EXTRA_INSTALL +=3D " packagegroup-core-selinux"
DISTRO_FEATURES_remove =3D "3g bluetooth wifi pci pcmcia wayland x11 opengl
irda directfb"
IMAGE_FSTYPES +=3D " tar.bz2 ext4 wic.bz2 wic.bmap"
PATCHRESOLVE =3D "noop"
BB_DISKMON_DIRS ??=3D "\
   STOPTASKS,${TMPDIR},1G,100K \
   STOPTASKS,${DL_DIR},1G,100K \
   STOPTASKS,${SSTATE_DIR},1G,100K \
   STOPTASKS,/tmp,100M,100K \
   ABORT,${TMPDIR},100M,1K \
   ABORT,${DL_DIR},100M,1K \
   ABORT,${SSTATE_DIR},100M,1K \
   ABORT,/tmp,10M,1K"
PACKAGECONFIG_append_pn-qemu-system-native =3D " sdl"
CONF_VERSION =3D "1"

DL_DIR ?=3D "${BSPDIR}/downloads/"
ACCEPT_FSL_EULA =3D "1"

Starting kernel ...

[    0.000000] Booting Linux on physical CPU 0x0000000000 [0x410fd034]
[    0.000000] Linux version 5.4.114+gf9a9b58ef7cc (oe-user@oe-host) (gcc
version 9.3.0 (GCC)) #1 SMP PREEMPT Thu Apr 22 11:48:16 UTC 2021
[    0.000000] Machine model: FSL i.MX8MM EVK board
[    0.000000] earlycon: ec_imx6q0 at MMIO 0x0000000030890000 (options
'115200')
[    0.000000] printk: bootconsole [ec_imx6q0] enabled
[    0.000000] efi: Getting EFI parameters from FDT:
[    0.000000] efi: UEFI not found.
[    0.000000] Reserved memory: created CMA memory pool at
0x0000000078000000, size 640 MiB
[    0.000000] OF: reserved mem: initialized node linux,cma, compatible id
shared-dma-pool
[    0.000000] NUMA: No NUMA configuration found
[    0.000000] NUMA: Faking a node at [mem
0x0000000040000000-0x00000000bdffffff]
[    0.000000] NUMA: NODE_DATA [mem 0xbdbe0500-0xbdbe1fff]
[    0.000000] Zone ranges:
[    0.000000]   DMA32    [mem 0x0000000040000000-0x00000000bdffffff]
[    0.000000]   Normal   empty
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000040000000-0x00000000b7ffffff]
[    0.000000]   node   0: [mem 0x00000000b8000000-0x00000000b83fffff]
[    0.000000]   node   0: [mem 0x00000000b8400000-0x00000000bdffffff]
[    0.000000] Initmem setup node 0 [mem
0x0000000040000000-0x00000000bdffffff]
[    0.000000] psci: probing for conduit method from DT.
[    0.000000] psci: PSCIv1.1 detected in firmware.
[    0.000000] psci: Using standard PSCI v0.2 function IDs
[    0.000000] psci: Trusted OS migration not required
[    0.000000] psci: SMC Calling Convention v1.1
[    0.000000] percpu: Embedded 24 pages/cpu s58904 r8192 d31208 u98304
[    0.000000] Detected VIPT I-cache on CPU0
[    0.000000] CPU features: detected: ARM erratum 845719
[    0.000000] CPU features: detected: GIC system register CPU interface
[    0.000000] Speculative Store Bypass Disable mitigation not required
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages:
508032
[    0.000000] Policy zone: DMA32
[    0.000000] Kernel command line: console=3Dttymxc1,115200
earlycon=3Dec_imx6q,0x30890000,115200 selinux=3D1 enforcing=3D0 rootwait ro
root=3D/dev/mmcblk2p2 rauc.slot=3DB
[    0.000000] Dentry cache hash table entries: 262144 (order: 9, 2097152
bytes, linear)
[    0.000000] Inode-cache hash table entries: 131072 (order: 8, 1048576
bytes, linear)
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] Memory: 1336216K/2064384K available (16508K kernel code,
1234K rwdata, 6480K rodata, 2880K init, 1038K bss, 72808K reserved, 655360K
cma-reserved)
[    0.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D4, N=
odes=3D1
[    0.000000] rcu: Preemptible hierarchical RCU implementation.
[    0.000000] rcu:     RCU restricting CPUs from NR_CPUS=3D256 to
nr_cpu_ids=3D4.
[    0.000000]  Tasks RCU enabled.
[    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is
25 jiffies.
[    0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=3D16, nr_cpu_ids=
=3D4
[    0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0
[    0.000000] GICv3: GIC: Using split EOI/Deactivate mode
[    0.000000] GICv3: 128 SPIs implemented
[    0.000000] GICv3: 0 Extended SPIs implemented
[    0.000000] GICv3: Distributor has no Range Selector support
[    0.000000] GICv3: 16 PPIs implemented
[    0.000000] GICv3: no VLPI support, no direct LPI support
[    0.000000] GICv3: CPU0: found redistributor 0 region
0:0x0000000038880000
[    0.000000] ITS: No ITS available, not enabling LPIs
[    0.000000] random: get_random_bytes called from
start_kernel+0x2b8/0x43c with crng_init=3D0
[    0.000000] arch_timer: cp15 timer(s) running at 8.00MHz (phys).
[    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff
max_cycles: 0x1d854df40, max_idle_ns: 440795202120 ns
[    0.000003] sched_clock: 56 bits at 8MHz, resolution 125ns, wraps every
2199023255500ns
[    0.008456] Console: colour dummy device 80x25
[    0.012581] Calibrating delay loop (skipped), value calculated using
timer frequency.. 16.00 BogoMIPS (lpj=3D32000)
[    0.022844] pid_max: default: 32768 minimum: 301
[    0.027542] LSM: Security Framework initializing
[    0.032140] SELinux:  Initializing.
[    0.035679] Mount-cache hash table entries: 4096 (order: 3, 32768 bytes,
linear)
[    0.043062] Mountpoint-cache hash table entries: 4096 (order: 3, 32768
bytes, linear)
[    0.052065] ASID allocator initialised with 32768 entries
[    0.056439] rcu: Hierarchical SRCU implementation.
[    0.062123] EFI services will not be available.
[    0.065889] smp: Bringing up secondary CPUs ...
[    0.070645] Detected VIPT I-cache on CPU1
[    0.070669] GICv3: CPU1: found redistributor 1 region
0:0x00000000388a0000
[    0.070699] CPU1: Booted secondary processor 0x0000000001 [0x410fd034]
[    0.071094] Detected VIPT I-cache on CPU2
[    0.071111] GICv3: CPU2: found redistributor 2 region
0:0x00000000388c0000
[    0.071129] CPU2: Booted secondary processor 0x0000000002 [0x410fd034]
[    0.071498] Detected VIPT I-cache on CPU3
[    0.071512] GICv3: CPU3: found redistributor 3 region
0:0x00000000388e0000
[    0.071527] CPU3: Booted secondary processor 0x0000000003 [0x410fd034]
[    0.071579] smp: Brought up 1 node, 4 CPUs
[    0.126888] SMP: Total of 4 processors activated.
[    0.131607] CPU features: detected: 32-bit EL0 Support
[    0.136781] CPU features: detected: CRC32 instructions
[    0.148799] CPU: All CPU(s) started at EL2
[    0.150070] alternatives: patching kernel code
[    0.155972] devtmpfs: initialized
[    0.163712] clocksource: jiffies: mask: 0xffffffff max_cycles:
0xffffffff, max_idle_ns: 7645041785100000 ns
[    0.170666] futex hash table entries: 1024 (order: 4, 65536 bytes,
linear)
[    0.194350] pinctrl core: initialized pinctrl subsystem
[    0.197431] DMI not present or invalid.
[    0.200869] NET: Registered protocol family 16
[    0.212126] DMA: preallocated 256 KiB pool for atomic allocations
[    0.215425] audit: initializing netlink subsys (disabled)
[    0.221074] audit: type=3D2000 audit(0.160:1): state=3Dinitialized
audit_enabled=3D0 res=3D1
[    0.228628] cpuidle: using governor menu
[    0.233081] hw-breakpoint: found 6 breakpoint and 4 watchpoint
registers.
[    0.240148] Serial: AMBA PL011 UART driver
[    0.243532] imx mu driver is registered.
[    0.247422] imx rpmsg driver is registered.
[    0.256559] imx8mm-pinctrl 30330000.pinctrl: initialized IMX pinctrl
driver
[    0.277795] HugeTLB registered 1.00 GiB page size, pre-allocated 0 pages
[    0.281689] HugeTLB registered 32.0 MiB page size, pre-allocated 0 pages
[    0.288409] HugeTLB registered 2.00 MiB page size, pre-allocated 0 pages
[    0.295145] HugeTLB registered 64.0 KiB page size, pre-allocated 0 pages
[    0.302773] cryptd: max_cpu_qlen set to 1000
[    0.309110] ACPI: Interpreter disabled.
[    0.310834] iommu: Default domain type: Translated
[    0.315168] vgaarb: loaded
[    0.317981] SCSI subsystem initialized
[    0.321822] usbcore: registered new interface driver usbfs
[    0.327027] usbcore: registered new interface driver hub
[    0.332343] usbcore: registered new device driver usb
[    0.338578] mc: Linux media interface: v0.10
[    0.341707] videodev: Linux video capture interface: v2.00
[    0.347255] pps_core: LinuxPPS API ver. 1 registered
[    0.352184] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo
Giometti <giometti@linux.it>
[    0.361379] PTP clock support registered
[    0.365426] EDAC MC: Ver: 3.0.0
[    0.369219] No BMan portals available!
[    0.372429] QMan: Allocated lookup table at (____ptrval____), entry
count 65537
[    0.379832] No QMan portals available!
[    0.383713] No USDPAA memory, no 'fsl,usdpaa-mem' in device-tree
[    0.389771] FPGA manager framework
[    0.392851] Advanced Linux Sound Architecture Driver Initialized.
[    0.399282] Bluetooth: Core ver 2.22
[    0.402510] NET: Registered protocol family 31
[    0.406961] Bluetooth: HCI device and connection manager initialized
[    0.413350] Bluetooth: HCI socket layer initialized
[    0.418248] Bluetooth: L2CAP socket layer initialized
[    0.423330] Bluetooth: SCO socket layer initialized
[    0.428975] clocksource: Switched to clocksource arch_sys_counter
[    0.434507] VFS: Disk quotas dquot_6.6.0
[    0.438331] VFS: Dquot-cache hash table entries: 512 (order 0, 4096
bytes)
[    0.445357] pnp: PnP ACPI: disabled
[    0.454274] thermal_sys: Registered thermal governor 'step_wise'
[    0.454279] thermal_sys: Registered thermal governor 'power_allocator'
[    0.457769] NET: Registered protocol family 2
[    0.468700] tcp_listen_portaddr_hash hash table entries: 1024 (order: 2,
16384 bytes, linear)
[    0.477008] TCP established hash table entries: 16384 (order: 5, 131072
bytes, linear)
[    0.485043] TCP bind hash table entries: 16384 (order: 6, 262144 bytes,
linear)
[    0.492505] TCP: Hash tables configured (established 16384 bind 16384)
[    0.498928] UDP hash table entries: 1024 (order: 3, 32768 bytes, linear)
[    0.505618] UDP-Lite hash table entries: 1024 (order: 3, 32768 bytes,
linear)
[    0.512899] NET: Registered protocol family 1
[    0.517459] RPC: Registered named UNIX socket transport module.
[    0.523088] RPC: Registered udp transport module.
[    0.527803] RPC: Registered tcp transport module.
[    0.532528] RPC: Registered tcp NFSv4.1 backchannel transport module.
[    0.539385] PCI: CLS 0 bytes, default 64
[    0.543722] hw perfevents: enabled with armv8_pmuv3 PMU driver, 7
counters available
[    0.551061] kvm [1]: IPA Size Limit: 40 bits
[    0.555620] kvm [1]: GICv3: no GICV resource entry
[    0.559830] kvm [1]: disabling GICv2 emulation
[    0.564304] kvm [1]: GIC system register CPU interface enabled
[    0.570207] kvm [1]: vgic interrupt IRQ1
[    0.574184] kvm [1]: Hyp mode initialized successfully
[    0.582033] Initialise system trusted keyrings
[    0.583816] workingset: timestamp_bits=3D44 max_order=3D19 bucket_order=
=3D0
[    0.595952] squashfs: version 4.0 (2009/01/31) Phillip Lougher
[    0.599542] NFS: Registering the id_resolver key type
[    0.604059] Key type id_resolver registered
[    0.608228] Key type id_legacy registered
[    0.612258] nfs4filelayout_init: NFSv4 File Layout Driver Registering...
[    0.618989] nfs4flexfilelayout_init: NFSv4 Flexfile Layout Driver
Registering...
[    0.626441] jffs2: version 2.2. (NAND) =EF=BF=BD=C2=A9 2001-2006 Red Hat=
, Inc.
[    0.632909] 9p: Installing v9fs 9p2000 file system support
[    0.651715] Key type asymmetric registered
[    0.652956] Asymmetric key parser 'x509' registered
[    0.657891] Block layer SCSI generic (bsg) driver version 0.4 loaded
(major 244)
[    0.665301] io scheduler mq-deadline registered
[    0.669849] io scheduler kyber registered
[    0.678038] EINJ: ACPI disabled.
[    0.686739] imx-sdma 302c0000.dma-controller: Direct firmware load for
imx/sdma/sdma-imx7d.bin failed with error -2
[    0.694396] imx-sdma 302c0000.dma-controller: Falling back to sysfs
fallback for: imx/sdma/sdma-imx7d.bin
[    0.711570] mxs-dma 33000000.dma-controller: initialized
[    0.715081] Bus freq driver module loaded
[    0.723138] Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
[    0.728538] 30890000.serial: ttymxc1 at MMIO 0x30890000 (irq =3D 34,
base_baud =3D 1500000) is a IMX
[    0.735469] printk: console [ttymxc1] enabled
[    0.735469] printk: console [ttymxc1] enabled
[    0.744109] printk: bootconsole [ec_imx6q0] disabled
[    0.744109] printk: bootconsole [ec_imx6q0] disabled
[    0.756061] imx-drm soc@0:bus@32c00000:display-subsystem: no available
port
[    0.774364] loop: module loaded
[    0.779430] imx ahci driver is registered.
[    0.786198] spi_imx 30830000.spi: probed
[    0.791030] spi-nor spi3.0: n25q256ax1 (32768 Kbytes)
[    0.796126] 7 fixed-partitions partitions found on MTD device
30bb0000.spi
[    0.803006] Creating 7 MTD partitions on "30bb0000.spi":
[    0.808325] 0x000000000000-0x000000200000 : "U-Boot"
[    0.817665] 0x000000200000-0x000000202000 : "U-Boot Env"
[    0.822995] mtd: partition "U-Boot Env" doesn't end on an erase/write
block -- force read-only
[    0.833562] 0x000000202000-0x000000204000 : "U-Boot Env 2"
[    0.839058] mtd: partition "U-Boot Env 2" doesn't start on an
erase/write block boundary -- force read-only
[    0.853558] 0x000000204000-0x000000205000 : "boot.scr"
[    0.858708] mtd: partition "boot.scr" doesn't start on an erase/write
block boundary -- force read-only
[    0.869560] 0x000000205000-0x000000210000 : "Device Tree Blob"
[    0.875403] mtd: partition "Device Tree Blob" doesn't start on an
erase/write block boundary -- force read-only
[    0.889564] 0x000000210000-0x000000e10000 : "Compressed Kernel"
[    0.897581] 0x000000e10000-0x000002000000 : "SquashFS"
[    0.906803] libphy: Fixed MDIO Bus: probed
[    0.911599] tun: Universal TUN/TAP device driver, 1.6
[    0.917348] thunder_xcv, ver 1.0
[    0.920605] thunder_bgx, ver 1.0
[    0.923868] nicpf, ver 1.0
[    0.927790] pps pps0: new PPS source ptp0
[    0.944179] libphy: fec_enet_mii_bus: probed
[    0.948992] fec 30be0000.ethernet eth0: registered PHC device 0
[    0.955460] Freescale FM module, FMD API version 21.1.0
[    0.960912] Freescale FM Ports module
[    0.964580] fsl_mac: fsl_mac: FSL FMan MAC API based driver
[    0.970316] fsl_dpa: FSL DPAA Ethernet driver
[    0.974768] fsl_advanced: FSL DPAA Advanced drivers:
[    0.979737] fsl_proxy: FSL DPAA Proxy initialization driver
[    0.985398] fsl_oh: FSL FMan Offline Parsing port driver
[    0.991478] hclge is initializing
[    0.994802] hns3: Hisilicon Ethernet Network Driver for Hip08 Family -
version
[    1.002027] hns3: Copyright (c) 2017 Huawei Corporation.
[    1.007388] e1000: Intel(R) PRO/1000 Network Driver - version
7.3.21-k8-NAPI
[    1.014441] e1000: Copyright (c) 1999-2006 Intel Corporation.
[    1.020217] e1000e: Intel(R) PRO/1000 Network Driver - 3.2.6-k
[    1.026053] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
[    1.032008] igb: Intel(R) Gigabit Ethernet Network Driver - version
5.6.0-k
[    1.038977] igb: Copyright (c) 2007-2014 Intel Corporation.
[    1.044581] igbvf: Intel(R) Gigabit Virtual Function Network Driver -
version 2.4.0-k
[    1.052413] igbvf: Copyright (c) 2009 - 2012 Intel Corporation.
[    1.058472] sky2: driver version 1.30
[    1.062994] VFIO - User Level meta-driver version: 0.3
[    1.069765] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    1.076300] ehci-pci: EHCI PCI platform driver
[    1.080817] ehci-platform: EHCI generic platform driver
[    1.086195] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
[    1.092398] ohci-pci: OHCI PCI platform driver
[    1.096883] ohci-platform: OHCI generic platform driver
[    1.102594] usbcore: registered new interface driver usb-storage
[    1.108673] usbcore: registered new interface driver usbserial_generic
[    1.115219] usbserial: USB Serial support registered for generic
[    1.121250] usbcore: registered new interface driver ftdi_sio
[    1.127012] usbserial: USB Serial support registered for FTDI USB Serial
Device
[    1.134346] usbcore: registered new interface driver usb_serial_simple
[    1.140888] usbserial: USB Serial support registered for carelink
[    1.146996] usbserial: USB Serial support registered for zio
[    1.152669] usbserial: USB Serial support registered for funsoft
[    1.158690] usbserial: USB Serial support registered for flashloader
[    1.165062] usbserial: USB Serial support registered for google
[    1.170997] usbserial: USB Serial support registered for libtransistor
[    1.177539] usbserial: USB Serial support registered for vivopay
[    1.183559] usbserial: USB Serial support registered for moto_modem
[    1.189846] usbserial: USB Serial support registered for motorola_tetra
[    1.196480] usbserial: USB Serial support registered for novatel_gps
[    1.202850] usbserial: USB Serial support registered for hp4x
[    1.208613] usbserial: USB Serial support registered for suunto
[    1.214550] usbserial: USB Serial support registered for siemens_mpi
[    1.223273] input: 30370000.snvs:snvs-powerkey as /devices/platform/soc@=
0
/soc@0:bus@30000000/30370000.snvs/30370000.snvs:snvs-powerkey/input/input0
[    1.238261] snvs_rtc 30370000.snvs:snvs-rtc-lp: registered as rtc0
[    1.244525] i2c /dev entries driver
[    1.252482] imx2-wdt 30280000.watchdog: timeout 60 sec (nowayout=3D0)
[    1.259024] Bluetooth: HCI UART driver ver 2.3
[    1.263482] Bluetooth: HCI UART protocol H4 registered
[    1.268627] Bluetooth: HCI UART protocol BCSP registered
[    1.273975] Bluetooth: HCI UART protocol LL registered
[    1.279119] Bluetooth: HCI UART protocol ATH3K registered
[    1.284536] Bluetooth: HCI UART protocol Three-wire (H5) registered
[    1.290883] Bluetooth: HCI UART protocol Broadcom registered
[    1.296567] Bluetooth: HCI UART protocol QCA registered
[    1.303543] sdhci: Secure Digital Host Controller Interface driver
[    1.309736] sdhci: Copyright(c) Pierre Ossman
[    1.314266] Synopsys Designware Multimedia Card Interface Driver
[    1.320775] sdhci-pltfm: SDHCI platform and OF driver helper
[    1.327179] mmc1: CQHCI version 5.10
[    1.331244] mmc2: CQHCI version 5.10
[    1.366687] mmc2: SDHCI controller on 30b60000.mmc [30b60000.mmc] using
ADMA
[    1.375998] ledtrig-cpu: registered to indicate activity on CPUs
[    1.383126] caam 30900000.crypto: device ID =3D 0x0a16040100000000 (Era =
9)
[    1.389897] caam 30900000.crypto: job rings =3D 3, qi =3D 0
[    1.405062] caam algorithms registered in /proc/crypto
[    1.410957] caam 30900000.crypto: caam pkc algorithms registered in
/proc/crypto
[    1.421068] caam_jr 30901000.jr: registering rng-caam
[    1.430101] caam-snvs 30370000.caam-snvs: can't get snvs clock
[    1.436043] caam-snvs 30370000.caam-snvs: violation handlers armed -
non-secure state
[    1.444463] usbcore: registered new interface driver usbhid
[    1.450044] usbhid: USB HID core driver
[    1.455567] No fsl,qman node
[    1.458510] Freescale USDPAA process driver
[    1.462698] fsl-usdpaa: no region found
[    1.466539] Freescale USDPAA process IRQ driver
[    1.474129] optee: probing for conduit method from DT.
[    1.475305] mmc2: Command Queue Engine enabled
[    1.479321] optee: revision 3.2 (6a22e6e8)
[    1.479658] optee: dynamic shared memory is enabled
[    1.483772] mmc2: new HS400 Enhanced strobe MMC card at address 0001
[    1.488029] optee: initialized driver
[    1.493604] mmcblk2: mmc2:0001 DG4016 7.49 GiB
[    1.501979] wm8524-codec audio-codec: Failed to get mute line: -517
[    1.502950] mmcblk2boot0: mmc2:0001 DG4016 partition 1 4.00 MiB
[    1.507807] OF: /sound-bt-sco/simple-audio-card,cpu: could not get
#sound-dai-cells for /soc@0/bus@30000000/sai@30020000
[    1.513720] mmcblk2boot1: mmc2:0001 DG4016 partition 2 4.00 MiB
[    1.519517] asoc-simple-card sound-bt-sco: parse error -22
[    1.530510] mmcblk2gp0: mmc2:0001 DG4016 partition 4 3.52 GiB
[    1.536315] asoc-simple-card: probe of sound-bt-sco failed with error
-22
[    1.542169] mmcblk2rpmb: mmc2:0001 DG4016 partition 3 4.00 MiB, chardev
(237:0)
[    1.561481] pktgen: Packet Generator for packet performance testing.
Version: 2.75
[    1.564417]  mmcblk2: p1 p2
[    1.572849] NET: Registered protocol family 26
[    1.574516]  mmcblk2gp0: p1 p2
[    1.577793] NET: Registered protocol family 10
[    1.585567] Segment Routing with IPv6
[    1.589288] NET: Registered protocol family 17
[    1.594157] Bluetooth: RFCOMM TTY layer initialized
[    1.599050] Bluetooth: RFCOMM socket layer initialized
[    1.604216] Bluetooth: RFCOMM ver 1.11
[    1.607979] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
[    1.613296] Bluetooth: BNEP filters: protocol multicast
[    1.618527] Bluetooth: BNEP socket layer initialized
[    1.623496] Bluetooth: HIDP (Human Interface Emulation) ver 1.2
[    1.629422] Bluetooth: HIDP socket layer initialized
[    1.634425] 8021q: 802.1Q VLAN Support v1.8
[    1.638627] lib80211: common routines for IEEE802.11 drivers
[    1.644399] 9pnet: Installing 9P2000 support
[    1.648700] tsn generic netlink module v1 init...
[    1.653467] Key type dns_resolver registered
[    1.658548] registered taskstats version 1
[    1.662659] Loading compiled-in X.509 certificates
[    1.690319] usb_phy_generic usbphynop1: usbphynop1 supply vcc not found,
using dummy regulator
[    1.699097] usb_phy_generic usbphynop2: usbphynop2 supply vcc not found,
using dummy regulator
[    1.768167] random: fast init done
[    1.777959] LDO6: supplied by regulator-dummy
[    1.782459] i2c i2c-0: IMX I2C adapter registered
[    1.788173] i2c i2c-1: IMX I2C adapter registered
[    1.794032] i2c i2c-2: IMX I2C adapter registered
[    1.799548] i2c i2c-3: IMX I2C adapter registered
[    1.804568] imx-cpufreq-dt imx-cpufreq-dt: cpu speed grade 2 mkt segment
2 supported-hw 0x4 0x4
[    1.817070] mmc1: CQHCI version 5.10
[    1.820686] sdhci-esdhc-imx 30b50000.mmc: Got CD GPIO
[    1.857690] mmc1: SDHCI controller on 30b50000.mmc [30b50000.mmc] using
ADMA
[    1.866383] imx8mm-pinctrl 30330000.pinctrl: pin MX8MM_IOMUXC_I2C4_SDA
already requested by 30a50000.i2c; cannot claim for audio-codec
[    1.878499] imx8mm-pinctrl 30330000.pinctrl: pin-140 (audio-codec)
status -22
[    1.885659] imx8mm-pinctrl 30330000.pinctrl: could not request pin 140
(MX8MM_IOMUXC_I2C4_SDA) from group gpiowlfgrp  on device 30330000.pinctrl
[    1.898619] wm8524-codec audio-codec: Error applying setting, reverse
things back
[    1.906118] wm8524-codec: probe of audio-codec failed with error -22
[    1.920810] input: bd718xx-pwrkey as /devices/platform/soc@0/soc@0
:bus@30800000/30a20000.i2c/i2c-0/0-004b/gpio-keys.1.auto/input/input1
[    1.934862] snvs_rtc 30370000.snvs:snvs-rtc-lp: setting system clock to
2021-05-17T19:16:30 UTC (1621278990)
[    1.945050] cfg80211: Loading compiled-in X.509 certificates for
regulatory database
[    1.956079] cfg80211: Loaded X.509 cert 'sforshee: 00b28ddf47aef9cea7'
[    1.962679] platform regulatory.0: Direct firmware load for
regulatory.db failed with error -2
[    1.967851] ALSA device list:
[    1.971304] platform regulatory.0: Falling back to sysfs fallback for:
regulatory.db
[    1.974275]   No soundcards found.
[    1.992312] EXT4-fs (mmcblk2p2): mounted filesystem with ordered data
mode. Opts: (null)
[    2.000462] VFS: Mounted root (ext4 filesystem) readonly on device
179:2.
[    2.007931] devtmpfs: mounted
[    2.011691] Freeing unused kernel memory: 2880K
[    2.029603] Run /sbin/init as init process
[    2.215985] SELinux:  Permission watch in class filesystem not defined
in policy.
[    2.223579] SELinux:  Permission watch in class file not defined in
policy.
[    2.230546] SELinux:  Permission watch_mount in class file not defined
in policy.
[    2.238041] SELinux:  Permission watch_sb in class file not defined in
policy.
[    2.245264] SELinux:  Permission watch_with_perm in class file not
defined in policy.
[    2.253104] SELinux:  Permission watch_reads in class file not defined
in policy.
[    2.260596] SELinux:  Permission watch in class dir not defined in
policy.
[    2.267481] SELinux:  Permission watch_mount in class dir not defined in
policy.
[    2.274878] SELinux:  Permission watch_sb in class dir not defined in
policy.
[    2.282023] SELinux:  Permission watch_with_perm in class dir not
defined in policy.
[    2.289767] SELinux:  Permission watch_reads in class dir not defined in
policy.
[    2.297197] SELinux:  Permission watch in class lnk_file not defined in
policy.
[    2.304506] SELinux:  Permission watch_mount in class lnk_file not
defined in policy.
[    2.312346] SELinux:  Permission watch_sb in class lnk_file not defined
in policy.
[    2.319917] SELinux:  Permission watch_with_perm in class lnk_file not
defined in policy.
[    2.328103] SELinux:  Permission watch_reads in class lnk_file not
defined in policy.
[    2.335945] SELinux:  Permission watch in class chr_file not defined in
policy.
[    2.343263] SELinux:  Permission watch_mount in class chr_file not
defined in policy.
[    2.351094] SELinux:  Permission watch_sb in class chr_file not defined
in policy.
[    2.358673] SELinux:  Permission watch_with_perm in class chr_file not
defined in policy.
[    2.366851] SELinux:  Permission watch_reads in class chr_file not
defined in policy.
[    2.374700] SELinux:  Permission watch in class blk_file not defined in
policy.
[    2.382010] SELinux:  Permission watch_mount in class blk_file not
defined in policy.
[    2.389849] SELinux:  Permission watch_sb in class blk_file not defined
in policy.
[    2.397420] SELinux:  Permission watch_with_perm in class blk_file not
defined in policy.
[    2.405604] SELinux:  Permission watch_reads in class blk_file not
defined in policy.
[    2.413442] SELinux:  Permission watch in class sock_file not defined in
policy.
[    2.420848] SELinux:  Permission watch_mount in class sock_file not
defined in policy.
[    2.428765] SELinux:  Permission watch_sb in class sock_file not defined
in policy.
[    2.436432] SELinux:  Permission watch_with_perm in class sock_file not
defined in policy.
[    2.444697] SELinux:  Permission watch_reads in class sock_file not
defined in policy.
[    2.452629] SELinux:  Permission watch in class fifo_file not defined in
policy.
[    2.460026] SELinux:  Permission watch_mount in class fifo_file not
defined in policy.
[    2.467952] SELinux:  Permission watch_sb in class fifo_file not defined
in policy.
[    2.475609] SELinux:  Permission watch_with_perm in class fifo_file not
defined in policy.
[    2.483883] SELinux:  Permission watch_reads in class fifo_file not
defined in policy.
[    2.492124] SELinux: the above unknown classes and permissions will be
allowed
[    2.499365] SELinux:  policy capability network_peer_controls=3D1
[    2.505286] SELinux:  policy capability open_perms=3D1
[    2.510257] SELinux:  policy capability extended_socket_class=3D1
[    2.516178] SELinux:  policy capability always_check_network=3D0
[    2.522020] SELinux:  policy capability cgroup_seclabel=3D1
[    2.527419] SELinux:  policy capability nnp_nosuid_transition=3D1
[    2.568189] audit: type=3D1403 audit(1621278991.128:2): auid=3D429496729=
5
ses=3D4294967295 lsm=3Dselinux res=3D1
[    2.575086] systemd[1]: Successfully loaded SELinux policy in 470.187ms.
[    2.679441] systemd[1]: Relabelled /dev, /dev/shm, /run, /sys/fs/cgroup
in 67.430ms.
[    2.698739] systemd[1]: systemd 244.5+ running in system mode. (+PAM
+AUDIT +SELINUX +IMA -APPARMOR -SMACK +SYSVINIT +UTMP -LIBCRYPTSETUP
-GCRYPT -GNUTLS +ACL +XZ -LZ4 -SECCOMP +BLKID -ELFUTILS +KMOD -IDN2 -IDN
-PCRE2 default-hierarchy=3Dhybrid)
[    2.720751] systemd[1]: Detected architecture arm64.

Welcome to Poky (Yocto Project Reference Distro) 3.1.7 (dunfell)!

[    2.770395] systemd[1]: Set hostname to <imx8mmevk>.
[    2.987359] random: systemd: uninitialized urandom read (16 bytes read)
[    2.994151] systemd[1]: system-getty.slice: unit configures an IP
firewall, but the local system does not support BPF/cgroup firewalling.
[    3.006508] systemd[1]: (This warning is only shown for the first unit
using IP firewalling.)
[    3.017228] systemd[1]: Created slice system-getty.slice.
[  OK  ] Created slice system-getty.slice.
[    3.041142] random: systemd: uninitialized urandom read (16 bytes read)
[    3.049106] systemd[1]: Created slice system-serial\x2dgetty.slice.
[  OK  ] Created slice system-serial\x2dgetty.slice.
[    3.073967] random: systemd: uninitialized urandom read (16 bytes read)
[    3.081927] systemd[1]: Created slice User and Session Slice.
[  OK  ] Created slice User and Session Slice.
[    3.105772] systemd[1]: Started Dispatch Password Requests to Console
Directory Watch.
[  OK  ] Started Dispatch Password =EF=BF=BD=EF=BF=BD=E2=80=A6ts to Console=
 Directory Watch.
[    3.129703] systemd[1]: Started Forward Password Requests to Wall
Directory Watch.
[  OK  ] Started Forward Password R=EF=BF=BD=EF=BF=BD=E2=80=A6uests to Wall=
 Directory Watch.
[    3.153228] systemd[1]: Reached target Paths.
[  OK  ] Reached target Paths.
[    3.173117] systemd[1]: Reached target Remote File Systems.
[  OK  ] Reached target Remote File Systems.
[    3.197804] systemd[1]: Reached target Slices.
[  OK  ] Reached target Slices.
[    3.218106] systemd[1]: Reached target Swap.
[  OK  ] Reached target Swap.
[    3.243169] systemd[1]: Listening on RPCbind Server Activation Socket.
[  OK  ] Listening on RPCbind Server Activation Socket.
[    3.265157] systemd[1]: Reached target RPC Port Mapper.
[  OK  ] Reached target RPC Port Mapper.
[    3.290401] systemd[1]: Listening on Syslog Socket.
[  OK  ] Listening on Syslog Socket.
[    3.310084] systemd[1]: Listening on initctl Compatibility Named Pipe.
[  OK  ] Listening on initctl Compatibility Named Pipe.
[    3.335182] systemd[1]: Listening on Journal Audit Socket.
[    3.335316] audit: type=3D1400 audit(1621278991.896:3): avc:  denied  {
audit_read } for  pid=3D1 comm=3D"systemd" capability=3D37
 scontext=3Dsystem_u:system_r:kernel_t:s0
tcontext=3Dsystem_u:system_r:kernel_t:s0 tclass=3Dcapability2 permissive=3D=
1
[  OK  ] Listening on Journal Audit Socket.
[    3.377935] systemd[1]: Listening on Journal Socket (/dev/log).
[  OK  ] Listening on Journal Socket (/dev/log).
[    3.402765] systemd[1]: Listening on Journal Socket.
[  OK  ] Listening on Journal Socket.
[    3.421967] systemd[1]: Listening on Network Service Netlink Socket.
[  OK  ] Listening on Network Service Netlink Socket.
[    3.447923] systemd[1]: Listening on udev Control Socket.
[  OK  ] Listening on udev Control Socket.
[    3.469692] systemd[1]: Listening on udev Kernel Socket.
[  OK  ] Listening on udev Kernel Socket.
[    3.497585] systemd[1]: Mounting Huge Pages File System...
        Mounting Huge Pages File System...
[    3.521067] systemd[1]: Mounting POSIX Message Queue File System...
        Mounting POSIX Message Queue File System...
[    3.549444] systemd[1]: Mounting Kernel Debug File System...
        Mounting Kernel Debug File System...
[    3.574370] systemd[1]: Mounting Temporary Directory (/tmp)...
        Mounting Temporary Directory (/tmp)...
[    3.598671] systemd[1]: Starting Create list of static device nodes for
the current kernel...
        Starting Create list of st=EF=BF=BD=EF=BF=BD=E2=80=A6odes for the c=
urrent kernel...
[    3.629139] systemd[1]: Starting Start psplash boot splash screen...
        Starting Start psplash boot splash screen...
[    3.657433] systemd[1]: Starting RPC Bind...
        Starting RPC Bind...
[    3.676514] systemd[1]: Starting SELinux autorelabel service loading...
        Starting SELinux autorelabel service loading...
[    3.701187] systemd[1]: Starting SELinux init for /dev service
loading...
        Starting SELinux init for /dev service loading...
[    3.728480] systemd[1]: Starting File System Check on Root Device...
        Starting File System Check on Root Device...
[    3.753988] systemd[1]: Starting Journal Service...
        Starting Journa[    3.761266] systemd[1]: Condition check resulted
in Load Kernel Modules being skipped.
l Service...
[    3.770534] systemd[1]: Condition check resulted in FUSE Control File
System being skipped.
[    3.784068] systemd[1]: Mounting Kernel Configuration File System...
        Mounting Kernel Configuration File System...
[    3.808753] systemd[1]: Starting Apply Kernel Variables...
        Starting Apply Kernel Variables...
[    3.832946] systemd[1]: Starting udev Coldplug all Devices...
        Starting udev Coldplug all Devices...
[    3.861756] systemd[1]: Started RPC Bind.
[  OK  ] Started RPC Bind.
[    3.886210] audit: type=3D1130 audit(1621278992.448:4): pid=3D1 uid=3D0
auid=3D4294967295 ses=3D4294967295 subj=3Dsystem_u:system_r:kernel_t:s0
msg=3D'unit=3Drpcbind comm=3D"systemd" exe=3D"/lib/systemd/systemd" hostnam=
e=3D?
addr=3D? terminal=3D? res=3Dsuccess'
[    3.886241] systemd[1]: Started Journal Service.
[  OK  ] Started Journal Service.
[    3.930060] audit: type=3D1130 audit(1621278992.492:5): pid=3D1 uid=3D0
auid=3D4294967295 ses=3D4294967295 subj=3Dsystem_u:system_r:kernel_t:s0
msg=3D'unit=3Dsystemd-journald comm=3D"systemd" exe=3D"/lib/systemd/systemd=
"
hostname=3D? addr=3D? terminal=3D? res=3Dsuccess'
[  OK  ] Mounted Huge Pages File System.
[  OK  ] Mounted POSIX Message Queue File System.
[  OK  ] Mounted Kernel Debug File System.
[  OK  ] Mounted Temporary Directory (/tmp).
[  OK  ] Started Create list of sta=EF=BF=BD=EF=BF=BD=E2=80=A6 nodes for th=
e current kernel.
[    4.037555] audit: type=3D1130 audit(1621278992.600:6): pid=3D1 uid=3D0
auid=3D4294967295 ses=3D4294967295 subj=3Dsystem_u:system_r:kernel_t:s0
msg=3D'unit=3Dkmod-static-nodes comm=3D"systemd" exe=3D"/lib/systemd/system=
d"
hostname=3D? addr=3D? terminal=3D? res=3Dsuccess'
[FAILED] Failed to start Start psplash boot splash screen.
See 'systemctl status psplash-start.service' for details.
[DEPEND] Dependency failed for Star=EF=BF=BD=EF=BF=BD=E2=80=A6progress comm=
unication helper.
[    4.110569] audit: type=3D1130 audit(1621278992.672:7): pid=3D1 uid=3D0
auid=3D4294967295 ses=3D4294967295 subj=3Dsystem_u:system_r:kernel_t:s0
msg=3D'unit=3Dpsplash-start comm=3D"systemd" exe=3D"/lib/systemd/systemd"
hostname=3D? addr=3D? terminal=3D? res=3Dfailed'
[  OK  ] Started SELinux autorelabel service loading.
[    4.145488] audit: type=3D1130 audit(1621278992.708:8): pid=3D1 uid=3D0
auid=3D4294967295 ses=3D4294967295 subj=3Dsystem_u:system_r:kernel_t:s0
msg=3D'unit=3Dselinux-autorelabel comm=3D"systemd" exe=3D"/lib/systemd/syst=
emd"
hostname=3D? addr=3D? terminal=3D? res=3Dsuccess'
[    4.167276] audit: type=3D1131 audit(1621278992.708:9): pid=3D1 uid=3D0
auid=3D4294967295 ses=3D4294967295 subj=3Dsystem_u:system_r:kernel_t:s0
msg=3D'unit=3Dselinux-autorelabel comm=3D"systemd" exe=3D"/lib/systemd/syst=
emd"
hostname=3D? addr=3D? terminal=3D? res=3Dsuccess'
[  OK  ] Started SELinux init for /dev service loading.
[    4.205515] audit: type=3D1130 audit(1621278992.768:10): pid=3D1 uid=3D0
auid=3D4294967295 ses=3D4294967295 subj=3Dsystem_u:system_r:kernel_t:s0
msg=3D'unit=3Dselinux-labeldev comm=3D"systemd" exe=3D"/lib/systemd/systemd=
"
hostname=3D? addr=3D? terminal=3D? res=3Dsuccess'
[  OK  ] Started File System Check on Root Device.
[  OK  ] Mounted Kernel Configuration File System.
[  OK  ] Started Apply Kernel Variables.
        Starting Remount Root and Kernel File Systems...
[    4.302025] EXT4-fs (mmcblk2p2): re-mounted. Opts: (null)
[  OK  ] Started Remount Root and Kernel File Systems.
        Starting Flush Journal to Persistent Storage...
[    4.346937] systemd-journald[288]: Received client request to flush
runtime journal.
        Starting Create Static Device Nodes in /dev...
[  OK  ] Started Flush Journal to Persistent Storage.
[  OK  ] Started Create Static Device Nodes in /dev.
[  OK  ] Reached target Local File Systems (Pre).
        Mounting /var/volatile...
        Starting udev Kernel Device Manager...
[  OK  ] Mounted /var/volatile.
[  OK  ] Started udev Coldplug all Devices.
        Starting Load/Save Random Seed...
[  OK  ] Reached target Local File Systems.
        Starting SELinux init service loading...
        Starting Create Volatile Files and Directories...
[  OK  ] Started udev Kernel Device Manager.
[  OK  ] Started SELinux init service loading.
        Starting Network Service...
[  OK  ] Started Create Volatile Files and Directories.
        Starting Network Time Synchronization...
        Starting Update UTMP about System Boot/Shutdown...
[  OK  ] Started Network Service.
        Starting Network Name Resolution...
[  OK  ] Started Update UTMP about System Boot/Shutdown.
[  OK  ] Started Network Time Synchronization.
[  OK  ] Reached target System Initialization.
[  OK  ] Started Daily Cleanup of Temporary Directories.
[  OK  ] Reached target System Time Set.
[  OK  ] Reached target System Time Synchronized.
[  OK  ] Reached target Timers.
[  OK  ] Listening on Avahi mDNS/DNS-SD Stack Activation Socket.
[  OK  ] Listening on D-Bus System Message Bus Socket.
[  OK  ] Reached target Sockets.
[  OK  ] Reached target Basic System.
[  OK  ] Started Kernel Logging Service.
[  OK  ] Started System Logging Service.
[  OK  ] Started D-Bus System Message Bus.
        Starting Login Service...
[  OK  ] Started Network Name Resolution.
[    5.194342] Generic PHY fixed-0:00: attached PHY driver [Generic PHY]
(mii_bus:phy_addr=3Dfixed-0:00, irq=3DPOLL)
[    5.205098] fec 30be0000.ethernet eth0: Link is Up - 1Gbps/Full - flow
control off
[    5.225428] IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
[  OK  ] Reached target Network.
[  OK  ] Reached target Host and Network Name Lookups.
        Starting Avahi mDNS/DNS-SD Stack...
        Starting Permit User Sessions...
[  OK  ] Started Permit User Sessions.
[    5.418209] kauditd_printk_skb: 20 callbacks suppressed
[    5.418216] audit: type=3D1130 audit(1621278993.980:31): pid=3D1 uid=3D0
auid=3D4294967295 ses=3D4294967295 subj=3Dsystem_u:system_r:kernel_t:s0
msg=3D'unit=3Dsystemd-user-sessions comm=3D"systemd" exe=3D"/lib/systemd/sy=
stemd"
hostname=3D? addr=3D? terminal=3D? res=3Dsuccess'
[  OK  ] Started Login Service.
[    5.477678] audit: type=3D1130 audit(1621278994.040:32): pid=3D1 uid=3D0
auid=3D4294967295 ses=3D4294967295 subj=3Dsystem_u:system_r:kernel_t:s0
msg=3D'unit=3Dsystemd-logind comm=3D"systemd" exe=3D"/lib/systemd/systemd"
hostname=3D? addr=3D? terminal=3D? res=3Dsuccess'
[  OK  ] Started Avahi mDNS/DNS-SD Stack.
[    5.517984] audit: type=3D1130 audit(1621278994.080:33): pid=3D1 uid=3D0
auid=3D4294967295 ses=3D4294967295 subj=3Dsystem_u:system_r:kernel_t:s0
msg=3D'unit=3Davahi-daemon comm=3D"systemd" exe=3D"/lib/systemd/systemd" ho=
stname=3D?
addr=3D? terminal=3D? res=3Dsuccess'
[  OK  ] Started Getty on tty1.
[    5.558400] audit: type=3D1130 audit(1621278994.120:34): pid=3D1 uid=3D0
auid=3D4294967295 ses=3D4294967295 subj=3Dsystem_u:system_r:kernel_t:s0
msg=3D'unit=3Dgetty@tty1 comm=3D"systemd" exe=3D"/lib/systemd/systemd" host=
name=3D?
addr=3D? terminal=3D? res=3Dsuccess'
[  OK  ] Started Serial Getty on ttymxc1.
[    5.598228] audit: type=3D1130 audit(1621278994.160:35): pid=3D1 uid=3D0
auid=3D4294967295 ses=3D4294967295 subj=3Dsystem_u:system_r:kernel_t:s0
msg=3D'unit=3Dserial-getty@ttymxc1 comm=3D"systemd" exe=3D"/lib/systemd/sys=
temd"
hostname=3D? addr=3D? terminal=3D? res=3Dsuccess'
[  OK  ] Reached target Login Prompts.
[  OK  ] Reached target Multi-User System.
        Starting Update UTMP about System Runlevel Changes...
[    5.682230] audit: type=3D1107 audit(1621278994.244:36): pid=3D1 uid=3D0
auid=3D4294967295 ses=3D4294967295 subj=3Dsystem_u:system_r:kernel_t:s0 msg=
=3D'avc:
 denied  { status } for auid=3Dn/a uid=3D0 gid=3D0
path=3D"/lib/systemd/system/graphical.target" cmdline=3D"" scontext=3D1
[    5.682230]  exe=3D"/lib/systemd/systemd" sauid=3D0 hostname=3D? addr=3D=
?
terminal=3D?'
[    5.720334] audit: type=3D1129 audit(1621278994.244:37): pid=3D359 uid=
=3D0
auid=3D4294967295 ses=3D4294967295 subj=3Dsystem_u:system_r:kernel_t:s0
msg=3D'old-level=3DN new-level=3D3 comm=3D"systemd-update-utmp"
exe=3D"/lib/systemd/systemd-update-utmp" hostname=3D? addr=3D? term'
[  OK  ] Started Update UTMP about System Runlevel Changes.
[    5.762053] audit: type=3D1130 audit(1621278994.324:38): pid=3D1 uid=3D0
auid=3D4294967295 ses=3D4294967295 subj=3Dsystem_u:system_r:kernel_t:s0
msg=3D'unit=3Dsystemd-update-utmp-runlevel comm=3D"systemd"
exe=3D"/lib/systemd/systemd" hostname=3D? addr=3D? terminal=3D? res=3Dsucce=
'
[    5.784757] audit: type=3D1131 audit(1621278994.324:39): pid=3D1 uid=3D0
auid=3D4294967295 ses=3D4294967295 subj=3Dsystem_u:system_r:kernel_t:s0
msg=3D'unit=3Dsystemd-update-utmp-runlevel comm=3D"systemd"
exe=3D"/lib/systemd/systemd" hostname=3D? addr=3D? terminal=3D? res=3Dsucce=
'
        Starting Hostname Service...
[  OK  ] Started Hostname Service.
[    8.533683] audit: type=3D1130 audit(1621278997.096:40): pid=3D1 uid=3D0
auid=3D4294967295 ses=3D4294967295 subj=3Dsystem_u:system_r:kernel_t:s0
msg=3D'unit=3Dsystemd-hostnamed comm=3D"systemd" exe=3D"/lib/systemd/system=
d"
hostname=3D? addr=3D? terminal=3D? res=3Dsuccess'
[   10.816995] random: crng init done
[   10.820400] random: 7 urandom warning(s) missed due to ratelimiting
[   10.835345] audit: type=3D1130 audit(1621278999.396:41): pid=3D1 uid=3D0
auid=3D4294967295 ses=3D4294967295 subj=3Dsystem_u:system_r:kernel_t:s0
msg=3D'unit=3Dsystemd-random-seed comm=3D"systemd" exe=3D"/lib/systemd/syst=
emd"
hostname=3D? addr=3D? terminal=3D? res=3Dsuccess'

Poky (Yocto Project Reference Distro) 3.1.7 imx8mmevk ttymxc1

imx8mmevk login: [   33.841713] WLAN_EN: disabling
[   33.844776] VSD_3V3: disabling
[   38.535696] audit: type=3D1131 audit(1621279026.463:42): pid=3D1 uid=3D0
auid=3D4294967295 ses=3D4294967295 subj=3Dsystem_u:system_r:kernel_t:s0
msg=3D'unit=3Dsystemd-hostnamed comm=3D"systemd" exe=3D"/lib/systemd/system=
d"
hostname=3D? addr=3D? terminal=3D? res=3Dsuccess'
[   62.514167] cfg80211: failed to load regulatory.db
[   62.514409] imx-sdma 302c0000.dma-controller: external firmware not
found, using ROM firmware
[   62.517520] imx-sdma 302b0000.dma-controller: external firmware not
found, using ROM firmware
[   62.538156] imx-sdma 30bd0000.dma-controller: loaded firmware 4.5

imx8mmevk login: root
[   80.318463] audit: type=3D1107 audit(1621279068.247:43): pid=3D1 uid=3D0
auid=3D4294967295 ses=3D4294967295 subj=3Dsystem_u:system_r:kernel_t:s0 msg=
=3D'avc:
 denied  { start } for auid=3Dn/a uid=3D0 gid=3D0
path=3D"/lib/systemd/system/user@.service"
cmdline=3D"/lib/systemd/sy1
[   80.318463]  exe=3D"/lib/systemd/systemd" sauid=3D0 hostname=3D? addr=3D=
?
terminal=3D?'
[   80.358706] audit: type=3D1107 audit(1621279068.267:44): pid=3D1 uid=3D0
auid=3D4294967295 ses=3D4294967295 subj=3Dsystem_u:system_r:kernel_t:s0 msg=
=3D'avc:
 denied  { start } for auid=3Dn/a uid=3D0 gid=3D0
path=3D"/run/systemd/transient/session-c1.scope" cmdline=3D"/lib/syst1
[   80.358706]  exe=3D"/lib/systemd/systemd" sauid=3D0 hostname=3D? addr=3D=
?
terminal=3D?'
[   80.399667] audit: type=3D1130 audit(1621279068.291:45): pid=3D1 uid=3D0
auid=3D4294967295 ses=3D4294967295 subj=3Dsystem_u:system_r:kernel_t:s0
msg=3D'unit=3Duser-runtime-dir@0 comm=3D"systemd" exe=3D"/lib/systemd/syste=
md"
hostname=3D? addr=3D? terminal=3D? res=3Dsuccess'
[   80.431254] audit: type=3D1006 audit(1621279068.359:46): pid=3D377 uid=
=3D0
subj=3Dsystem_u:system_r:kernel_t:s0 old-auid=3D4294967295 auid=3D0 tty=3D(=
none)
old-ses=3D4294967295 ses=3D1 res=3D1
[   80.446730] audit: type=3D1400 audit(1621279068.363:47): avc:  denied  {
transition } for  pid=3D377 comm=3D"(systemd)" path=3D"/lib/systemd/systemd=
"
dev=3D"mmcblk2p2" ino=3D1477 scontext=3Dsystem_u:system_r:kernel_t:s0
tcontext=3Droot:sysadm_r:sysadm_t:s0 tclass=3Dproc1
[   80.470544] audit: type=3D1400 audit(1621279068.363:47): avc:  denied  {
entrypoint } for  pid=3D377 comm=3D"(systemd)" path=3D"/lib/systemd/systemd=
"
dev=3D"mmcblk2p2" ino=3D1477 scontext=3Droot:sysadm_r:sysadm_t:s0
tcontext=3Dsystem_u:object_r:unlabeled_t:s0 tclass=3Df1
[   80.494335] audit: type=3D1400 audit(1621279068.363:47): avc:  denied  {
use } for  pid=3D377 comm=3D"systemd" path=3D"/dev/null" dev=3D"devtmpfs" i=
no=3D3079
scontext=3Droot:sysadm_r:sysadm_t:s0 tcontext=3Dsystem_u:system_r:kernel_t:=
s0
tclass=3Dfd permissive=3D1
[   80.515865] audit: type=3D1400 audit(1621279068.363:47): avc:  denied  {
read write } for  pid=3D377 comm=3D"systemd" path=3D"socket:[9797]" dev=3D"=
sockfs"
ino=3D9797 scontext=3Droot:sysadm_r:sysadm_t:s0
tcontext=3Dsystem_u:system_r:kernel_t:s0 tclass=3Dunix_stream_sock1
[   80.539544] audit: type=3D1400 audit(1621279068.363:47): avc:  denied  {
execute } for  pid=3D377 comm=3D"systemd" path=3D"/lib/systemd/systemd"
dev=3D"mmcblk2p2" ino=3D1477 scontext=3Droot:sysadm_r:sysadm_t:s0
tcontext=3Dsystem_u:object_r:unlabeled_t:s0 tclass=3Dfile p1
[   80.562865] audit: type=3D1400 audit(1621279068.379:48): avc:  denied  {
ioctl } for  pid=3D377 comm=3D"systemd" path=3D"socket:[9797]" dev=3D"sockf=
s"
ino=3D9797 ioctlcmd=3D0x5401 scontext=3Droot:sysadm_r:sysadm_t:s0
tcontext=3Dsystem_u:system_r:kernel_t:s0 tclass=3Dunix_1
~ # sestatus
SELinux status:                 enabled
SELinuxfs mount:                /sys/fs/selinux
SELinux root directory:         /etc/selinux
Loaded policy name:             mcs
Current mode:                   permissive
Mode from config file:          enforcing
Policy MLS status:              enabled
Policy deny_unknown status:     allowed
Memory protection checking:     requested (insecure)
Max kernel policy version:      31
~ #

--000000000000c0f49105c28bb826
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-family:monospace"><span style=3D"font-=
family:monospace"></span></span><br><span style=3D"font-family:monospace"><=
span style=3D"font-family:monospace"></span></span><div class=3D"gmail_quot=
e"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div><blockquote type=
=3D"cite"><div dir=3D"ltr"><div class=3D"gmail_quote"><div><span style=3D"f=
ont-family:monospace"><span style=3D"font-family:monospace">
                imx8mmevk login: root
                <br>
                Last login: Fri May 14 14:05:04 UTC 2021 on ttymxc1
                <br>
                [ =C2=A0102.258579] audit: type=3D1107
                audit(1621001122.465:14): pid=3D1 uid=3D0 auid=3D4294967295
                ses=3D4294967295 subj=3Dsystem_u:system_r:kernel_t:s0
                msg=3D&#39;avc: =C2=A0denied =C2=A0{ start } for auid=3Dn/a=
 uid=3D0 gid=3D0
                path=3D<a href=3D"mailto:/lib/systemd/system/user@.service"=
 target=3D"_blank">&quot;/lib/systemd/system/user@.service&quot;</a>
                cmdline=3D&quot;/lib/systemd/sy0
                <br>
                [ =C2=A0102.258579] =C2=A0exe=3D&quot;/lib/systemd/systemd&=
quot; sauid=3D0
                hostname=3D? addr=3D? terminal=3D?&#39;
                <br>
                Cannot execute /bin/sh: No such f[ =C2=A0102.298664] audit:
                type=3D1107 audit(1621001122.481:15): pid=3D1 uid=3D0
                auid=3D4294967295 ses=3D4294967295
                subj=3Dsystem_u:system_r:kernel_t:s0 msg=3D&#39;avc: =C2=A0=
denied =C2=A0{
                start } for auid=3Dn/a uid=3D0 gid=3D0
                path=3D&quot;/run/systemd/transient/ses0
                <br>
              </span></span></div>
        </div>
      </div>
    </blockquote>
    <p>There was an error: Cannot execute /bin/sh: No such file</p>
    <p>Would you please check this file in your rootfs ?</p>
    <p>You can add &quot;selinux=3D1 enforcing=3D0&quot; to your kernel boo=
t cmdline
      to enable selinux permissive mode. Then you can easy to debug.</p>
    <p><br>
    </p>
    <p>//Yi<br>
    </p>
    <p><br>
    </p></div></blockquote><div>Hi Yi,</div><div><br></div><div>I never cou=
ld figure out which specific file wasn&#39;t found.</div><div><br></div><di=
v>I did however pass &quot;selinux=3D1 enforcing=3D0&quot; to kernel and ca=
n now log in.=C2=A0 But of course selinux isn&#39;t in &quot;enforcing&quot=
; mode.</div><div><br></div><div>I do get tons of audit messages.=C2=A0 Doe=
s this mean I need to do &quot;policy work&quot; to address these messages =
and get back to &quot;enforcing&quot; mode?=C2=A0 I guess I still don&#39;t=
 understand the issues here ... again new to selinux.</div><div><br></div><=
div>Will copy latest log of booting below.</div><div><br></div><div>Thanks,=
</div><div><br></div><div>Brian</div><div><br></div><div>local.conf:</div><=
div><br></div><div><span style=3D"font-family:monospace"><span style=3D"col=
or:rgb(0,0,0);background-color:rgb(255,255,255)">MACHINE ??=3D &#39;imx8mme=
vk&#39;
</span><br>DISTRO ?=3D &#39;poky&#39;
<br>PACKAGE_CLASSES ?=3D &#39;package_rpm&#39;
<br>EXTRA_IMAGE_FEATURES ?=3D &quot;debug-tweaks&quot;
<br>DISTRO_FEATURES_remove =3D &quot; sysvinit&quot;
<br>DISTRO_FEATURES_append +=3D &quot; acl xattr pam selinux systemd&quot;
<br>#PREFERRED_PROVIDER_virtual/refpolicy ?=3D &quot;refpolicy-minimum&quot=
;
<br>PREFERRED_PROVIDER_virtual/refpolicy ?=3D &quot;refpolicy-mcs&quot;
<br>VIRTUAL-RUNTIME_init_manager =3D &quot;systemd&quot;
<br>#DISTRO_FEATURES_BACKFILL_CONSIDERED +=3D &quot;sysvinit&quot;
<br>DISTRO_FEATURES_BACKFILL_CONSIDERED =3D &quot;&quot;
<br>#VIRTUAL-RUNTIME_initscripts =3D &quot;&quot;
<br>USER_CLASSES ?=3D &quot;buildstats image-mklibs image-prelink&quot;
<br>#IMAGE_INSTALL_append =3D &quot; packagegroup-core-selinux&quot;
<br>CORE_IMAGE_EXTRA_INSTALL +=3D &quot; packagegroup-core-selinux&quot;
<br>DISTRO_FEATURES_remove =3D &quot;3g bluetooth wifi pci pcmcia wayland x=
11 opengl irda directfb&quot;
<br>IMAGE_FSTYPES +=3D &quot; tar.bz2 ext4 wic.bz2 wic.bmap&quot;
<br>PATCHRESOLVE =3D &quot;noop&quot;
<br>BB_DISKMON_DIRS ??=3D &quot;\
<br> =C2=A0=C2=A0=C2=A0STOPTASKS,${TMPDIR},1G,100K \
<br> =C2=A0=C2=A0=C2=A0STOPTASKS,${DL_DIR},1G,100K \
<br> =C2=A0=C2=A0=C2=A0STOPTASKS,${SSTATE_DIR},1G,100K \
<br> =C2=A0=C2=A0=C2=A0STOPTASKS,/tmp,100M,100K \
<br> =C2=A0=C2=A0=C2=A0ABORT,${TMPDIR},100M,1K \
<br> =C2=A0=C2=A0=C2=A0ABORT,${DL_DIR},100M,1K \
<br> =C2=A0=C2=A0=C2=A0ABORT,${SSTATE_DIR},100M,1K \
<br> =C2=A0=C2=A0=C2=A0ABORT,/tmp,10M,1K&quot;
<br>PACKAGECONFIG_append_pn-qemu-system-native =3D &quot; sdl&quot;
<br>CONF_VERSION =3D &quot;1&quot;
<br>
<br>DL_DIR ?=3D &quot;${BSPDIR}/downloads/&quot;
<br>ACCEPT_FSL_EULA =3D &quot;1&quot;<br></span></div><div><br></div><div><=
span style=3D"font-family:monospace"><span style=3D"font-family:monospace">=
<span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">Starting=
 kernel ...
</span><br>
<br>[ =C2=A0=C2=A0=C2=A00.000000] Booting Linux on physical CPU 0x000000000=
0 [0x410fd034]
<br>[ =C2=A0=C2=A0=C2=A00.000000] Linux version 5.4.114+gf9a9b58ef7cc (oe-u=
ser@oe-host)
 (gcc version 9.3.0 (GCC)) #1 SMP PREEMPT Thu Apr 22 11:48:16 UTC 2021
<br>[ =C2=A0=C2=A0=C2=A00.000000] Machine model: FSL i.MX8MM EVK board
<br>[ =C2=A0=C2=A0=C2=A00.000000] earlycon: ec_imx6q0 at MMIO 0x00000000308=
90000 (options &#39;115200&#39;)
<br>[ =C2=A0=C2=A0=C2=A00.000000] printk: bootconsole [ec_imx6q0] enabled
<br>[ =C2=A0=C2=A0=C2=A00.000000] efi: Getting EFI parameters from FDT:
<br>[ =C2=A0=C2=A0=C2=A00.000000] efi: UEFI not found.
<br>[ =C2=A0=C2=A0=C2=A00.000000] Reserved memory: created CMA memory pool =
at 0x0000000078000000, size 640 MiB
<br>[ =C2=A0=C2=A0=C2=A00.000000] OF: reserved mem: initialized node linux,=
cma, compatible id shared-dma-pool
<br>[ =C2=A0=C2=A0=C2=A00.000000] NUMA: No NUMA configuration found
<br>[ =C2=A0=C2=A0=C2=A00.000000] NUMA: Faking a node at [mem 0x00000000400=
00000-0x00000000bdffffff]
<br>[ =C2=A0=C2=A0=C2=A00.000000] NUMA: NODE_DATA [mem 0xbdbe0500-0xbdbe1ff=
f]
<br>[ =C2=A0=C2=A0=C2=A00.000000] Zone ranges:
<br>[ =C2=A0=C2=A0=C2=A00.000000] =C2=A0=C2=A0DMA32 =C2=A0=C2=A0=C2=A0[mem =
0x0000000040000000-0x00000000bdffffff]
<br>[ =C2=A0=C2=A0=C2=A00.000000] =C2=A0=C2=A0Normal =C2=A0=C2=A0empty
<br>[ =C2=A0=C2=A0=C2=A00.000000] Movable zone start for each node
<br>[ =C2=A0=C2=A0=C2=A00.000000] Early memory node ranges
<br>[ =C2=A0=C2=A0=C2=A00.000000] =C2=A0=C2=A0node =C2=A0=C2=A00: [mem 0x00=
00000040000000-0x00000000b7ffffff]
<br>[ =C2=A0=C2=A0=C2=A00.000000] =C2=A0=C2=A0node =C2=A0=C2=A00: [mem 0x00=
000000b8000000-0x00000000b83fffff]
<br>[ =C2=A0=C2=A0=C2=A00.000000] =C2=A0=C2=A0node =C2=A0=C2=A00: [mem 0x00=
000000b8400000-0x00000000bdffffff]
<br>[ =C2=A0=C2=A0=C2=A00.000000] Initmem setup node 0 [mem 0x0000000040000=
000-0x00000000bdffffff]
<br>[ =C2=A0=C2=A0=C2=A00.000000] psci: probing for conduit method from DT.
<br>[ =C2=A0=C2=A0=C2=A00.000000] psci: PSCIv1.1 detected in firmware.
<br>[ =C2=A0=C2=A0=C2=A00.000000] psci: Using standard PSCI v0.2 function I=
Ds
<br>[ =C2=A0=C2=A0=C2=A00.000000] psci: Trusted OS migration not required
<br>[ =C2=A0=C2=A0=C2=A00.000000] psci: SMC Calling Convention v1.1
<br>[ =C2=A0=C2=A0=C2=A00.000000] percpu: Embedded 24 pages/cpu s58904 r819=
2 d31208 u98304
<br>[ =C2=A0=C2=A0=C2=A00.000000] Detected VIPT I-cache on CPU0
<br>[ =C2=A0=C2=A0=C2=A00.000000] CPU features: detected: ARM erratum 84571=
9
<br>[ =C2=A0=C2=A0=C2=A00.000000] CPU features: detected: GIC system regist=
er CPU interface
<br>[ =C2=A0=C2=A0=C2=A00.000000] Speculative Store Bypass Disable mitigati=
on not required
<br>[ =C2=A0=C2=A0=C2=A00.000000] Built 1 zonelists, mobility grouping on.=
=C2=A0 Total pages: 508032
<br>[ =C2=A0=C2=A0=C2=A00.000000] Policy zone: DMA32
<br>[ =C2=A0=C2=A0=C2=A00.000000] Kernel command line: console=3Dttymxc1,11=
5200 earlycon=3Dec_imx6q,0x30890000,115200 selinux=3D1 enforcing=3D0 rootwa=
it ro root=3D/dev/mmcblk2p2 rauc.slot=3DB
<br>[ =C2=A0=C2=A0=C2=A00.000000] Dentry cache hash table entries: 262144 (=
order: 9, 2097152 bytes, linear)
<br>[ =C2=A0=C2=A0=C2=A00.000000] Inode-cache hash table entries: 131072 (o=
rder: 8, 1048576 bytes, linear)
<br>[ =C2=A0=C2=A0=C2=A00.000000] mem auto-init: stack:off, heap alloc:off,=
 heap free:off
<br>[ =C2=A0=C2=A0=C2=A00.000000] Memory: 1336216K/2064384K available (1650=
8K kernel=20
code, 1234K rwdata, 6480K rodata, 2880K init, 1038K bss, 72808K=20
reserved, 655360K cma-reserved)
<br>[ =C2=A0=C2=A0=C2=A00.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjec=
ts=3D0, CPUs=3D4, Nodes=3D1
<br>[ =C2=A0=C2=A0=C2=A00.000000] rcu: Preemptible hierarchical RCU impleme=
ntation.
<br>[ =C2=A0=C2=A0=C2=A00.000000] rcu: =C2=A0=C2=A0=C2=A0=C2=A0RCU restrict=
ing CPUs from NR_CPUS=3D256 to nr_cpu_ids=3D4.
<br>[ =C2=A0=C2=A0=C2=A00.000000] =C2=A0Tasks RCU enabled.
<br>[ =C2=A0=C2=A0=C2=A00.000000] rcu: RCU calculated value of scheduler-en=
listment delay is 25 jiffies.
<br>[ =C2=A0=C2=A0=C2=A00.000000] rcu: Adjusting geometry for rcu_fanout_le=
af=3D16, nr_cpu_ids=3D4
<br>[ =C2=A0=C2=A0=C2=A00.000000] NR_IRQS: 64, nr_irqs: 64, preallocated ir=
qs: 0
<br>[ =C2=A0=C2=A0=C2=A00.000000] GICv3: GIC: Using split EOI/Deactivate mo=
de
<br>[ =C2=A0=C2=A0=C2=A00.000000] GICv3: 128 SPIs implemented
<br>[ =C2=A0=C2=A0=C2=A00.000000] GICv3: 0 Extended SPIs implemented
<br>[ =C2=A0=C2=A0=C2=A00.000000] GICv3: Distributor has no Range Selector =
support
<br>[ =C2=A0=C2=A0=C2=A00.000000] GICv3: 16 PPIs implemented
<br>[ =C2=A0=C2=A0=C2=A00.000000] GICv3: no VLPI support, no direct LPI sup=
port
<br>[ =C2=A0=C2=A0=C2=A00.000000] GICv3: CPU0: found redistributor 0 region=
 0:0x0000000038880000
<br>[ =C2=A0=C2=A0=C2=A00.000000] ITS: No ITS available, not enabling LPIs
<br>[ =C2=A0=C2=A0=C2=A00.000000] random: get_random_bytes called from star=
t_kernel+0x2b8/0x43c with crng_init=3D0
<br>[ =C2=A0=C2=A0=C2=A00.000000] arch_timer: cp15 timer(s) running at 8.00=
MHz (phys).
<br>[ =C2=A0=C2=A0=C2=A00.000000] clocksource: arch_sys_counter: mask: 0xff=
ffffffffffff max_cycles: 0x1d854df40, max_idle_ns: 440795202120 ns
<br>[ =C2=A0=C2=A0=C2=A00.000003] sched_clock: 56 bits at 8MHz, resolution =
125ns, wraps every 2199023255500ns
<br>[ =C2=A0=C2=A0=C2=A00.008456] Console: colour dummy device 80x25
<br>[ =C2=A0=C2=A0=C2=A00.012581] Calibrating delay loop (skipped), value c=
alculated using timer frequency.. 16.00 BogoMIPS (lpj=3D32000)
<br>[ =C2=A0=C2=A0=C2=A00.022844] pid_max: default: 32768 minimum: 301
<br>[ =C2=A0=C2=A0=C2=A00.027542] LSM: Security Framework initializing
<br>[ =C2=A0=C2=A0=C2=A00.032140] SELinux: =C2=A0Initializing.
<br>[ =C2=A0=C2=A0=C2=A00.035679] Mount-cache hash table entries: 4096 (ord=
er: 3, 32768 bytes, linear)
<br>[ =C2=A0=C2=A0=C2=A00.043062] Mountpoint-cache hash table entries: 4096=
 (order: 3, 32768 bytes, linear)
<br>[ =C2=A0=C2=A0=C2=A00.052065] ASID allocator initialised with 32768 ent=
ries
<br>[ =C2=A0=C2=A0=C2=A00.056439] rcu: Hierarchical SRCU implementation.
<br>[ =C2=A0=C2=A0=C2=A00.062123] EFI services will not be available.
<br>[ =C2=A0=C2=A0=C2=A00.065889] smp: Bringing up secondary CPUs ...
<br>[ =C2=A0=C2=A0=C2=A00.070645] Detected VIPT I-cache on CPU1
<br>[ =C2=A0=C2=A0=C2=A00.070669] GICv3: CPU1: found redistributor 1 region=
 0:0x00000000388a0000
<br>[ =C2=A0=C2=A0=C2=A00.070699] CPU1: Booted secondary processor 0x000000=
0001 [0x410fd034]
<br>[ =C2=A0=C2=A0=C2=A00.071094] Detected VIPT I-cache on CPU2
<br>[ =C2=A0=C2=A0=C2=A00.071111] GICv3: CPU2: found redistributor 2 region=
 0:0x00000000388c0000
<br>[ =C2=A0=C2=A0=C2=A00.071129] CPU2: Booted secondary processor 0x000000=
0002 [0x410fd034]
<br>[ =C2=A0=C2=A0=C2=A00.071498] Detected VIPT I-cache on CPU3
<br>[ =C2=A0=C2=A0=C2=A00.071512] GICv3: CPU3: found redistributor 3 region=
 0:0x00000000388e0000
<br>[ =C2=A0=C2=A0=C2=A00.071527] CPU3: Booted secondary processor 0x000000=
0003 [0x410fd034]
<br>[ =C2=A0=C2=A0=C2=A00.071579] smp: Brought up 1 node, 4 CPUs
<br>[ =C2=A0=C2=A0=C2=A00.126888] SMP: Total of 4 processors activated.
<br>[ =C2=A0=C2=A0=C2=A00.131607] CPU features: detected: 32-bit EL0 Suppor=
t
<br>[ =C2=A0=C2=A0=C2=A00.136781] CPU features: detected: CRC32 instruction=
s
<br>[ =C2=A0=C2=A0=C2=A00.148799] CPU: All CPU(s) started at EL2
<br>[ =C2=A0=C2=A0=C2=A00.150070] alternatives: patching kernel code
<br>[ =C2=A0=C2=A0=C2=A00.155972] devtmpfs: initialized
<br>[ =C2=A0=C2=A0=C2=A00.163712] clocksource: jiffies: mask: 0xffffffff ma=
x_cycles: 0xffffffff, max_idle_ns: 7645041785100000 ns
<br>[ =C2=A0=C2=A0=C2=A00.170666] futex hash table entries: 1024 (order: 4,=
 65536 bytes, linear)
<br>[ =C2=A0=C2=A0=C2=A00.194350] pinctrl core: initialized pinctrl subsyst=
em
<br>[ =C2=A0=C2=A0=C2=A00.197431] DMI not present or invalid.
<br>[ =C2=A0=C2=A0=C2=A00.200869] NET: Registered protocol family 16
<br>[ =C2=A0=C2=A0=C2=A00.212126] DMA: preallocated 256 KiB pool for atomic=
 allocations
<br>[ =C2=A0=C2=A0=C2=A00.215425] audit: initializing netlink subsys (disab=
led)
<br>[ =C2=A0=C2=A0=C2=A00.221074] audit: type=3D2000 audit(0.160:1): state=
=3Dinitialized audit_enabled=3D0 res=3D1
<br>[ =C2=A0=C2=A0=C2=A00.228628] cpuidle: using governor menu
<br>[ =C2=A0=C2=A0=C2=A00.233081] hw-breakpoint: found 6 breakpoint and 4 w=
atchpoint registers.
<br>[ =C2=A0=C2=A0=C2=A00.240148] Serial: AMBA PL011 UART driver
<br>[ =C2=A0=C2=A0=C2=A00.243532] imx mu driver is registered.
<br>[ =C2=A0=C2=A0=C2=A00.247422] imx rpmsg driver is registered.
<br>[ =C2=A0=C2=A0=C2=A00.256559] imx8mm-pinctrl 30330000.pinctrl: initiali=
zed IMX pinctrl driver
<br>[ =C2=A0=C2=A0=C2=A00.277795] HugeTLB registered 1.00 GiB page size, pr=
e-allocated 0 pages
<br>[ =C2=A0=C2=A0=C2=A00.281689] HugeTLB registered 32.0 MiB page size, pr=
e-allocated 0 pages
<br>[ =C2=A0=C2=A0=C2=A00.288409] HugeTLB registered 2.00 MiB page size, pr=
e-allocated 0 pages
<br>[ =C2=A0=C2=A0=C2=A00.295145] HugeTLB registered 64.0 KiB page size, pr=
e-allocated 0 pages
<br>[ =C2=A0=C2=A0=C2=A00.302773] cryptd: max_cpu_qlen set to 1000
<br>[ =C2=A0=C2=A0=C2=A00.309110] ACPI: Interpreter disabled.
<br>[ =C2=A0=C2=A0=C2=A00.310834] iommu: Default domain type: Translated =
=C2=A0<br>[ =C2=A0=C2=A0=C2=A00.315168] vgaarb: loaded
<br>[ =C2=A0=C2=A0=C2=A00.317981] SCSI subsystem initialized
<br>[ =C2=A0=C2=A0=C2=A00.321822] usbcore: registered new interface driver =
usbfs
<br>[ =C2=A0=C2=A0=C2=A00.327027] usbcore: registered new interface driver =
hub
<br>[ =C2=A0=C2=A0=C2=A00.332343] usbcore: registered new device driver usb
<br>[ =C2=A0=C2=A0=C2=A00.338578] mc: Linux media interface: v0.10
<br>[ =C2=A0=C2=A0=C2=A00.341707] videodev: Linux video capture interface: =
v2.00
<br>[ =C2=A0=C2=A0=C2=A00.347255] pps_core: LinuxPPS API ver. 1 registered
<br>[ =C2=A0=C2=A0=C2=A00.352184] pps_core: Software ver. 5.3.6 - Copyright=
 2005-2007 Rodolfo Giometti &lt;<a href=3D"mailto:giometti@linux.it" target=
=3D"_blank">giometti@linux.it</a>&gt;
<br>[ =C2=A0=C2=A0=C2=A00.361379] PTP clock support registered
<br>[ =C2=A0=C2=A0=C2=A00.365426] EDAC MC: Ver: 3.0.0
<br>[ =C2=A0=C2=A0=C2=A00.369219] No BMan portals available!
<br>[ =C2=A0=C2=A0=C2=A00.372429] QMan: Allocated lookup table at (____ptrv=
al____), entry count 65537
<br>[ =C2=A0=C2=A0=C2=A00.379832] No QMan portals available!
<br>[ =C2=A0=C2=A0=C2=A00.383713] No USDPAA memory, no &#39;fsl,usdpaa-mem&=
#39; in device-tree
<br>[ =C2=A0=C2=A0=C2=A00.389771] FPGA manager framework
<br>[ =C2=A0=C2=A0=C2=A00.392851] Advanced Linux Sound Architecture Driver =
Initialized.
<br>[ =C2=A0=C2=A0=C2=A00.399282] Bluetooth: Core ver 2.22
<br>[ =C2=A0=C2=A0=C2=A00.402510] NET: Registered protocol family 31
<br>[ =C2=A0=C2=A0=C2=A00.406961] Bluetooth: HCI device and connection mana=
ger initialized
<br>[ =C2=A0=C2=A0=C2=A00.413350] Bluetooth: HCI socket layer initialized
<br>[ =C2=A0=C2=A0=C2=A00.418248] Bluetooth: L2CAP socket layer initialized
<br>[ =C2=A0=C2=A0=C2=A00.423330] Bluetooth: SCO socket layer initialized
<br>[ =C2=A0=C2=A0=C2=A00.428975] clocksource: Switched to clocksource arch=
_sys_counter
<br>[ =C2=A0=C2=A0=C2=A00.434507] VFS: Disk quotas dquot_6.6.0
<br>[ =C2=A0=C2=A0=C2=A00.438331] VFS: Dquot-cache hash table entries: 512 =
(order 0, 4096 bytes)
<br>[ =C2=A0=C2=A0=C2=A00.445357] pnp: PnP ACPI: disabled
<br>[ =C2=A0=C2=A0=C2=A00.454274] thermal_sys: Registered thermal governor =
&#39;step_wise&#39;
<br>[ =C2=A0=C2=A0=C2=A00.454279] thermal_sys: Registered thermal governor =
&#39;power_allocator&#39;
<br>[ =C2=A0=C2=A0=C2=A00.457769] NET: Registered protocol family 2
<br>[ =C2=A0=C2=A0=C2=A00.468700] tcp_listen_portaddr_hash hash table entri=
es: 1024 (order: 2, 16384 bytes, linear)
<br>[ =C2=A0=C2=A0=C2=A00.477008] TCP established hash table entries: 16384=
 (order: 5, 131072 bytes, linear)
<br>[ =C2=A0=C2=A0=C2=A00.485043] TCP bind hash table entries: 16384 (order=
: 6, 262144 bytes, linear)
<br>[ =C2=A0=C2=A0=C2=A00.492505] TCP: Hash tables configured (established =
16384 bind 16384)
<br>[ =C2=A0=C2=A0=C2=A00.498928] UDP hash table entries: 1024 (order: 3, 3=
2768 bytes, linear)
<br>[ =C2=A0=C2=A0=C2=A00.505618] UDP-Lite hash table entries: 1024 (order:=
 3, 32768 bytes, linear)
<br>[ =C2=A0=C2=A0=C2=A00.512899] NET: Registered protocol family 1
<br>[ =C2=A0=C2=A0=C2=A00.517459] RPC: Registered named UNIX socket transpo=
rt module.
<br>[ =C2=A0=C2=A0=C2=A00.523088] RPC: Registered udp transport module.
<br>[ =C2=A0=C2=A0=C2=A00.527803] RPC: Registered tcp transport module.
<br>[ =C2=A0=C2=A0=C2=A00.532528] RPC: Registered tcp NFSv4.1 backchannel t=
ransport module.
<br>[ =C2=A0=C2=A0=C2=A00.539385] PCI: CLS 0 bytes, default 64
<br>[ =C2=A0=C2=A0=C2=A00.543722] hw perfevents: enabled with armv8_pmuv3 P=
MU driver, 7 counters available
<br>[ =C2=A0=C2=A0=C2=A00.551061] kvm [1]: IPA Size Limit: 40 bits
<br>[ =C2=A0=C2=A0=C2=A00.555620] kvm [1]: GICv3: no GICV resource entry
<br>[ =C2=A0=C2=A0=C2=A00.559830] kvm [1]: disabling GICv2 emulation
<br>[ =C2=A0=C2=A0=C2=A00.564304] kvm [1]: GIC system register CPU interfac=
e enabled
<br>[ =C2=A0=C2=A0=C2=A00.570207] kvm [1]: vgic interrupt IRQ1
<br>[ =C2=A0=C2=A0=C2=A00.574184] kvm [1]: Hyp mode initialized successfull=
y
<br>[ =C2=A0=C2=A0=C2=A00.582033] Initialise system trusted keyrings
<br>[ =C2=A0=C2=A0=C2=A00.583816] workingset: timestamp_bits=3D44 max_order=
=3D19 bucket_order=3D0
<br>[ =C2=A0=C2=A0=C2=A00.595952] squashfs: version 4.0 (2009/01/31) Philli=
p Lougher
<br>[ =C2=A0=C2=A0=C2=A00.599542] NFS: Registering the id_resolver key type
<br>[ =C2=A0=C2=A0=C2=A00.604059] Key type id_resolver registered
<br>[ =C2=A0=C2=A0=C2=A00.608228] Key type id_legacy registered
<br>[ =C2=A0=C2=A0=C2=A00.612258] nfs4filelayout_init: NFSv4 File Layout Dr=
iver Registering...
<br>[ =C2=A0=C2=A0=C2=A00.618989] nfs4flexfilelayout_init: NFSv4 Flexfile L=
ayout Driver Registering...
<br>[ =C2=A0=C2=A0=C2=A00.626441] jffs2: version 2.2. (NAND) =EF=BF=BD=C2=
=A9 2001-2006 Red Hat, Inc.
<br>[ =C2=A0=C2=A0=C2=A00.632909] 9p: Installing v9fs 9p2000 file system su=
pport
<br>[ =C2=A0=C2=A0=C2=A00.651715] Key type asymmetric registered
<br>[ =C2=A0=C2=A0=C2=A00.652956] Asymmetric key parser &#39;x509&#39; regi=
stered
<br>[ =C2=A0=C2=A0=C2=A00.657891] Block layer SCSI generic (bsg) driver ver=
sion 0.4 loaded (major 244)
<br>[ =C2=A0=C2=A0=C2=A00.665301] io scheduler mq-deadline registered
<br>[ =C2=A0=C2=A0=C2=A00.669849] io scheduler kyber registered
<br>[ =C2=A0=C2=A0=C2=A00.678038] EINJ: ACPI disabled.
<br>[ =C2=A0=C2=A0=C2=A00.686739] imx-sdma 302c0000.dma-controller: Direct =
firmware load for imx/sdma/sdma-imx7d.bin failed with error -2
<br>[ =C2=A0=C2=A0=C2=A00.694396] imx-sdma 302c0000.dma-controller: Falling=
 back to sysfs fallback for: imx/sdma/sdma-imx7d.bin
<br>[ =C2=A0=C2=A0=C2=A00.711570] mxs-dma 33000000.dma-controller: initiali=
zed
<br>[ =C2=A0=C2=A0=C2=A00.715081] Bus freq driver module loaded
<br>[ =C2=A0=C2=A0=C2=A00.723138] Serial: 8250/16550 driver, 4 ports, IRQ s=
haring enabled
<br>[ =C2=A0=C2=A0=C2=A00.728538] 30890000.serial: ttymxc1 at MMIO 0x308900=
00 (irq =3D 34, base_baud =3D 1500000) is a IMX
<br>[ =C2=A0=C2=A0=C2=A00.735469] printk: console [ttymxc1] enabled
<br>[ =C2=A0=C2=A0=C2=A00.735469] printk: console [ttymxc1] enabled
<br>[ =C2=A0=C2=A0=C2=A00.744109] printk: bootconsole [ec_imx6q0] disabled
<br>[ =C2=A0=C2=A0=C2=A00.744109] printk: bootconsole [ec_imx6q0] disabled
<br>[ =C2=A0=C2=A0=C2=A00.756061] imx-drm soc@0:bus@32c00000:display-subsys=
tem: no available port
<br>[ =C2=A0=C2=A0=C2=A00.774364] loop: module loaded
<br>[ =C2=A0=C2=A0=C2=A00.779430] imx ahci driver is registered.
<br>[ =C2=A0=C2=A0=C2=A00.786198] spi_imx 30830000.spi: probed
<br>[ =C2=A0=C2=A0=C2=A00.791030] spi-nor spi3.0: n25q256ax1 (32768 Kbytes)
<br>[ =C2=A0=C2=A0=C2=A00.796126] 7 fixed-partitions partitions found on MT=
D device 30bb0000.spi
<br>[ =C2=A0=C2=A0=C2=A00.803006] Creating 7 MTD partitions on &quot;30bb00=
00.spi&quot;:
<br>[ =C2=A0=C2=A0=C2=A00.808325] 0x000000000000-0x000000200000 : &quot;U-B=
oot&quot;
<br>[ =C2=A0=C2=A0=C2=A00.817665] 0x000000200000-0x000000202000 : &quot;U-B=
oot Env&quot;
<br>[ =C2=A0=C2=A0=C2=A00.822995] mtd: partition &quot;U-Boot Env&quot; doe=
sn&#39;t end on an erase/write block -- force read-only
<br>[ =C2=A0=C2=A0=C2=A00.833562] 0x000000202000-0x000000204000 : &quot;U-B=
oot Env 2&quot;
<br>[ =C2=A0=C2=A0=C2=A00.839058] mtd: partition &quot;U-Boot Env 2&quot; d=
oesn&#39;t start on an erase/write block boundary -- force read-only
<br>[ =C2=A0=C2=A0=C2=A00.853558] 0x000000204000-0x000000205000 : &quot;boo=
t.scr&quot;
<br>[ =C2=A0=C2=A0=C2=A00.858708] mtd: partition &quot;boot.scr&quot; doesn=
&#39;t start on an erase/write block boundary -- force read-only
<br>[ =C2=A0=C2=A0=C2=A00.869560] 0x000000205000-0x000000210000 : &quot;Dev=
ice Tree Blob&quot;
<br>[ =C2=A0=C2=A0=C2=A00.875403] mtd: partition &quot;Device Tree Blob&quo=
t; doesn&#39;t start on an erase/write block boundary -- force read-only
<br>[ =C2=A0=C2=A0=C2=A00.889564] 0x000000210000-0x000000e10000 : &quot;Com=
pressed Kernel&quot;
<br>[ =C2=A0=C2=A0=C2=A00.897581] 0x000000e10000-0x000002000000 : &quot;Squ=
ashFS&quot;
<br>[ =C2=A0=C2=A0=C2=A00.906803] libphy: Fixed MDIO Bus: probed
<br>[ =C2=A0=C2=A0=C2=A00.911599] tun: Universal TUN/TAP device driver, 1.6
<br>[ =C2=A0=C2=A0=C2=A00.917348] thunder_xcv, ver 1.0
<br>[ =C2=A0=C2=A0=C2=A00.920605] thunder_bgx, ver 1.0
<br>[ =C2=A0=C2=A0=C2=A00.923868] nicpf, ver 1.0
<br>[ =C2=A0=C2=A0=C2=A00.927790] pps pps0: new PPS source ptp0
<br>[ =C2=A0=C2=A0=C2=A00.944179] libphy: fec_enet_mii_bus: probed
<br>[ =C2=A0=C2=A0=C2=A00.948992] fec 30be0000.ethernet eth0: registered PH=
C device 0
<br>[ =C2=A0=C2=A0=C2=A00.955460] Freescale FM module, FMD API version 21.1=
.0
<br>[ =C2=A0=C2=A0=C2=A00.960912] Freescale FM Ports module
<br>[ =C2=A0=C2=A0=C2=A00.964580] fsl_mac: fsl_mac: FSL FMan MAC API based =
driver
<br>[ =C2=A0=C2=A0=C2=A00.970316] fsl_dpa: FSL DPAA Ethernet driver
<br>[ =C2=A0=C2=A0=C2=A00.974768] fsl_advanced: FSL DPAA Advanced drivers:
<br>[ =C2=A0=C2=A0=C2=A00.979737] fsl_proxy: FSL DPAA Proxy initialization =
driver
<br>[ =C2=A0=C2=A0=C2=A00.985398] fsl_oh: FSL FMan Offline Parsing port dri=
ver
<br>[ =C2=A0=C2=A0=C2=A00.991478] hclge is initializing
<br>[ =C2=A0=C2=A0=C2=A00.994802] hns3: Hisilicon Ethernet Network Driver f=
or Hip08 Family - version
<br>[ =C2=A0=C2=A0=C2=A01.002027] hns3: Copyright (c) 2017 Huawei Corporati=
on.
<br>[ =C2=A0=C2=A0=C2=A01.007388] e1000: Intel(R) PRO/1000 Network Driver -=
 version 7.3.21-k8-NAPI
<br>[ =C2=A0=C2=A0=C2=A01.014441] e1000: Copyright (c) 1999-2006 Intel Corp=
oration.
<br>[ =C2=A0=C2=A0=C2=A01.020217] e1000e: Intel(R) PRO/1000 Network Driver =
- 3.2.6-k
<br>[ =C2=A0=C2=A0=C2=A01.026053] e1000e: Copyright(c) 1999 - 2015 Intel Co=
rporation.
<br>[ =C2=A0=C2=A0=C2=A01.032008] igb: Intel(R) Gigabit Ethernet Network Dr=
iver - version 5.6.0-k
<br>[ =C2=A0=C2=A0=C2=A01.038977] igb: Copyright (c) 2007-2014 Intel Corpor=
ation.
<br>[ =C2=A0=C2=A0=C2=A01.044581] igbvf: Intel(R) Gigabit Virtual Function =
Network Driver - version 2.4.0-k
<br>[ =C2=A0=C2=A0=C2=A01.052413] igbvf: Copyright (c) 2009 - 2012 Intel Co=
rporation.
<br>[ =C2=A0=C2=A0=C2=A01.058472] sky2: driver version 1.30
<br>[ =C2=A0=C2=A0=C2=A01.062994] VFIO - User Level meta-driver version: 0.=
3
<br>[ =C2=A0=C2=A0=C2=A01.069765] ehci_hcd: USB 2.0 &#39;Enhanced&#39; Host=
 Controller (EHCI) Driver
<br>[ =C2=A0=C2=A0=C2=A01.076300] ehci-pci: EHCI PCI platform driver
<br>[ =C2=A0=C2=A0=C2=A01.080817] ehci-platform: EHCI generic platform driv=
er
<br>[ =C2=A0=C2=A0=C2=A01.086195] ohci_hcd: USB 1.1 &#39;Open&#39; Host Con=
troller (OHCI) Driver
<br>[ =C2=A0=C2=A0=C2=A01.092398] ohci-pci: OHCI PCI platform driver
<br>[ =C2=A0=C2=A0=C2=A01.096883] ohci-platform: OHCI generic platform driv=
er
<br>[ =C2=A0=C2=A0=C2=A01.102594] usbcore: registered new interface driver =
usb-storage
<br>[ =C2=A0=C2=A0=C2=A01.108673] usbcore: registered new interface driver =
usbserial_generic
<br>[ =C2=A0=C2=A0=C2=A01.115219] usbserial: USB Serial support registered =
for generic
<br>[ =C2=A0=C2=A0=C2=A01.121250] usbcore: registered new interface driver =
ftdi_sio
<br>[ =C2=A0=C2=A0=C2=A01.127012] usbserial: USB Serial support registered =
for FTDI USB Serial Device
<br>[ =C2=A0=C2=A0=C2=A01.134346] usbcore: registered new interface driver =
usb_serial_simple
<br>[ =C2=A0=C2=A0=C2=A01.140888] usbserial: USB Serial support registered =
for carelink
<br>[ =C2=A0=C2=A0=C2=A01.146996] usbserial: USB Serial support registered =
for zio
<br>[ =C2=A0=C2=A0=C2=A01.152669] usbserial: USB Serial support registered =
for funsoft
<br>[ =C2=A0=C2=A0=C2=A01.158690] usbserial: USB Serial support registered =
for flashloader
<br>[ =C2=A0=C2=A0=C2=A01.165062] usbserial: USB Serial support registered =
for google
<br>[ =C2=A0=C2=A0=C2=A01.170997] usbserial: USB Serial support registered =
for libtransistor
<br>[ =C2=A0=C2=A0=C2=A01.177539] usbserial: USB Serial support registered =
for vivopay
<br>[ =C2=A0=C2=A0=C2=A01.183559] usbserial: USB Serial support registered =
for moto_modem
<br>[ =C2=A0=C2=A0=C2=A01.189846] usbserial: USB Serial support registered =
for motorola_tetra
<br>[ =C2=A0=C2=A0=C2=A01.196480] usbserial: USB Serial support registered =
for novatel_gps
<br>[ =C2=A0=C2=A0=C2=A01.202850] usbserial: USB Serial support registered =
for hp4x
<br>[ =C2=A0=C2=A0=C2=A01.208613] usbserial: USB Serial support registered =
for suunto
<br>[ =C2=A0=C2=A0=C2=A01.214550] usbserial: USB Serial support registered =
for siemens_mpi
<br>[ =C2=A0=C2=A0=C2=A01.223273] input: 30370000.snvs:snvs-powerkey as /de=
vices/platform/soc@0/soc@0:bus@30000000/30370000.snvs/30370000.snvs:snvs-po=
werkey/input/input0
<br>[ =C2=A0=C2=A0=C2=A01.238261] snvs_rtc 30370000.snvs:snvs-rtc-lp: regis=
tered as rtc0
<br>[ =C2=A0=C2=A0=C2=A01.244525] i2c /dev entries driver
<br>[ =C2=A0=C2=A0=C2=A01.252482] imx2-wdt 30280000.watchdog: timeout 60 se=
c (nowayout=3D0)
<br>[ =C2=A0=C2=A0=C2=A01.259024] Bluetooth: HCI UART driver ver 2.3
<br>[ =C2=A0=C2=A0=C2=A01.263482] Bluetooth: HCI UART protocol H4 registere=
d
<br>[ =C2=A0=C2=A0=C2=A01.268627] Bluetooth: HCI UART protocol BCSP registe=
red
<br>[ =C2=A0=C2=A0=C2=A01.273975] Bluetooth: HCI UART protocol LL registere=
d
<br>[ =C2=A0=C2=A0=C2=A01.279119] Bluetooth: HCI UART protocol ATH3K regist=
ered
<br>[ =C2=A0=C2=A0=C2=A01.284536] Bluetooth: HCI UART protocol Three-wire (=
H5) registered
<br>[ =C2=A0=C2=A0=C2=A01.290883] Bluetooth: HCI UART protocol Broadcom reg=
istered
<br>[ =C2=A0=C2=A0=C2=A01.296567] Bluetooth: HCI UART protocol QCA register=
ed
<br>[ =C2=A0=C2=A0=C2=A01.303543] sdhci: Secure Digital Host Controller Int=
erface driver
<br>[ =C2=A0=C2=A0=C2=A01.309736] sdhci: Copyright(c) Pierre Ossman
<br>[ =C2=A0=C2=A0=C2=A01.314266] Synopsys Designware Multimedia Card Inter=
face Driver
<br>[ =C2=A0=C2=A0=C2=A01.320775] sdhci-pltfm: SDHCI platform and OF driver=
 helper
<br>[ =C2=A0=C2=A0=C2=A01.327179] mmc1: CQHCI version 5.10
<br>[ =C2=A0=C2=A0=C2=A01.331244] mmc2: CQHCI version 5.10
<br>[ =C2=A0=C2=A0=C2=A01.366687] mmc2: SDHCI controller on 30b60000.mmc [3=
0b60000.mmc] using ADMA
<br>[ =C2=A0=C2=A0=C2=A01.375998] ledtrig-cpu: registered to indicate activ=
ity on CPUs
<br>[ =C2=A0=C2=A0=C2=A01.383126] caam 30900000.crypto: device ID =3D 0x0a1=
6040100000000 (Era 9)
<br>[ =C2=A0=C2=A0=C2=A01.389897] caam 30900000.crypto: job rings =3D 3, qi=
 =3D 0
<br>[ =C2=A0=C2=A0=C2=A01.405062] caam algorithms registered in /proc/crypt=
o
<br>[ =C2=A0=C2=A0=C2=A01.410957] caam 30900000.crypto: caam pkc algorithms=
 registered in /proc/crypto
<br>[ =C2=A0=C2=A0=C2=A01.421068] caam_jr 30901000.jr: registering rng-caam
<br>[ =C2=A0=C2=A0=C2=A01.430101] caam-snvs 30370000.caam-snvs: can&#39;t g=
et snvs clock
<br>[ =C2=A0=C2=A0=C2=A01.436043] caam-snvs 30370000.caam-snvs: violation h=
andlers armed - non-secure state
<br>[ =C2=A0=C2=A0=C2=A01.444463] usbcore: registered new interface driver =
usbhid
<br>[ =C2=A0=C2=A0=C2=A01.450044] usbhid: USB HID core driver
<br>[ =C2=A0=C2=A0=C2=A01.455567] No fsl,qman node
<br>[ =C2=A0=C2=A0=C2=A01.458510] Freescale USDPAA process driver
<br>[ =C2=A0=C2=A0=C2=A01.462698] fsl-usdpaa: no region found
<br>[ =C2=A0=C2=A0=C2=A01.466539] Freescale USDPAA process IRQ driver
<br>[ =C2=A0=C2=A0=C2=A01.474129] optee: probing for conduit method from DT=
.
<br>[ =C2=A0=C2=A0=C2=A01.475305] mmc2: Command Queue Engine enabled
<br>[ =C2=A0=C2=A0=C2=A01.479321] optee: revision 3.2 (6a22e6e8)
<br>[ =C2=A0=C2=A0=C2=A01.479658] optee: dynamic shared memory is enabled
<br>[ =C2=A0=C2=A0=C2=A01.483772] mmc2: new HS400 Enhanced strobe MMC card =
at address 0001
<br>[ =C2=A0=C2=A0=C2=A01.488029] optee: initialized driver
<br>[ =C2=A0=C2=A0=C2=A01.493604] mmcblk2: mmc2:0001 DG4016 7.49 GiB =C2=A0=
<br>[ =C2=A0=C2=A0=C2=A01.501979] wm8524-codec audio-codec: Failed to get m=
ute line: -517
<br>[ =C2=A0=C2=A0=C2=A01.502950] mmcblk2boot0: mmc2:0001 DG4016 partition =
1 4.00 MiB
<br>[ =C2=A0=C2=A0=C2=A01.507807] OF: /sound-bt-sco/simple-audio-card,cpu: =
could not get #sound-dai-cells for /soc@0/bus@30000000/sai@30020000
<br>[ =C2=A0=C2=A0=C2=A01.513720] mmcblk2boot1: mmc2:0001 DG4016 partition =
2 4.00 MiB
<br>[ =C2=A0=C2=A0=C2=A01.519517] asoc-simple-card sound-bt-sco: parse erro=
r -22
<br>[ =C2=A0=C2=A0=C2=A01.530510] mmcblk2gp0: mmc2:0001 DG4016 partition 4 =
3.52 GiB
<br>[ =C2=A0=C2=A0=C2=A01.536315] asoc-simple-card: probe of sound-bt-sco f=
ailed with error -22
<br>[ =C2=A0=C2=A0=C2=A01.542169] mmcblk2rpmb: mmc2:0001 DG4016 partition 3=
 4.00 MiB, chardev (237:0)
<br>[ =C2=A0=C2=A0=C2=A01.561481] pktgen: Packet Generator for packet perfo=
rmance testing. Version: 2.75
<br>[ =C2=A0=C2=A0=C2=A01.564417] =C2=A0mmcblk2: p1 p2
<br>[ =C2=A0=C2=A0=C2=A01.572849] NET: Registered protocol family 26
<br>[ =C2=A0=C2=A0=C2=A01.574516] =C2=A0mmcblk2gp0: p1 p2
<br>[ =C2=A0=C2=A0=C2=A01.577793] NET: Registered protocol family 10
<br>[ =C2=A0=C2=A0=C2=A01.585567] Segment Routing with IPv6
<br>[ =C2=A0=C2=A0=C2=A01.589288] NET: Registered protocol family 17
<br>[ =C2=A0=C2=A0=C2=A01.594157] Bluetooth: RFCOMM TTY layer initialized
<br>[ =C2=A0=C2=A0=C2=A01.599050] Bluetooth: RFCOMM socket layer initialize=
d
<br>[ =C2=A0=C2=A0=C2=A01.604216] Bluetooth: RFCOMM ver 1.11
<br>[ =C2=A0=C2=A0=C2=A01.607979] Bluetooth: BNEP (Ethernet Emulation) ver =
1.3
<br>[ =C2=A0=C2=A0=C2=A01.613296] Bluetooth: BNEP filters: protocol multica=
st
<br>[ =C2=A0=C2=A0=C2=A01.618527] Bluetooth: BNEP socket layer initialized
<br>[ =C2=A0=C2=A0=C2=A01.623496] Bluetooth: HIDP (Human Interface Emulatio=
n) ver 1.2
<br>[ =C2=A0=C2=A0=C2=A01.629422] Bluetooth: HIDP socket layer initialized
<br>[ =C2=A0=C2=A0=C2=A01.634425] 8021q: 802.1Q VLAN Support v1.8
<br>[ =C2=A0=C2=A0=C2=A01.638627] lib80211: common routines for IEEE802.11 =
drivers
<br>[ =C2=A0=C2=A0=C2=A01.644399] 9pnet: Installing 9P2000 support
<br>[ =C2=A0=C2=A0=C2=A01.648700] tsn generic netlink module v1 init...
<br>[ =C2=A0=C2=A0=C2=A01.653467] Key type dns_resolver registered
<br>[ =C2=A0=C2=A0=C2=A01.658548] registered taskstats version 1
<br>[ =C2=A0=C2=A0=C2=A01.662659] Loading compiled-in X.509 certificates
<br>[ =C2=A0=C2=A0=C2=A01.690319] usb_phy_generic usbphynop1: usbphynop1 su=
pply vcc not found, using dummy regulator
<br>[ =C2=A0=C2=A0=C2=A01.699097] usb_phy_generic usbphynop2: usbphynop2 su=
pply vcc not found, using dummy regulator
<br>[ =C2=A0=C2=A0=C2=A01.768167] random: fast init done
<br>[ =C2=A0=C2=A0=C2=A01.777959] LDO6: supplied by regulator-dummy
<br>[ =C2=A0=C2=A0=C2=A01.782459] i2c i2c-0: IMX I2C adapter registered
<br>[ =C2=A0=C2=A0=C2=A01.788173] i2c i2c-1: IMX I2C adapter registered
<br>[ =C2=A0=C2=A0=C2=A01.794032] i2c i2c-2: IMX I2C adapter registered
<br>[ =C2=A0=C2=A0=C2=A01.799548] i2c i2c-3: IMX I2C adapter registered
<br>[ =C2=A0=C2=A0=C2=A01.804568] imx-cpufreq-dt imx-cpufreq-dt: cpu speed =
grade 2 mkt segment 2 supported-hw 0x4 0x4
<br>[ =C2=A0=C2=A0=C2=A01.817070] mmc1: CQHCI version 5.10
<br>[ =C2=A0=C2=A0=C2=A01.820686] sdhci-esdhc-imx 30b50000.mmc: Got CD GPIO
<br>[ =C2=A0=C2=A0=C2=A01.857690] mmc1: SDHCI controller on 30b50000.mmc [3=
0b50000.mmc] using ADMA
<br>[ =C2=A0=C2=A0=C2=A01.866383] imx8mm-pinctrl 30330000.pinctrl: pin=20
MX8MM_IOMUXC_I2C4_SDA already requested by 30a50000.i2c; cannot claim=20
for audio-codec
<br>[ =C2=A0=C2=A0=C2=A01.878499] imx8mm-pinctrl 30330000.pinctrl: pin-140 =
(audio-codec) status -22
<br>[ =C2=A0=C2=A0=C2=A01.885659] imx8mm-pinctrl 30330000.pinctrl: could no=
t request=20
pin 140 (MX8MM_IOMUXC_I2C4_SDA) from group gpiowlfgrp =C2=A0on device=20
30330000.pinctrl
<br>[ =C2=A0=C2=A0=C2=A01.898619] wm8524-codec audio-codec: Error applying =
setting, reverse things back
<br>[ =C2=A0=C2=A0=C2=A01.906118] wm8524-codec: probe of audio-codec failed=
 with error -22
<br>[ =C2=A0=C2=A0=C2=A01.920810] input: bd718xx-pwrkey as /devices/platfor=
m/soc@0/soc@0:bus@30800000/30a20000.i2c/i2c-0/0-004b/gpio-keys.1.auto/input=
/input1
<br>[ =C2=A0=C2=A0=C2=A01.934862] snvs_rtc 30370000.snvs:snvs-rtc-lp: setti=
ng system clock to 2021-05-17T19:16:30 UTC (1621278990)
<br>[ =C2=A0=C2=A0=C2=A01.945050] cfg80211: Loading compiled-in X.509 certi=
ficates for regulatory database
<br>[ =C2=A0=C2=A0=C2=A01.956079] cfg80211: Loaded X.509 cert &#39;sforshee=
: 00b28ddf47aef9cea7&#39;
<br>[ =C2=A0=C2=A0=C2=A01.962679] platform regulatory.0: Direct firmware lo=
ad for regulatory.db failed with error -2
<br>[ =C2=A0=C2=A0=C2=A01.967851] ALSA device list:
<br>[ =C2=A0=C2=A0=C2=A01.971304] platform regulatory.0: Falling back to sy=
sfs fallback for: regulatory.db
<br>[ =C2=A0=C2=A0=C2=A01.974275] =C2=A0=C2=A0No soundcards found.
<br>[ =C2=A0=C2=A0=C2=A01.992312] EXT4-fs (mmcblk2p2): mounted filesystem w=
ith ordered data mode. Opts: (null)
<br>[ =C2=A0=C2=A0=C2=A02.000462] VFS: Mounted root (ext4 filesystem) reado=
nly on device 179:2.
<br>[ =C2=A0=C2=A0=C2=A02.007931] devtmpfs: mounted
<br>[ =C2=A0=C2=A0=C2=A02.011691] Freeing unused kernel memory: 2880K
<br>[ =C2=A0=C2=A0=C2=A02.029603] Run /sbin/init as init process
<br>[ =C2=A0=C2=A0=C2=A02.215985] SELinux: =C2=A0Permission watch in class =
filesystem not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.223579] SELinux: =C2=A0Permission watch in class =
file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.230546] SELinux: =C2=A0Permission watch_mount in =
class file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.238041] SELinux: =C2=A0Permission watch_sb in cla=
ss file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.245264] SELinux: =C2=A0Permission watch_with_perm=
 in class file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.253104] SELinux: =C2=A0Permission watch_reads in =
class file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.260596] SELinux: =C2=A0Permission watch in class =
dir not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.267481] SELinux: =C2=A0Permission watch_mount in =
class dir not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.274878] SELinux: =C2=A0Permission watch_sb in cla=
ss dir not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.282023] SELinux: =C2=A0Permission watch_with_perm=
 in class dir not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.289767] SELinux: =C2=A0Permission watch_reads in =
class dir not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.297197] SELinux: =C2=A0Permission watch in class =
lnk_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.304506] SELinux: =C2=A0Permission watch_mount in =
class lnk_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.312346] SELinux: =C2=A0Permission watch_sb in cla=
ss lnk_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.319917] SELinux: =C2=A0Permission watch_with_perm=
 in class lnk_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.328103] SELinux: =C2=A0Permission watch_reads in =
class lnk_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.335945] SELinux: =C2=A0Permission watch in class =
chr_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.343263] SELinux: =C2=A0Permission watch_mount in =
class chr_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.351094] SELinux: =C2=A0Permission watch_sb in cla=
ss chr_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.358673] SELinux: =C2=A0Permission watch_with_perm=
 in class chr_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.366851] SELinux: =C2=A0Permission watch_reads in =
class chr_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.374700] SELinux: =C2=A0Permission watch in class =
blk_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.382010] SELinux: =C2=A0Permission watch_mount in =
class blk_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.389849] SELinux: =C2=A0Permission watch_sb in cla=
ss blk_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.397420] SELinux: =C2=A0Permission watch_with_perm=
 in class blk_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.405604] SELinux: =C2=A0Permission watch_reads in =
class blk_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.413442] SELinux: =C2=A0Permission watch in class =
sock_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.420848] SELinux: =C2=A0Permission watch_mount in =
class sock_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.428765] SELinux: =C2=A0Permission watch_sb in cla=
ss sock_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.436432] SELinux: =C2=A0Permission watch_with_perm=
 in class sock_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.444697] SELinux: =C2=A0Permission watch_reads in =
class sock_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.452629] SELinux: =C2=A0Permission watch in class =
fifo_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.460026] SELinux: =C2=A0Permission watch_mount in =
class fifo_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.467952] SELinux: =C2=A0Permission watch_sb in cla=
ss fifo_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.475609] SELinux: =C2=A0Permission watch_with_perm=
 in class fifo_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.483883] SELinux: =C2=A0Permission watch_reads in =
class fifo_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.492124] SELinux: the above unknown classes and pe=
rmissions will be allowed
<br>[ =C2=A0=C2=A0=C2=A02.499365] SELinux: =C2=A0policy capability network_=
peer_controls=3D1
<br>[ =C2=A0=C2=A0=C2=A02.505286] SELinux: =C2=A0policy capability open_per=
ms=3D1
<br>[ =C2=A0=C2=A0=C2=A02.510257] SELinux: =C2=A0policy capability extended=
_socket_class=3D1
<br>[ =C2=A0=C2=A0=C2=A02.516178] SELinux: =C2=A0policy capability always_c=
heck_network=3D0
<br>[ =C2=A0=C2=A0=C2=A02.522020] SELinux: =C2=A0policy capability cgroup_s=
eclabel=3D1
<br>[ =C2=A0=C2=A0=C2=A02.527419] SELinux: =C2=A0policy capability nnp_nosu=
id_transition=3D1
<br>[ =C2=A0=C2=A0=C2=A02.568189] audit: type=3D1403 audit(1621278991.128:2=
): auid=3D4294967295 ses=3D4294967295 lsm=3Dselinux res=3D1
<br>[ =C2=A0=C2=A0=C2=A02.575086] systemd[1]: Successfully loaded SELinux p=
olicy in 470.187ms.
<br>[ =C2=A0=C2=A0=C2=A02.679441] systemd[1]: Relabelled /dev, /dev/shm, /r=
un, /sys/fs/cgroup in 67.430ms.
<br>[ =C2=A0=C2=A0=C2=A02.698739] systemd[1]: systemd 244.5+ running in sys=
tem mode.=20
(+PAM +AUDIT +SELINUX +IMA -APPARMOR -SMACK +SYSVINIT +UTMP=20
-LIBCRYPTSETUP -GCRYPT -GNUTLS +ACL +XZ -LZ4 -SECCOMP +BLKID -ELFUTILS=20
+KMOD -IDN2 -IDN -PCRE2 default-hierarchy=3Dhybrid)
<br>[ =C2=A0=C2=A0=C2=A02.720751] systemd[1]: Detected architecture arm64.
<br>
<br>Welcome to <span style=3D"font-weight:bold;color:rgb(0,0,0);background-=
color:rgb(255,255,255)">Poky (Yocto Project Reference Distro) 3.1.7 (dunfel=
l)</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)"=
>!
</span><br>
<br>[ =C2=A0=C2=A0=C2=A02.770395] systemd[1]: Set hostname to &lt;imx8mmevk=
&gt;.
<br>[ =C2=A0=C2=A0=C2=A02.987359] random: systemd: uninitialized urandom re=
ad (16 bytes read)
<br>[ =C2=A0=C2=A0=C2=A02.994151] systemd[1]: system-getty.slice: unit conf=
igures an IP
 firewall, but the local system does not support BPF/cgroup firewalling.
<br>[ =C2=A0=C2=A0=C2=A03.006508] systemd[1]: (This warning is only shown f=
or the first unit using IP firewalling.)
<br>[ =C2=A0=C2=A0=C2=A03.017228] systemd[1]: Created slice system-getty.sl=
ice.
<br>[ =C2=A0OK =C2=A0] Created slice <span style=3D"font-weight:bold;color:=
rgb(0,0,0);background-color:rgb(255,255,255)">system-getty.slice</span><spa=
n style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.041142] random: systemd: uninitialized ura=
ndom read (16 bytes read)
<br>[ =C2=A0=C2=A0=C2=A03.049106] systemd[1]: Created slice system-serial\x=
2dgetty.slice.
<br>[ =C2=A0OK =C2=A0] Created slice <span style=3D"font-weight:bold;color:=
rgb(0,0,0);background-color:rgb(255,255,255)">system-serial\x2dgetty.slice<=
/span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.073967] random: systemd: uninitialized ura=
ndom read (16 bytes read)
<br>[ =C2=A0=C2=A0=C2=A03.081927] systemd[1]: Created slice User and Sessio=
n Slice.
<br>[ =C2=A0OK =C2=A0] Created slice <span style=3D"font-weight:bold;color:=
rgb(0,0,0);background-color:rgb(255,255,255)">User and Session Slice</span>=
<span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.105772] systemd[1]: Started Dispatch Passw=
ord Requests to Console Directory Watch.
<br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color:rgb(0,=
0,0);background-color:rgb(255,255,255)">Dispatch Password =EF=BF=BD=EF=BF=
=BD=E2=80=A6ts to Console Directory Watch</span><span style=3D"color:rgb(0,=
0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.129703] systemd[1]: Started Forward Passwo=
rd Requests to Wall Directory Watch.
<br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color:rgb(0,=
0,0);background-color:rgb(255,255,255)">Forward Password R=EF=BF=BD=EF=BF=
=BD=E2=80=A6uests to Wall Directory Watch</span><span style=3D"color:rgb(0,=
0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.153228] systemd[1]: Reached target Paths.
<br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Paths</span><span style=3D"c=
olor:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.173117] systemd[1]: Reached target Remote =
File Systems.
<br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Remote File Systems</span><s=
pan style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.197804] systemd[1]: Reached target Slices.
<br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Slices</span><span style=3D"=
color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.218106] systemd[1]: Reached target Swap.
<br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Swap</span><span style=3D"co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.243169] systemd[1]: Listening on RPCbind S=
erver Activation Socket.
<br>[ =C2=A0OK =C2=A0] Listening on <span style=3D"font-weight:bold;color:r=
gb(0,0,0);background-color:rgb(255,255,255)">RPCbind Server Activation Sock=
et</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)"=
>.
</span><br>[ =C2=A0=C2=A0=C2=A03.265157] systemd[1]: Reached target RPC Por=
t Mapper.
<br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">RPC Port Mapper</span><span =
style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.290401] systemd[1]: Listening on Syslog So=
cket.
<br>[ =C2=A0OK =C2=A0] Listening on <span style=3D"font-weight:bold;color:r=
gb(0,0,0);background-color:rgb(255,255,255)">Syslog Socket</span><span styl=
e=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.310084] systemd[1]: Listening on initctl C=
ompatibility Named Pipe.
<br>[ =C2=A0OK =C2=A0] Listening on <span style=3D"font-weight:bold;color:r=
gb(0,0,0);background-color:rgb(255,255,255)">initctl Compatibility Named Pi=
pe</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)"=
>.
</span><br>[ =C2=A0=C2=A0=C2=A03.335182] systemd[1]: Listening on Journal A=
udit Socket.
<br>[ =C2=A0=C2=A0=C2=A03.335316] audit: type=3D1400 audit(1621278991.896:3=
): avc:=20
=C2=A0denied =C2=A0{ audit_read } for =C2=A0pid=3D1 comm=3D&quot;systemd&qu=
ot; capability=3D37=20
=C2=A0scontext=3Dsystem_u:system_r:kernel_t:s0 tcontext=3Dsystem_u:system_r=
:kernel_t:s0 tclass=3Dcapability2 permissive=3D1
<br>[ =C2=A0OK =C2=A0] Listening on <span style=3D"font-weight:bold;color:r=
gb(0,0,0);background-color:rgb(255,255,255)">Journal Audit Socket</span><sp=
an style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.377935] systemd[1]: Listening on Journal S=
ocket (/dev/log).
<br>[ =C2=A0OK =C2=A0] Listening on <span style=3D"font-weight:bold;color:r=
gb(0,0,0);background-color:rgb(255,255,255)">Journal Socket (/dev/log)</spa=
n><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.402765] systemd[1]: Listening on Journal S=
ocket.
<br>[ =C2=A0OK =C2=A0] Listening on <span style=3D"font-weight:bold;color:r=
gb(0,0,0);background-color:rgb(255,255,255)">Journal Socket</span><span sty=
le=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.421967] systemd[1]: Listening on Network S=
ervice Netlink Socket.
<br>[ =C2=A0OK =C2=A0] Listening on <span style=3D"font-weight:bold;color:r=
gb(0,0,0);background-color:rgb(255,255,255)">Network Service Netlink Socket=
</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.447923] systemd[1]: Listening on udev Cont=
rol Socket.
<br>[ =C2=A0OK =C2=A0] Listening on <span style=3D"font-weight:bold;color:r=
gb(0,0,0);background-color:rgb(255,255,255)">udev Control Socket</span><spa=
n style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.469692] systemd[1]: Listening on udev Kern=
el Socket.
<br>[ =C2=A0OK =C2=A0] Listening on <span style=3D"font-weight:bold;color:r=
gb(0,0,0);background-color:rgb(255,255,255)">udev Kernel Socket</span><span=
 style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.497585] systemd[1]: Mounting Huge Pages Fi=
le System...
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Mounting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">Hu=
ge Pages File System</span><span style=3D"color:rgb(0,0,0);background-color=
:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A03.521067] systemd[1]: Mounting POSIX Message=
 Queue File System...
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Mounting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">PO=
SIX Message Queue File System</span><span style=3D"color:rgb(0,0,0);backgro=
und-color:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A03.549444] systemd[1]: Mounting Kernel Debug =
File System...
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Mounting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">Ke=
rnel Debug File System</span><span style=3D"color:rgb(0,0,0);background-col=
or:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A03.574370] systemd[1]: Mounting Temporary Dir=
ectory (/tmp)...
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Mounting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">Te=
mporary Directory (/tmp)</span><span style=3D"color:rgb(0,0,0);background-c=
olor:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A03.598671] systemd[1]: Starting Create list o=
f static device nodes for the current kernel...
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">Cr=
eate list of st=EF=BF=BD=EF=BF=BD=E2=80=A6odes for the current kernel</span=
><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A03.629139] systemd[1]: Starting Start psplash=
 boot splash screen...
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">St=
art psplash boot splash screen</span><span style=3D"color:rgb(0,0,0);backgr=
ound-color:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A03.657433] systemd[1]: Starting RPC Bind...
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">RP=
C Bind</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,2=
55)">...
</span><br>[ =C2=A0=C2=A0=C2=A03.676514] systemd[1]: Starting SELinux autor=
elabel service loading...
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">SE=
Linux autorelabel service loading</span><span style=3D"color:rgb(0,0,0);bac=
kground-color:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A03.701187] systemd[1]: Starting SELinux init =
for /dev service loading...
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">SE=
Linux init for /dev service loading</span><span style=3D"color:rgb(0,0,0);b=
ackground-color:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A03.728480] systemd[1]: Starting File System C=
heck on Root Device...
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">Fi=
le System Check on Root Device</span><span style=3D"color:rgb(0,0,0);backgr=
ound-color:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A03.753988] systemd[1]: Starting Journal Servi=
ce...
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">Jo=
urna[ =C2=A0=C2=A0=C2=A03.761266] systemd[1]: Condition check resulted in L=
oad Kernel Modules being skipped.</span><span style=3D"color:rgb(0,0,0);bac=
kground-color:rgb(255,255,255)">
</span><br><span style=3D"font-weight:bold;color:rgb(0,0,0);background-colo=
r:rgb(255,255,255)">l Service</span><span style=3D"color:rgb(0,0,0);backgro=
und-color:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A03.770534] systemd[1]: Condition check result=
ed in FUSE Control File System being skipped.
<br>[ =C2=A0=C2=A0=C2=A03.784068] systemd[1]: Mounting Kernel Configuration=
 File System...
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Mounting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">Ke=
rnel Configuration File System</span><span style=3D"color:rgb(0,0,0);backgr=
ound-color:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A03.808753] systemd[1]: Starting Apply Kernel =
Variables...
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">Ap=
ply Kernel Variables</span><span style=3D"color:rgb(0,0,0);background-color=
:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A03.832946] systemd[1]: Starting udev Coldplug=
 all Devices...
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">ud=
ev Coldplug all Devices</span><span style=3D"color:rgb(0,0,0);background-co=
lor:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A03.861756] systemd[1]: Started RPC Bind.
<br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color:rgb(0,=
0,0);background-color:rgb(255,255,255)">RPC Bind</span><span style=3D"color=
:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.886210] audit: type=3D1130 audit(162127899=
2.448:4):=20
pid=3D1 uid=3D0 auid=3D4294967295 ses=3D4294967295=20
subj=3Dsystem_u:system_r:kernel_t:s0 msg=3D&#39;unit=3Drpcbind comm=3D&quot=
;systemd&quot; exe=3D&quot;/lib/systemd/systemd&quot; hostname=3D? addr=3D?=
 terminal=3D? res=3Dsuccess&#39;
<br>[ =C2=A0=C2=A0=C2=A03.886241] systemd[1]: Started Journal Service.
<br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color:rgb(0,=
0,0);background-color:rgb(255,255,255)">Journal Service</span><span style=
=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.930060] audit: type=3D1130 audit(162127899=
2.492:5):=20
pid=3D1 uid=3D0 auid=3D4294967295 ses=3D4294967295=20
subj=3Dsystem_u:system_r:kernel_t:s0 msg=3D&#39;unit=3Dsystemd-journald com=
m=3D&quot;systemd&quot; exe=3D&quot;/lib/systemd/systemd&quot; hostname=3D?=
 addr=3D? terminal=3D? res=3Dsuccess&#39;
<br>[ =C2=A0OK =C2=A0] Mounted <span style=3D"font-weight:bold;color:rgb(0,=
0,0);background-color:rgb(255,255,255)">Huge Pages File System</span><span =
style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Mounted <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">POSIX Message Queue File Sys=
tem</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)=
">.
</span><br>[ =C2=A0OK =C2=A0] Mounted <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Kernel Debug File System</sp=
an><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Mounted <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Temporary Directory (/tmp)</=
span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Create list of sta=EF=BF=BD=
=EF=BF=BD=E2=80=A6 nodes for the current kernel</span><span style=3D"color:=
rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A04.037555] audit: type=3D1130 audit(162127899=
2.600:6):=20
pid=3D1 uid=3D0 auid=3D4294967295 ses=3D4294967295=20
subj=3Dsystem_u:system_r:kernel_t:s0 msg=3D&#39;unit=3Dkmod-static-nodes co=
mm=3D&quot;systemd&quot; exe=3D&quot;/lib/systemd/systemd&quot; hostname=3D=
? addr=3D? terminal=3D? res=3Dsuccess&#39;
<br>[<span style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(=
255,255,255)">FAILED</span><span style=3D"color:rgb(0,0,0);background-color=
:rgb(255,255,255)">] Failed to start </span><span style=3D"font-weight:bold=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">Start psplash boot spl=
ash screen</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,2=
55,255)">.
</span><br>See &#39;systemctl status psplash-start.service&#39; for details=
.
<br>[<span style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(=
255,255,255)">DEPEND</span><span style=3D"color:rgb(0,0,0);background-color=
:rgb(255,255,255)">] Dependency failed for </span><span style=3D"font-weigh=
t:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">Star=EF=BF=BD=EF=
=BF=BD=E2=80=A6progress communication helper</span><span style=3D"color:rgb=
(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A04.110569] audit: type=3D1130 audit(162127899=
2.672:7):=20
pid=3D1 uid=3D0 auid=3D4294967295 ses=3D4294967295=20
subj=3Dsystem_u:system_r:kernel_t:s0 msg=3D&#39;unit=3Dpsplash-start comm=
=3D&quot;systemd&quot; exe=3D&quot;/lib/systemd/systemd&quot; hostname=3D? =
addr=3D? terminal=3D? res=3Dfailed&#39;
<br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color:rgb(0,=
0,0);background-color:rgb(255,255,255)">SELinux autorelabel service loading=
</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A04.145488] audit: type=3D1130 audit(162127899=
2.708:8):=20
pid=3D1 uid=3D0 auid=3D4294967295 ses=3D4294967295=20
subj=3Dsystem_u:system_r:kernel_t:s0 msg=3D&#39;unit=3Dselinux-autorelabel =
comm=3D&quot;systemd&quot; exe=3D&quot;/lib/systemd/systemd&quot; hostname=
=3D? addr=3D? terminal=3D? res=3Dsuccess&#39;
<br>[ =C2=A0=C2=A0=C2=A04.167276] audit: type=3D1131 audit(1621278992.708:9=
): pid=3D1 uid=3D0
 auid=3D4294967295 ses=3D4294967295 subj=3Dsystem_u:system_r:kernel_t:s0 ms=
g=3D&#39;unit=3Dselinux-autorelabel comm=3D&quot;systemd&quot; exe=3D&quot;=
/lib/systemd/systemd&quot; hostname=3D? addr=3D? terminal=3D? res=3Dsuccess=
&#39;
<br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color:rgb(0,=
0,0);background-color:rgb(255,255,255)">SELinux init for /dev service loadi=
ng</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)"=
>.
</span><br>[ =C2=A0=C2=A0=C2=A04.205515] audit: type=3D1130 audit(162127899=
2.768:10):=20
pid=3D1 uid=3D0 auid=3D4294967295 ses=3D4294967295=20
subj=3Dsystem_u:system_r:kernel_t:s0 msg=3D&#39;unit=3Dselinux-labeldev com=
m=3D&quot;systemd&quot; exe=3D&quot;/lib/systemd/systemd&quot; hostname=3D?=
 addr=3D? terminal=3D? res=3Dsuccess&#39;
<br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color:rgb(0,=
0,0);background-color:rgb(255,255,255)">File System Check on Root Device</s=
pan><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Mounted <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Kernel Configuration File Sy=
stem</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255=
)">.
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Apply Kernel Variables</span=
><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Remount Root and Kernel File Systems</span><span style=3D"color:rgb(0,0,=
0);background-color:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A04.302025] EXT4-fs (mmcblk2p2): re-mounted. O=
pts: (null)
<br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color:rgb(0,=
0,0);background-color:rgb(255,255,255)">Remount Root and Kernel File System=
s</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">=
.
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Flush Journal to Persistent Storage</span><span style=3D"color:rgb(0,0,0=
);background-color:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A04.346937] systemd-journald[288]: Received cl=
ient request to flush runtime journal.
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">Cr=
eate Static Device Nodes in /dev</span><span style=3D"color:rgb(0,0,0);back=
ground-color:rgb(255,255,255)">...
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Flush Journal to Persistent =
Storage</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,=
255)">.
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Create Static Device Nodes i=
n /dev</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,2=
55)">.
</span><br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bol=
d;color:rgb(0,0,0);background-color:rgb(255,255,255)">Local File Systems (P=
re)</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)=
">.
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Mounting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">/var/volatile</span><span style=3D"color:rgb(0,0,0);background-color:rgb=
(255,255,255)">...
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">udev Kernel Device Manager</span><span style=3D"color:rgb(0,0,0);backgro=
und-color:rgb(255,255,255)">...
</span><br>[ =C2=A0OK =C2=A0] Mounted <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">/var/volatile</span><span st=
yle=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">udev Coldplug all Devices</s=
pan><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Load/Save Random Seed</span><span style=3D"color:rgb(0,0,0);background-c=
olor:rgb(255,255,255)">...
</span><br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bol=
d;color:rgb(0,0,0);background-color:rgb(255,255,255)">Local File Systems</s=
pan><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">SELinux init service loading</span><span style=3D"color:rgb(0,0,0);backg=
round-color:rgb(255,255,255)">...
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Create Volatile Files and Directories</span><span style=3D"color:rgb(0,0=
,0);background-color:rgb(255,255,255)">...
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">udev Kernel Device Manager</=
span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">SELinux init service loading=
</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Network Service</span><span style=3D"color:rgb(0,0,0);background-color:r=
gb(255,255,255)">...
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Create Volatile Files and Di=
rectories</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,25=
5,255)">.
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Network Time Synchronization</span><span style=3D"color:rgb(0,0,0);backg=
round-color:rgb(255,255,255)">...
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Update UTMP about System Boot/Shutdown</span><span style=3D"color:rgb(0,=
0,0);background-color:rgb(255,255,255)">...
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Network Service</span><span =
style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Network Name Resolution</span><span style=3D"color:rgb(0,0,0);background=
-color:rgb(255,255,255)">...
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Update UTMP about System Boo=
t/Shutdown</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,2=
55,255)">.
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Network Time Synchronization=
</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bol=
d;color:rgb(0,0,0);background-color:rgb(255,255,255)">System Initialization=
</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Daily Cleanup of Temporary D=
irectories</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,2=
55,255)">.
</span><br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bol=
d;color:rgb(0,0,0);background-color:rgb(255,255,255)">System Time Set</span=
><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bol=
d;color:rgb(0,0,0);background-color:rgb(255,255,255)">System Time Synchroni=
zed</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)=
">.
</span><br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bol=
d;color:rgb(0,0,0);background-color:rgb(255,255,255)">Timers</span><span st=
yle=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Listening on <span style=3D"font-weight:bold;=
color:rgb(0,0,0);background-color:rgb(255,255,255)">Avahi mDNS/DNS-SD Stack=
 Activation Socket</span><span style=3D"color:rgb(0,0,0);background-color:r=
gb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Listening on <span style=3D"font-weight:bold;=
color:rgb(0,0,0);background-color:rgb(255,255,255)">D-Bus System Message Bu=
s Socket</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255=
,255)">.
</span><br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bol=
d;color:rgb(0,0,0);background-color:rgb(255,255,255)">Sockets</span><span s=
tyle=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bol=
d;color:rgb(0,0,0);background-color:rgb(255,255,255)">Basic System</span><s=
pan style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Kernel Logging Service</span=
><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">System Logging Service</span=
><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">D-Bus System Message Bus</sp=
an><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Login Service</span><span style=3D"color:rgb(0,0,0);background-color:rgb=
(255,255,255)">...
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Network Name Resolution</spa=
n><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A05.194342] Generic PHY fixed-0:00: attached P=
HY driver [Generic PHY] (mii_bus:phy_addr=3Dfixed-0:00, irq=3DPOLL)
<br>[ =C2=A0=C2=A0=C2=A05.205098] fec 30be0000.ethernet eth0: Link is Up - =
1Gbps/Full - flow control off
<br>[ =C2=A0=C2=A0=C2=A05.225428] IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link=
 becomes ready
<br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Network</span><span style=3D=
"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bol=
d;color:rgb(0,0,0);background-color:rgb(255,255,255)">Host and Network Name=
 Lookups</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255=
,255)">.
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Avahi mDNS/DNS-SD Stack</span><span style=3D"color:rgb(0,0,0);background=
-color:rgb(255,255,255)">...
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Permit User Sessions</span><span style=3D"color:rgb(0,0,0);background-co=
lor:rgb(255,255,255)">...
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Permit User Sessions</span><=
span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A05.418209] kauditd_printk_skb: 20 callbacks s=
uppressed
<br>[ =C2=A0=C2=A0=C2=A05.418216] audit: type=3D1130 audit(1621278993.980:3=
1): pid=3D1=20
uid=3D0 auid=3D4294967295 ses=3D4294967295 subj=3Dsystem_u:system_r:kernel_=
t:s0 msg=3D&#39;unit=3Dsystemd-user-sessions comm=3D&quot;systemd&quot; exe=
=3D&quot;/lib/systemd/systemd&quot; hostname=3D? addr=3D? terminal=3D? res=
=3Dsuccess&#39;
<br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color:rgb(0,=
0,0);background-color:rgb(255,255,255)">Login Service</span><span style=3D"=
color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A05.477678] audit: type=3D1130 audit(162127899=
4.040:32):=20
pid=3D1 uid=3D0 auid=3D4294967295 ses=3D4294967295=20
subj=3Dsystem_u:system_r:kernel_t:s0 msg=3D&#39;unit=3Dsystemd-logind comm=
=3D&quot;systemd&quot; exe=3D&quot;/lib/systemd/systemd&quot; hostname=3D? =
addr=3D? terminal=3D? res=3Dsuccess&#39;
<br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color:rgb(0,=
0,0);background-color:rgb(255,255,255)">Avahi mDNS/DNS-SD Stack</span><span=
 style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A05.517984] audit: type=3D1130 audit(162127899=
4.080:33):=20
pid=3D1 uid=3D0 auid=3D4294967295 ses=3D4294967295=20
subj=3Dsystem_u:system_r:kernel_t:s0 msg=3D&#39;unit=3Davahi-daemon comm=3D=
&quot;systemd&quot; exe=3D&quot;/lib/systemd/systemd&quot; hostname=3D? add=
r=3D? terminal=3D? res=3Dsuccess&#39;
<br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color:rgb(0,=
0,0);background-color:rgb(255,255,255)">Getty on tty1</span><span style=3D"=
color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A05.558400] audit: type=3D1130 audit(162127899=
4.120:34):=20
pid=3D1 uid=3D0 auid=3D4294967295 ses=3D4294967295=20
subj=3Dsystem_u:system_r:kernel_t:s0 msg=3D&#39;unit=3Dgetty@tty1 comm=3D&q=
uot;systemd&quot; exe=3D&quot;/lib/systemd/systemd&quot; hostname=3D? addr=
=3D? terminal=3D? res=3Dsuccess&#39;
<br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color:rgb(0,=
0,0);background-color:rgb(255,255,255)">Serial Getty on ttymxc1</span><span=
 style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A05.598228] audit: type=3D1130 audit(162127899=
4.160:35):=20
pid=3D1 uid=3D0 auid=3D4294967295 ses=3D4294967295=20
subj=3Dsystem_u:system_r:kernel_t:s0 msg=3D&#39;unit=3Dserial-getty@ttymxc1=
 comm=3D&quot;systemd&quot; exe=3D&quot;/lib/systemd/systemd&quot; hostname=
=3D? addr=3D? terminal=3D? res=3Dsuccess&#39;
<br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Login Prompts</span><span st=
yle=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bol=
d;color:rgb(0,0,0);background-color:rgb(255,255,255)">Multi-User System</sp=
an><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Update UTMP about System Runlevel Changes</span><span style=3D"color:rgb=
(0,0,0);background-color:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A05.682230] audit: type=3D1107 audit(162127899=
4.244:36):=20
pid=3D1 uid=3D0 auid=3D4294967295 ses=3D4294967295=20
subj=3Dsystem_u:system_r:kernel_t:s0 msg=3D&#39;avc: =C2=A0denied =C2=A0{ s=
tatus } for auid=3Dn/a uid=3D0 gid=3D0 path=3D&quot;/lib/systemd/system/gra=
phical.target&quot; cmdline=3D&quot;&quot; scontext=3D1
<br>[ =C2=A0=C2=A0=C2=A05.682230] =C2=A0exe=3D&quot;/lib/systemd/systemd&qu=
ot; sauid=3D0 hostname=3D? addr=3D? terminal=3D?&#39;
<br>[ =C2=A0=C2=A0=C2=A05.720334] audit: type=3D1129 audit(1621278994.244:3=
7): pid=3D359=20
uid=3D0 auid=3D4294967295 ses=3D4294967295 subj=3Dsystem_u:system_r:kernel_=
t:s0 msg=3D&#39;old-level=3DN new-level=3D3 comm=3D&quot;systemd-update-utm=
p&quot; exe=3D&quot;/lib/systemd/systemd-update-utmp&quot; hostname=3D? add=
r=3D? term&#39;
<br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color:rgb(0,=
0,0);background-color:rgb(255,255,255)">Update UTMP about System Runlevel C=
hanges</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,2=
55)">.
</span><br>[ =C2=A0=C2=A0=C2=A05.762053] audit: type=3D1130 audit(162127899=
4.324:38):=20
pid=3D1 uid=3D0 auid=3D4294967295 ses=3D4294967295=20
subj=3Dsystem_u:system_r:kernel_t:s0 msg=3D&#39;unit=3Dsystemd-update-utmp-=
runlevel comm=3D&quot;systemd&quot; exe=3D&quot;/lib/systemd/systemd&quot; =
hostname=3D? addr=3D? terminal=3D? res=3Dsucce&#39;
<br>[ =C2=A0=C2=A0=C2=A05.784757] audit: type=3D1131 audit(1621278994.324:3=
9): pid=3D1=20
uid=3D0 auid=3D4294967295 ses=3D4294967295 subj=3Dsystem_u:system_r:kernel_=
t:s0 msg=3D&#39;unit=3Dsystemd-update-utmp-runlevel comm=3D&quot;systemd&qu=
ot; exe=3D&quot;/lib/systemd/systemd&quot; hostname=3D? addr=3D? terminal=
=3D? res=3Dsucce&#39;
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">Ho=
stname Service</span><span style=3D"color:rgb(0,0,0);background-color:rgb(2=
55,255,255)">...
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Hostname Service</span><span=
 style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A08.533683] audit: type=3D1130 audit(162127899=
7.096:40):=20
pid=3D1 uid=3D0 auid=3D4294967295 ses=3D4294967295=20
subj=3Dsystem_u:system_r:kernel_t:s0 msg=3D&#39;unit=3Dsystemd-hostnamed co=
mm=3D&quot;systemd&quot; exe=3D&quot;/lib/systemd/systemd&quot; hostname=3D=
? addr=3D? terminal=3D? res=3Dsuccess&#39;
<br>[ =C2=A0=C2=A010.816995] random: crng init done
<br>[ =C2=A0=C2=A010.820400] random: 7 urandom warning(s) missed due to rat=
elimiting
<br>[ =C2=A0=C2=A010.835345] audit: type=3D1130 audit(1621278999.396:41): p=
id=3D1=20
uid=3D0 auid=3D4294967295 ses=3D4294967295 subj=3Dsystem_u:system_r:kernel_=
t:s0 msg=3D&#39;unit=3Dsystemd-random-seed comm=3D&quot;systemd&quot; exe=
=3D&quot;/lib/systemd/systemd&quot; hostname=3D? addr=3D? terminal=3D? res=
=3Dsuccess&#39;
<br>
<br>Poky (Yocto Project Reference Distro) 3.1.7 imx8mmevk ttymxc1
<br>
<br>imx8mmevk login: [ =C2=A0=C2=A033.841713] WLAN_EN: disabling
<br>[ =C2=A0=C2=A033.844776] VSD_3V3: disabling
<br>[ =C2=A0=C2=A038.535696] audit: type=3D1131 audit(1621279026.463:42): p=
id=3D1=20
uid=3D0 auid=3D4294967295 ses=3D4294967295 subj=3Dsystem_u:system_r:kernel_=
t:s0 msg=3D&#39;unit=3Dsystemd-hostnamed comm=3D&quot;systemd&quot; exe=3D&=
quot;/lib/systemd/systemd&quot; hostname=3D? addr=3D? terminal=3D? res=3Dsu=
ccess&#39;
<br>[ =C2=A0=C2=A062.514167] cfg80211: failed to load regulatory.db
<br>[ =C2=A0=C2=A062.514409] imx-sdma 302c0000.dma-controller: external fir=
mware not found, using ROM firmware
<br>[ =C2=A0=C2=A062.517520] imx-sdma 302b0000.dma-controller: external fir=
mware not found, using ROM firmware
<br>[ =C2=A0=C2=A062.538156] imx-sdma 30bd0000.dma-controller: loaded firmw=
are 4.5
<br>
<br>imx8mmevk login: root
<br>[ =C2=A0=C2=A080.318463] audit: type=3D1107 audit(1621279068.247:43): p=
id=3D1=20
uid=3D0 auid=3D4294967295 ses=3D4294967295 subj=3Dsystem_u:system_r:kernel_=
t:s0 msg=3D&#39;avc: =C2=A0denied =C2=A0{ start } for auid=3Dn/a uid=3D0 gi=
d=3D0 path=3D&quot;/lib/systemd/system/user@.service&quot; cmdline=3D&quot;=
/lib/systemd/sy1
<br>[ =C2=A0=C2=A080.318463] =C2=A0exe=3D&quot;/lib/systemd/systemd&quot; s=
auid=3D0 hostname=3D? addr=3D? terminal=3D?&#39;
<br>[ =C2=A0=C2=A080.358706] audit: type=3D1107 audit(1621279068.267:44): p=
id=3D1=20
uid=3D0 auid=3D4294967295 ses=3D4294967295 subj=3Dsystem_u:system_r:kernel_=
t:s0 msg=3D&#39;avc: =C2=A0denied =C2=A0{ start } for auid=3Dn/a uid=3D0 gi=
d=3D0 path=3D&quot;/run/systemd/transient/session-c1.scope&quot; cmdline=3D=
&quot;/lib/syst1
<br>[ =C2=A0=C2=A080.358706] =C2=A0exe=3D&quot;/lib/systemd/systemd&quot; s=
auid=3D0 hostname=3D? addr=3D? terminal=3D?&#39;
<br>[ =C2=A0=C2=A080.399667] audit: type=3D1130 audit(1621279068.291:45): p=
id=3D1=20
uid=3D0 auid=3D4294967295 ses=3D4294967295 subj=3Dsystem_u:system_r:kernel_=
t:s0 msg=3D&#39;unit=3Duser-runtime-dir@0 comm=3D&quot;systemd&quot; exe=3D=
&quot;/lib/systemd/systemd&quot; hostname=3D? addr=3D? terminal=3D? res=3Ds=
uccess&#39;
<br>[ =C2=A0=C2=A080.431254] audit: type=3D1006 audit(1621279068.359:46): p=
id=3D377 uid=3D0 subj=3Dsystem_u:system_r:kernel_t:s0 old-auid=3D4294967295=
 auid=3D0 tty=3D(none) old-ses=3D4294967295 ses=3D1 res=3D1
<br>[ =C2=A0=C2=A080.446730] audit: type=3D1400 audit(1621279068.363:47): a=
vc:=20
=C2=A0denied =C2=A0{ transition } for =C2=A0pid=3D377 comm=3D&quot;(systemd=
)&quot;=20
path=3D&quot;/lib/systemd/systemd&quot; dev=3D&quot;mmcblk2p2&quot; ino=3D1=
477=20
scontext=3Dsystem_u:system_r:kernel_t:s0 tcontext=3Droot:sysadm_r:sysadm_t:=
s0 tclass=3Dproc1
<br>[ =C2=A0=C2=A080.470544] audit: type=3D1400 audit(1621279068.363:47): a=
vc:=20
=C2=A0denied =C2=A0{ entrypoint } for =C2=A0pid=3D377 comm=3D&quot;(systemd=
)&quot;=20
path=3D&quot;/lib/systemd/systemd&quot; dev=3D&quot;mmcblk2p2&quot; ino=3D1=
477=20
scontext=3Droot:sysadm_r:sysadm_t:s0 tcontext=3Dsystem_u:object_r:unlabeled=
_t:s0 tclass=3Df1
<br>[ =C2=A0=C2=A080.494335] audit: type=3D1400 audit(1621279068.363:47): a=
vc:=20
=C2=A0denied =C2=A0{ use } for =C2=A0pid=3D377 comm=3D&quot;systemd&quot; p=
ath=3D&quot;/dev/null&quot;=20
dev=3D&quot;devtmpfs&quot; ino=3D3079 scontext=3Droot:sysadm_r:sysadm_t:s0 =
tcontext=3Dsystem_u:system_r:kernel_t:s0 tclass=3Dfd permissive=3D1
<br>[ =C2=A0=C2=A080.515865] audit: type=3D1400 audit(1621279068.363:47): a=
vc:=20
=C2=A0denied =C2=A0{ read write } for =C2=A0pid=3D377 comm=3D&quot;systemd&=
quot; path=3D&quot;socket:[9797]&quot;
 dev=3D&quot;sockfs&quot; ino=3D9797 scontext=3Droot:sysadm_r:sysadm_t:s0 t=
context=3Dsystem_u:system_r:kernel_t:s0 tclass=3Dunix_stream_sock1
<br>[ =C2=A0=C2=A080.539544] audit: type=3D1400 audit(1621279068.363:47): a=
vc:=20
=C2=A0denied =C2=A0{ execute } for =C2=A0pid=3D377 comm=3D&quot;systemd&quo=
t;=20
path=3D&quot;/lib/systemd/systemd&quot; dev=3D&quot;mmcblk2p2&quot; ino=3D1=
477=20
scontext=3Droot:sysadm_r:sysadm_t:s0 tcontext=3Dsystem_u:object_r:unlabeled=
_t:s0 tclass=3Dfile p1
<br>[ =C2=A0=C2=A080.562865] audit: type=3D1400 audit(1621279068.379:48): a=
vc:=20
=C2=A0denied =C2=A0{ ioctl } for =C2=A0pid=3D377 comm=3D&quot;systemd&quot;=
 path=3D&quot;socket:[9797]&quot;=20
dev=3D&quot;sockfs&quot; ino=3D9797 ioctlcmd=3D0x5401 scontext=3Droot:sysad=
m_r:sysadm_t:s0 tcontext=3Dsystem_u:system_r:kernel_t:s0 tclass=3Dunix_1
<br>~ # sestatus
<br>SELinux status: =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0enabled
<br>SELinuxfs mount: =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/sys/fs/selinux
<br>SELinux root directory: =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0/etc/selinux
<br>Loaded policy name: =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0mcs
<br>Current mode: =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0permissive
<br>Mode from config file: =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0enforcing
<br>Policy MLS status: =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0enabled
<br>Policy deny_unknown status: =C2=A0=C2=A0=C2=A0=C2=A0allowed
<br>Memory protection checking: =C2=A0=C2=A0=C2=A0=C2=A0requested (insecure=
)
<br>Max kernel policy version: =C2=A0=C2=A0=C2=A0=C2=A0=C2=A031
<br>~ #</span></span></div></div></div>

--000000000000c0f49105c28bb826--
