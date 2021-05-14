Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.3310.1620956468110974554
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 May 2021 18:41:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Dvhrz8it;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: b.hutchman@gmail.com)
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	by mail.yoctoproject.org (Postfix) with ESMTPS id D78C438C0559
	for <yocto@yoctoproject.org>; Fri, 14 May 2021 01:41:06 +0000 (UTC)
Received: by mail-pg1-f181.google.com with SMTP id j12so16870218pgh.7
        for <yocto@yoctoproject.org>; Thu, 13 May 2021 18:41:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=tF5eyAwycV5x1kMIrQR4KDatA/tZUM1YeVPTKE0kKKY=;
        b=Dvhrz8ito23kr82UXX6YQXGDNsCkg6ByL6odQp3WlPIn5dIQyVcqfcn+LX1u0I2qHF
         mzjmw2dbiFqYWHb5gnPxui1hXoEy+Fdoeh42h55bYSBjOtXPZh7m/LU6vuz6NauNXpuY
         9xYOdrReTfgPLJACf9CzaaERLIOcuVgXhco8/YWeo1KKjGH4rlMCQuPYGjfE1c24zJC7
         K2liSa0Aq18vND6QyGC+xpN7iCiglsU2evHCdAr3YD0DVvRr9rcshDZaVFkG9vli3NuK
         MnIMO+Tq5aLFu2ZpV32zCKZmEWtKfWc61XzWK78yBuAiKg1BVTRbvPSVV4+xJUNLrsf1
         jFTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=tF5eyAwycV5x1kMIrQR4KDatA/tZUM1YeVPTKE0kKKY=;
        b=JUrnN0gP5HeXX1z4ZG195pnIYvwbkPv7FsiL1kEfpt9bm20W8Hmy8dtGqpAOJzT3CF
         NmVLrfIKmVko0Mpei52tym+GKko48E4DebXVc7cB45znn0AK6WQ1VuYAQ3wV0JSEdDiR
         iNZMw8jVNf5BRVgHI1wEFMb4Q/X56U2M6wSkSdA1glU26cpIoSqIGocOmdikTe1yuYO+
         FQJxN2raHXgDdAuT8Qgz+AvR1VQ0TiIM/DV6B30BKXoFtpMZf5mYmDWm7zIk3vHamq9w
         UrZk6NhaYAjpre7WKnklCkJp2iN7yW77ILGfoQQuIWPZDKVKj/ZT2Bl54+VwlCzD4mQf
         x0Og==
X-Gm-Message-State: AOAM533j6XuhVdWgh6/zmnf5EtxhqBqswKObl5tFqMplujJr8YDL01RD
	AaV8Dg1XHhtZbFB0jljURlZPWhm/pNKnO8T6Q3BsNTpouCA=
X-Google-Smtp-Source: ABdhPJwA4j+ghs6DkIEm9WamK9ZtcyOR9m3u5FYTrDLzd1u4e7OWrd5TSh5iTBvBYKz2vH8JZEa0n7qoEJc3+AGMMUo=
X-Received: by 2002:a62:3242:0:b029:2d5:5913:7fd with SMTP id
 y63-20020a6232420000b02902d5591307fdmr997838pfy.30.1620956464753; Thu, 13 May
 2021 18:41:04 -0700 (PDT)
MIME-Version: 1.0
From: "Brian Hutchinson" <b.hutchman@gmail.com>
Date: Thu, 13 May 2021 21:40:53 -0400
Message-ID: <CAFZh4h9LFAduG7dAS8=5stVuE2x3RWcVz3zy5rTmPPshEY+AiA@mail.gmail.com>
Subject: meta-selinux issues. Depending on what I put in my local.conf, I get boot loops or can't log in.
To: yocto@yoctoproject.org
X-Groupsio-MsgNum: 53513
Content-Type: multipart/mixed; boundary="00000000000047f33505c24056ac"

--00000000000047f33505c24056ac
Content-Type: multipart/alternative; boundary="00000000000047f33305c24056aa"

--00000000000047f33305c24056aa
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Pretty new to selinux.  I've worked through a lot of issues to get this far
but am stumped at the moment so any pointers, clues are appreciated.

I'm trying to add selinux to my custom image.  After running into problems,
I decided it was best to start with building core-image-selinux for my NXP
imx8mm-evk board as a reference for getting my custom image to work.

I'm using fscl-community-bsp meta-freescale Dunfell release which is
building a 5.4.114 kernel.

My first issues were getting kernel config options right (.config
attached).  I kept booting my rootfs and sestatus would result in selinux
not being enabled.

After getting kernel config somewhat worked out, then I started getting
either boot loops or locked out.

I'll stay focused on my core-image-selinux image as hopefully if I can get
it working it will help me get my custom image working too.

Here is my last iteration of my local.conf that results in me not being
able to log in.  With core-image-selinux image, it freezes before it gets
to login prompt.  On my custom image, I get log in prompt but when I try to
log in a root I get audit messages and dropped back to login prompt.

local.conf for core-image-selinux:

MACHINE ??=3D 'imx8mmevk'
DISTRO ?=3D 'poky'
PACKAGE_CLASSES ?=3D 'package_rpm'
EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks"
DISTRO_FEATURES_remove =3D " sysvinit"
DISTRO_FEATURES_append +=3D " acl xattr pam selinux systemd"
VIRTUAL-RUNTIME_init_manager =3D "systemd"
DISTRO_FEATURES_BACKFILL_CONSIDERED =3D ""
PREFERRED_PROVIDER_virtual/refpolicy ?=3D "refpolicy-mls"
USER_CLASSES ?=3D "buildstats image-mklibs image-prelink"
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

At first I did not have DISTRO_FEATURES_remove =3D " sysvinit" or any syste=
md
settings.  This is when I started getting boot loops as described here:
https://patchwork.openembedded.org/patch/164274/

The board would boot and I'd get tons of these "/sbin/restorecon: Could not
set context for " bla, bla, bla "Read-only file system" messages ... but
then I'd get a login prompt and I'd be able to log in as root and run
sestatus:

Poky (Yocto Project Reference Distro) 3.1.7 imx8mmevk ttymxc1

imx8mmevk login: root
root@imx8mmevk:~# sestatus
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

This is when I paid more attention to the meta-selinux README
https://git.yoctoproject.org/cgit/cgit.cgi/meta-selinux/tree/README

... and added the DISTRO_FEATURES_remove =3D " sysvinit" and other systemd
commands to my local.conf above since the "boot loop" link above talked
about issues with sysvinit etc.

This left me with a boot that looks like this for my core-image-selinux
build ... which locks up:

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
[    0.008459] Console: colour dummy device 80x25
[    0.012580] Calibrating delay loop (skipped), value calculated using
timer frequency.. 16.00 BogoMIPS (lpj=3D32000)
[    0.022844] pid_max: default: 32768 minimum: 301
[    0.027543] LSM: Security Framework initializing
[    0.032140] SELinux:  Initializing.
[    0.035681] Mount-cache hash table entries: 4096 (order: 3, 32768 bytes,
linear)
[    0.043062] Mountpoint-cache hash table entries: 4096 (order: 3, 32768
bytes, linear)
[    0.052070] ASID allocator initialised with 32768 entries
[    0.056440] rcu: Hierarchical SRCU implementation.
[    0.062118] EFI services will not be available.
[    0.065893] smp: Bringing up secondary CPUs ...
[    0.070649] Detected VIPT I-cache on CPU1
[    0.070672] GICv3: CPU1: found redistributor 1 region
0:0x00000000388a0000
[    0.070703] CPU1: Booted secondary processor 0x0000000001 [0x410fd034]
[    0.071102] Detected VIPT I-cache on CPU2
[    0.071119] GICv3: CPU2: found redistributor 2 region
0:0x00000000388c0000
[    0.071137] CPU2: Booted secondary processor 0x0000000002 [0x410fd034]
[    0.071503] Detected VIPT I-cache on CPU3
[    0.071518] GICv3: CPU3: found redistributor 3 region
0:0x00000000388e0000
[    0.071533] CPU3: Booted secondary processor 0x0000000003 [0x410fd034]
[    0.071584] smp: Brought up 1 node, 4 CPUs
[    0.126889] SMP: Total of 4 processors activated.
[    0.131608] CPU features: detected: 32-bit EL0 Support
[    0.136780] CPU features: detected: CRC32 instructions
[    0.148803] CPU: All CPU(s) started at EL2
[    0.150075] alternatives: patching kernel code
[    0.155994] devtmpfs: initialized
[    0.163617] clocksource: jiffies: mask: 0xffffffff max_cycles:
0xffffffff, max_idle_ns: 7645041785100000 ns
[    0.170570] futex hash table entries: 1024 (order: 4, 65536 bytes,
linear)
[    0.194282] pinctrl core: initialized pinctrl subsystem
[    0.197368] DMI not present or invalid.
[    0.200798] NET: Registered protocol family 16
[    0.212024] DMA: preallocated 256 KiB pool for atomic allocations
[    0.215321] audit: initializing netlink subsys (disabled)
[    0.220974] audit: type=3D2000 audit(0.160:1): state=3Dinitialized
audit_enabled=3D0 res=3D1
[    0.228526] cpuidle: using governor menu
[    0.232929] hw-breakpoint: found 6 breakpoint and 4 watchpoint
registers.
[    0.240041] Serial: AMBA PL011 UART driver
[    0.243431] imx mu driver is registered.
[    0.247320] imx rpmsg driver is registered.
[    0.256460] imx8mm-pinctrl 30330000.pinctrl: initialized IMX pinctrl
driver
[    0.277607] HugeTLB registered 1.00 GiB page size, pre-allocated 0 pages
[    0.281501] HugeTLB registered 32.0 MiB page size, pre-allocated 0 pages
[    0.288221] HugeTLB registered 2.00 MiB page size, pre-allocated 0 pages
[    0.294958] HugeTLB registered 64.0 KiB page size, pre-allocated 0 pages
[    0.302578] cryptd: max_cpu_qlen set to 1000
[    0.308925] ACPI: Interpreter disabled.
[    0.310647] iommu: Default domain type: Translated
[    0.314984] vgaarb: loaded
[    0.317796] SCSI subsystem initialized
[    0.321638] usbcore: registered new interface driver usbfs
[    0.326821] usbcore: registered new interface driver hub
[    0.332166] usbcore: registered new device driver usb
[    0.338386] mc: Linux media interface: v0.10
[    0.341521] videodev: Linux video capture interface: v2.00
[    0.347069] pps_core: LinuxPPS API ver. 1 registered
[    0.351999] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo
Giometti <giometti@linux.it>
[    0.361194] PTP clock support registered
[    0.365250] EDAC MC: Ver: 3.0.0
[    0.369031] No BMan portals available!
[    0.372241] QMan: Allocated lookup table at (____ptrval____), entry
count 65537
[    0.379650] No QMan portals available!
[    0.383528] No USDPAA memory, no 'fsl,usdpaa-mem' in device-tree
[    0.389580] FPGA manager framework
[    0.392665] Advanced Linux Sound Architecture Driver Initialized.
[    0.399103] Bluetooth: Core ver 2.22
[    0.402325] NET: Registered protocol family 31
[    0.406776] Bluetooth: HCI device and connection manager initialized
[    0.413165] Bluetooth: HCI socket layer initialized
[    0.418063] Bluetooth: L2CAP socket layer initialized
[    0.423145] Bluetooth: SCO socket layer initialized
[    0.428729] clocksource: Switched to clocksource arch_sys_counter
[    0.434318] VFS: Disk quotas dquot_6.6.0
[    0.438147] VFS: Dquot-cache hash table entries: 512 (order 0, 4096
bytes)
[    0.445173] pnp: PnP ACPI: disabled
[    0.454071] thermal_sys: Registered thermal governor 'step_wise'
[    0.454075] thermal_sys: Registered thermal governor 'power_allocator'
[    0.457567] NET: Registered protocol family 2
[    0.468500] tcp_listen_portaddr_hash hash table entries: 1024 (order: 2,
16384 bytes, linear)
[    0.476800] TCP established hash table entries: 16384 (order: 5, 131072
bytes, linear)
[    0.484830] TCP bind hash table entries: 16384 (order: 6, 262144 bytes,
linear)
[    0.492297] TCP: Hash tables configured (established 16384 bind 16384)
[    0.498720] UDP hash table entries: 1024 (order: 3, 32768 bytes, linear)
[    0.505415] UDP-Lite hash table entries: 1024 (order: 3, 32768 bytes,
linear)
[    0.512695] NET: Registered protocol family 1
[    0.517249] RPC: Registered named UNIX socket transport module.
[    0.522882] RPC: Registered udp transport module.
[    0.527598] RPC: Registered tcp transport module.
[    0.532323] RPC: Registered tcp NFSv4.1 backchannel transport module.
[    0.539172] PCI: CLS 0 bytes, default 64
[    0.543460] hw perfevents: enabled with armv8_pmuv3 PMU driver, 7
counters available
[    0.550860] kvm [1]: IPA Size Limit: 40 bits
[    0.555419] kvm [1]: GICv3: no GICV resource entry
[    0.559628] kvm [1]: disabling GICv2 emulation
[    0.564099] kvm [1]: GIC system register CPU interface enabled
[    0.570004] kvm [1]: vgic interrupt IRQ1
[    0.573975] kvm [1]: Hyp mode initialized successfully
[    0.581824] Initialise system trusted keyrings
[    0.583614] workingset: timestamp_bits=3D44 max_order=3D19 bucket_order=
=3D0
[    0.595759] squashfs: version 4.0 (2009/01/31) Phillip Lougher
[    0.599368] NFS: Registering the id_resolver key type
[    0.603857] Key type id_resolver registered
[    0.608041] Key type id_legacy registered
[    0.612067] nfs4filelayout_init: NFSv4 File Layout Driver Registering...
[    0.618796] nfs4flexfilelayout_init: NFSv4 Flexfile Layout Driver
Registering...
[    0.626246] jffs2: version 2.2. (NAND) =EF=BF=BD=C2=A9 2001-2006 Red Hat=
, Inc.
[    0.632759] 9p: Installing v9fs 9p2000 file system support
[    0.650797] Key type asymmetric registered
[    0.652038] Asymmetric key parser 'x509' registered
[    0.656972] Block layer SCSI generic (bsg) driver version 0.4 loaded
(major 244)
[    0.664383] io scheduler mq-deadline registered
[    0.668932] io scheduler kyber registered
[    0.677135] EINJ: ACPI disabled.
[    0.685891] imx-sdma 302c0000.dma-controller: Direct firmware load for
imx/sdma/sdma-imx7d.bin failed with error -2
[    0.693543] imx-sdma 302c0000.dma-controller: Falling back to sysfs
fallback for: imx/sdma/sdma-imx7d.bin
[    0.710746] mxs-dma 33000000.dma-controller: initialized
[    0.714250] Bus freq driver module loaded
[    0.722266] Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
[    0.727674] 30890000.serial: ttymxc1 at MMIO 0x30890000 (irq =3D 34,
base_baud =3D 1500000) is a IMX
[    0.734595] printk: console [ttymxc1] enabled
[    0.734595] printk: console [ttymxc1] enabled
[    0.743235] printk: bootconsole [ec_imx6q0] disabled
[    0.743235] printk: bootconsole [ec_imx6q0] disabled
[    0.755182] imx-drm soc@0:bus@32c00000:display-subsystem: no available
port
[    0.773488] loop: module loaded
[    0.778553] imx ahci driver is registered.
[    0.785346] spi_imx 30830000.spi: probed
[    0.790183] spi-nor spi3.0: n25q256ax1 (32768 Kbytes)
[    0.795277] 7 fixed-partitions partitions found on MTD device
30bb0000.spi
[    0.802157] Creating 7 MTD partitions on "30bb0000.spi":
[    0.807477] 0x000000000000-0x000000200000 : "U-Boot"
[    0.817371] 0x000000200000-0x000000202000 : "U-Boot Env"
[    0.822696] mtd: partition "U-Boot Env" doesn't end on an erase/write
block -- force read-only
[    0.833323] 0x000000202000-0x000000204000 : "U-Boot Env 2"
[    0.838819] mtd: partition "U-Boot Env 2" doesn't start on an
erase/write block boundary -- force read-only
[    0.853314] 0x000000204000-0x000000205000 : "boot.scr"
[    0.858463] mtd: partition "boot.scr" doesn't start on an erase/write
block boundary -- force read-only
[    0.869306] 0x000000205000-0x000000210000 : "Device Tree Blob"
[    0.875150] mtd: partition "Device Tree Blob" doesn't start on an
erase/write block boundary -- force read-only
[    0.889320] 0x000000210000-0x000000e10000 : "Compressed Kernel"
[    0.897335] 0x000000e10000-0x000002000000 : "SquashFS"
[    0.906575] libphy: Fixed MDIO Bus: probed
[    0.911375] tun: Universal TUN/TAP device driver, 1.6
[    0.917133] thunder_xcv, ver 1.0
[    0.920386] thunder_bgx, ver 1.0
[    0.923649] nicpf, ver 1.0
[    0.927576] pps pps0: new PPS source ptp0
[    0.944110] libphy: fec_enet_mii_bus: probed
[    0.948923] fec 30be0000.ethernet eth0: registered PHC device 0
[    0.955395] Freescale FM module, FMD API version 21.1.0
[    0.960856] Freescale FM Ports module
[    0.964517] fsl_mac: fsl_mac: FSL FMan MAC API based driver
[    0.970260] fsl_dpa: FSL DPAA Ethernet driver
[    0.974714] fsl_advanced: FSL DPAA Advanced drivers:
[    0.979684] fsl_proxy: FSL DPAA Proxy initialization driver
[    0.985344] fsl_oh: FSL FMan Offline Parsing port driver
[    0.991426] hclge is initializing
[    0.994751] hns3: Hisilicon Ethernet Network Driver for Hip08 Family -
version
[    1.001977] hns3: Copyright (c) 2017 Huawei Corporation.
[    1.007347] e1000: Intel(R) PRO/1000 Network Driver - version
7.3.21-k8-NAPI
[    1.014400] e1000: Copyright (c) 1999-2006 Intel Corporation.
[    1.020176] e1000e: Intel(R) PRO/1000 Network Driver - 3.2.6-k
[    1.026012] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
[    1.031967] igb: Intel(R) Gigabit Ethernet Network Driver - version
5.6.0-k
[    1.038938] igb: Copyright (c) 2007-2014 Intel Corporation.
[    1.044545] igbvf: Intel(R) Gigabit Virtual Function Network Driver -
version 2.4.0-k
[    1.052378] igbvf: Copyright (c) 2009 - 2012 Intel Corporation.
[    1.058433] sky2: driver version 1.30
[    1.062933] VFIO - User Level meta-driver version: 0.3
[    1.069701] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    1.076239] ehci-pci: EHCI PCI platform driver
[    1.080767] ehci-platform: EHCI generic platform driver
[    1.086146] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
[    1.092348] ohci-pci: OHCI PCI platform driver
[    1.096826] ohci-platform: OHCI generic platform driver
[    1.102542] usbcore: registered new interface driver usb-storage
[    1.108613] usbcore: registered new interface driver usbserial_generic
[    1.115159] usbserial: USB Serial support registered for generic
[    1.121191] usbcore: registered new interface driver ftdi_sio
[    1.126952] usbserial: USB Serial support registered for FTDI USB Serial
Device
[    1.134291] usbcore: registered new interface driver usb_serial_simple
[    1.140836] usbserial: USB Serial support registered for carelink
[    1.146944] usbserial: USB Serial support registered for zio
[    1.152619] usbserial: USB Serial support registered for funsoft
[    1.158641] usbserial: USB Serial support registered for flashloader
[    1.165010] usbserial: USB Serial support registered for google
[    1.170946] usbserial: USB Serial support registered for libtransistor
[    1.177489] usbserial: USB Serial support registered for vivopay
[    1.183513] usbserial: USB Serial support registered for moto_modem
[    1.189801] usbserial: USB Serial support registered for motorola_tetra
[    1.196438] usbserial: USB Serial support registered for novatel_gps
[    1.202809] usbserial: USB Serial support registered for hp4x
[    1.208572] usbserial: USB Serial support registered for suunto
[    1.214508] usbserial: USB Serial support registered for siemens_mpi
[    1.223211] input: 30370000.snvs:snvs-powerkey as /devices/platform/soc@=
0
/soc@0:bus@30000000/30370000.snvs/30370000.snvs:snvs-powerkey/input/input0
[    1.238238] snvs_rtc 30370000.snvs:snvs-rtc-lp: registered as rtc0
[    1.244505] i2c /dev entries driver
[    1.252447] imx2-wdt 30280000.watchdog: timeout 60 sec (nowayout=3D0)
[    1.258987] Bluetooth: HCI UART driver ver 2.3
[    1.263444] Bluetooth: HCI UART protocol H4 registered
[    1.268589] Bluetooth: HCI UART protocol BCSP registered
[    1.273925] Bluetooth: HCI UART protocol LL registered
[    1.279069] Bluetooth: HCI UART protocol ATH3K registered
[    1.284486] Bluetooth: HCI UART protocol Three-wire (H5) registered
[    1.290836] Bluetooth: HCI UART protocol Broadcom registered
[    1.296520] Bluetooth: HCI UART protocol QCA registered
[    1.303494] sdhci: Secure Digital Host Controller Interface driver
[    1.309687] sdhci: Copyright(c) Pierre Ossman
[    1.314212] Synopsys Designware Multimedia Card Interface Driver
[    1.320736] sdhci-pltfm: SDHCI platform and OF driver helper
[    1.327135] mmc1: CQHCI version 5.10
[    1.331200] mmc2: CQHCI version 5.10
[    1.366866] mmc2: SDHCI controller on 30b60000.mmc [30b60000.mmc] using
ADMA
[    1.376165] ledtrig-cpu: registered to indicate activity on CPUs
[    1.383297] caam 30900000.crypto: device ID =3D 0x0a16040100000000 (Era =
9)
[    1.390069] caam 30900000.crypto: job rings =3D 3, qi =3D 0
[    1.404678] caam algorithms registered in /proc/crypto
[    1.410556] caam 30900000.crypto: caam pkc algorithms registered in
/proc/crypto
[    1.420079] caam_jr 30901000.jr: registering rng-caam
[    1.429895] caam-snvs 30370000.caam-snvs: can't get snvs clock
[    1.435783] caam-snvs 30370000.caam-snvs: violation handlers armed -
non-secure state
[    1.444200] usbcore: registered new interface driver usbhid
[    1.449780] usbhid: USB HID core driver
[    1.455330] No fsl,qman node
[    1.458228] Freescale USDPAA process driver
[    1.462416] fsl-usdpaa: no region found
[    1.466254] Freescale USDPAA process IRQ driver
[    1.474284] optee: probing for conduit method from DT.
[    1.479448] optee: revision 3.2 (6a22e6e8)
[    1.480265] optee: dynamic shared memory is enabled
[    1.489481] optee: initialized driver
[    1.495289] mmc2: Command Queue Engine enabled
[    1.496837] wm8524-codec audio-codec: Failed to get mute line: -517
[    1.499792] mmc2: new HS400 Enhanced strobe MMC card at address 0001
[    1.506505] OF: /sound-bt-sco/simple-audio-card,cpu: could not get
#sound-dai-cells for /soc@0/bus@30000000/sai@30020000
[    1.513508] mmcblk2: mmc2:0001 DG4016 7.49 GiB
[    1.523248] asoc-simple-card sound-bt-sco: parse error -22
[    1.523265] asoc-simple-card: probe of sound-bt-sco failed with error
-22
[    1.527908] mmcblk2boot0: mmc2:0001 DG4016 partition 1 4.00 MiB
[    1.546163] mmcblk2boot1: mmc2:0001 DG4016 partition 2 4.00 MiB
[    1.547285] pktgen: Packet Generator for packet performance testing.
Version: 2.75
[    1.552232] mmcblk2gp0: mmc2:0001 DG4016 partition 4 3.52 GiB
[    1.565904] mmcblk2rpmb: mmc2:0001 DG4016 partition 3 4.00 MiB, chardev
(237:0)
[    1.566798] NET: Registered protocol family 26
[    1.578184] NET: Registered protocol family 10
[    1.582998]  mmcblk2: p1 p2
[    1.583960] Segment Routing with IPv6
[    1.589559] NET: Registered protocol family 17
[    1.594201]  mmcblk2gp0: p1 p2
[    1.594430] Bluetooth: RFCOMM TTY layer initialized
[    1.602179] Bluetooth: RFCOMM socket layer initialized
[    1.607335] Bluetooth: RFCOMM ver 1.11
[    1.611099] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
[    1.616414] Bluetooth: BNEP filters: protocol multicast
[    1.621653] Bluetooth: BNEP socket layer initialized
[    1.626623] Bluetooth: HIDP (Human Interface Emulation) ver 1.2
[    1.632549] Bluetooth: HIDP socket layer initialized
[    1.637554] 8021q: 802.1Q VLAN Support v1.8
[    1.641764] lib80211: common routines for IEEE802.11 drivers
[    1.647544] 9pnet: Installing 9P2000 support
[    1.651845] tsn generic netlink module v1 init...
[    1.656632] Key type dns_resolver registered
[    1.661668] registered taskstats version 1
[    1.665794] Loading compiled-in X.509 certificates
[    1.692510] usb_phy_generic usbphynop1: usbphynop1 supply vcc not found,
using dummy regulator
[    1.701297] usb_phy_generic usbphynop2: usbphynop2 supply vcc not found,
using dummy regulator
[    1.733590] random: fast init done
[    1.738992] LDO6: supplied by regulator-dummy
[    1.743499] i2c i2c-0: IMX I2C adapter registered
[    1.749209] i2c i2c-1: IMX I2C adapter registered
[    1.754765] i2c i2c-2: IMX I2C adapter registered
[    1.760259] i2c i2c-3: IMX I2C adapter registered
[    1.765281] imx-cpufreq-dt imx-cpufreq-dt: cpu speed grade 2 mkt segment
2 supported-hw 0x4 0x4
[    1.777862] mmc1: CQHCI version 5.10
[    1.781506] sdhci-esdhc-imx 30b50000.mmc: Got CD GPIO
[    1.817451] mmc1: SDHCI controller on 30b50000.mmc [30b50000.mmc] using
ADMA
[    1.826135] imx8mm-pinctrl 30330000.pinctrl: pin MX8MM_IOMUXC_I2C4_SDA
already requested by 30a50000.i2c; cannot claim for audio-codec
[    1.838253] imx8mm-pinctrl 30330000.pinctrl: pin-140 (audio-codec)
status -22
[    1.845397] imx8mm-pinctrl 30330000.pinctrl: could not request pin 140
(MX8MM_IOMUXC_I2C4_SDA) from group gpiowlfgrp  on device 30330000.pinctrl
[    1.858357] wm8524-codec audio-codec: Error applying setting, reverse
things back
[    1.865856] wm8524-codec: probe of audio-codec failed with error -22
[    1.876549] input: bd718xx-pwrkey as /devices/platform/soc@0/soc@0
:bus@30800000/30a20000.i2c/i2c-0/0-004b/gpio-keys.1.auto/input/input1
[    1.890300] snvs_rtc 30370000.snvs:snvs-rtc-lp: setting system clock to
1970-01-01T00:00:00 UTC (0)
[    1.899718] cfg80211: Loading compiled-in X.509 certificates for
regulatory database
[    1.911354] cfg80211: Loaded X.509 cert 'sforshee: 00b28ddf47aef9cea7'
[    1.917963] platform regulatory.0: Direct firmware load for
regulatory.db failed with error -2
[    1.923612] ALSA device list:
[    1.926586] platform regulatory.0: Falling back to sysfs fallback for:
regulatory.db
[    1.929550]   No soundcards found.
[    1.947317] EXT4-fs (mmcblk2p2): mounted filesystem with ordered data
mode. Opts: (null)
[    1.955496] VFS: Mounted root (ext4 filesystem) readonly on device
179:2.
[    1.963119] devtmpfs: mounted
[    1.966900] Freeing unused kernel memory: 2880K
[    1.989378] Run /sbin/init as init process
[    2.059403] audit: type=3D1404 audit(1.969:2): enforcing=3D1 old_enforci=
ng=3D0
auid=3D4294967295 ses=3D4294967295 enabled=3D1 old-enabled=3D1 lsm=3Dselinu=
x res=3D1
[    2.199361] SELinux:  Permission watch in class filesystem not defined
in policy.
[    2.206919] SELinux:  Permission watch in class file not defined in
policy.
[    2.213885] SELinux:  Permission watch_mount in class file not defined
in policy.
[    2.221377] SELinux:  Permission watch_sb in class file not defined in
policy.
[    2.228601] SELinux:  Permission watch_with_perm in class file not
defined in policy.
[    2.236441] SELinux:  Permission watch_reads in class file not defined
in policy.
[    2.243935] SELinux:  Permission watch in class dir not defined in
policy.
[    2.250819] SELinux:  Permission watch_mount in class dir not defined in
policy.
[    2.258216] SELinux:  Permission watch_sb in class dir not defined in
policy.
[    2.265361] SELinux:  Permission watch_with_perm in class dir not
defined in policy.
[    2.273105] SELinux:  Permission watch_reads in class dir not defined in
policy.
[    2.280520] SELinux:  Permission watch in class lnk_file not defined in
policy.
[    2.287830] SELinux:  Permission watch_mount in class lnk_file not
defined in policy.
[    2.295669] SELinux:  Permission watch_sb in class lnk_file not defined
in policy.
[    2.303239] SELinux:  Permission watch_with_perm in class lnk_file not
defined in policy.
[    2.311429] SELinux:  Permission watch_reads in class lnk_file not
defined in policy.
[    2.319266] SELinux:  Permission watch in class chr_file not defined in
policy.
[    2.326585] SELinux:  Permission watch_mount in class chr_file not
defined in policy.
[    2.334416] SELinux:  Permission watch_sb in class chr_file not defined
in policy.
[    2.341994] SELinux:  Permission watch_with_perm in class chr_file not
defined in policy.
[    2.350172] SELinux:  Permission watch_reads in class chr_file not
defined in policy.
[    2.358021] SELinux:  Permission watch in class blk_file not defined in
policy.
[    2.365332] SELinux:  Permission watch_mount in class blk_file not
defined in policy.
[    2.373171] SELinux:  Permission watch_sb in class blk_file not defined
in policy.
[    2.380742] SELinux:  Permission watch_with_perm in class blk_file not
defined in policy.
[    2.388927] SELinux:  Permission watch_reads in class blk_file not
defined in policy.
[    2.396765] SELinux:  Permission watch in class sock_file not defined in
policy.
[    2.404171] SELinux:  Permission watch_mount in class sock_file not
defined in policy.
[    2.412088] SELinux:  Permission watch_sb in class sock_file not defined
in policy.
[    2.419757] SELinux:  Permission watch_with_perm in class sock_file not
defined in policy.
[    2.428022] SELinux:  Permission watch_reads in class sock_file not
defined in policy.
[    2.435953] SELinux:  Permission watch in class fifo_file not defined in
policy.
[    2.443350] SELinux:  Permission watch_mount in class fifo_file not
defined in policy.
[    2.451275] SELinux:  Permission watch_sb in class fifo_file not defined
in policy.
[    2.458933] SELinux:  Permission watch_with_perm in class fifo_file not
defined in policy.
[    2.467206] SELinux:  Permission watch_reads in class fifo_file not
defined in policy.
[    2.475450] SELinux: the above unknown classes and permissions will be
allowed
[    2.482716] SELinux:  policy capability network_peer_controls=3D1
[    2.488638] SELinux:  policy capability open_perms=3D1
[    2.493612] SELinux:  policy capability extended_socket_class=3D1
[    2.499534] SELinux:  policy capability always_check_network=3D0
[    2.505375] SELinux:  policy capability cgroup_seclabel=3D1
[    2.510776] SELinux:  policy capability nnp_nosuid_transition=3D1
[    2.551944] audit: type=3D1403 audit(2.461:3): auid=3D4294967295
ses=3D4294967295 lsm=3Dselinux res=3D1
[    2.560140] systemd[1]: Successfully loaded SELinux policy in 501.858ms.
[    2.585453] systemd[1]: System time before build time, advancing clock.
[    2.596311] systemd[1]: Unable to fix SELinux security context of /dev:
Operation not permitted
[    2.596451] audit: type=3D1401 audit(1600598638.004:4):
op=3Dsecurity_validate_transition seresult=3Ddenied
oldcontext=3Dsystem_u:object_r:device_t:s15:c0.c1023
newcontext=3Dsystem_u:object_r:device_t:s0
taskcontext=3Dsystem_u:system_r:kernel_t:s15:c0.c1023 tclassr
[    2.606247] systemd[1]: Failed to mount tmpfs at /dev/shm: No such file
or directory
[    2.627743] audit: type=3D1400 audit(1600598638.016:5): avc:  denied  {
create } for  pid=3D1 comm=3D"systemd" name=3D"shm"
scontext=3Dsystem_u:system_r:kernel_t:s15:c0.c1023
tcontext=3Dsystem_u:object_r:tmpfs_t:s0 tclass=3Ddir permissive=3D0
[    2.637910] systemd[1]: Unable to fix SELinux security context of /run:
Operation not permitted
[    2.655581] audit: type=3D1400 audit(1600598638.044:6): avc:  denied  {
create } for  pid=3D1 comm=3D"systemd" name=3D"pts"
scontext=3Dsystem_u:system_r:kernel_t:s15:c0.c1023
tcontext=3Dsystem_u:object_r:devpts_t:s0-s15:c0.c1023 tclass=3Ddir permissi=
ve=3D0
[    2.665724] systemd[1]: Unable to fix SELinux security context of
/sys/fs/cgroup: Operation not permitted
[    2.685536] audit: type=3D1401 audit(1600598638.048:7):
op=3Dsecurity_validate_transition seresult=3Ddenied
oldcontext=3Dsystem_u:object_r:tmpfs_t:s15:c0.c1023
newcontext=3Dsystem_u:object_r:var_run_t:s0-s15:c0.c1023
taskcontext=3Dsystem_u:system_r:kernel_t:s15:c0r
[    2.719230] audit: type=3D1401 audit(1600598638.076:8):
op=3Dsecurity_validate_transition seresult=3Ddenied
oldcontext=3Dsystem_u:object_r:tmpfs_t:s15:c0.c1023
newcontext=3Dsystem_u:object_r:cgroup_t:s0
taskcontext=3Dsystem_u:system_r:kernel_t:s15:c0.c1023 tclass=3Dr
[    2.741846] audit: type=3D1400 audit(1600598638.108:9): avc:  denied  {
create } for  pid=3D1 comm=3D"systemd" name=3D"bpf"
scontext=3Dsystem_u:system_r:kernel_t:s15:c0.c1023
tcontext=3Dsystem_u:object_r:sysfs_t:s0 tclass=3Ddir permissive=3D0
[!!!!!!] Failed to mount API filesystems.
[    2.780814] systemd[1]: Freezing execution.

--00000000000047f33305c24056aa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>Pretty new to selinux.=
=C2=A0 I&#39;ve worked through a lot of issues to get this far but am stump=
ed at the moment so any pointers, clues are appreciated.</div><div><br></di=
v><div>I&#39;m trying to add selinux to my custom image.=C2=A0 After runnin=
g into problems, I decided it was best to start with building core-image-se=
linux for my NXP imx8mm-evk board as a reference for getting my custom imag=
e to work.</div><div><br></div><div>I&#39;m using fscl-community-bsp meta-f=
reescale Dunfell release which is building a 5.4.114 kernel. <br></div><div=
><br></div><div>My first issues were getting kernel config options right (.=
config attached).=C2=A0 I kept booting my rootfs and sestatus would result =
in selinux not being enabled.</div><div><br></div><div>After getting kernel=
 config somewhat worked out, then I started getting either boot loops or lo=
cked out.<br></div><div><br></div><div>I&#39;ll stay focused on my core-ima=
ge-selinux image as hopefully if I can get it working it will help me get m=
y custom image working too.</div><div><br></div><div>Here is my last iterat=
ion of my local.conf that results in me not being able to log in.=C2=A0 Wit=
h core-image-selinux image, it freezes before it gets to login prompt.=C2=
=A0 On my custom image, I get log in prompt but when I try to log in a root=
 I get audit messages and dropped back to login prompt.</div><div><br></div=
><div>local.conf for core-image-selinux:</div><div><br></div><div><span sty=
le=3D"font-family:monospace"><span style=3D"font-family:monospace"><span st=
yle=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">MACHINE ??=3D &#=
39;imx8mmevk&#39;
</span><br>DISTRO ?=3D &#39;poky&#39;
<br>PACKAGE_CLASSES ?=3D &#39;package_rpm&#39;
<br>EXTRA_IMAGE_FEATURES ?=3D &quot;debug-tweaks&quot;
<br>DISTRO_FEATURES_remove =3D &quot; sysvinit&quot;
<br>DISTRO_FEATURES_append +=3D &quot; acl xattr pam selinux systemd&quot;
<br>VIRTUAL-RUNTIME_init_manager =3D &quot;systemd&quot;
<br>DISTRO_FEATURES_BACKFILL_CONSIDERED =3D &quot;&quot;
<br>PREFERRED_PROVIDER_virtual/refpolicy ?=3D &quot;refpolicy-mls&quot;
<br>USER_CLASSES ?=3D &quot;buildstats image-mklibs image-prelink&quot;
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
<br>ACCEPT_FSL_EULA =3D &quot;1&quot;<br></span></span></div><div><span sty=
le=3D"font-family:monospace"><br></span></div><div><span style=3D"font-fami=
ly:monospace">At first I did not have DISTRO_FEATURES_remove =3D &quot; sys=
vinit&quot; or any systemd settings.=C2=A0 This is when I started getting b=
oot loops as described here:</span></div><div><span style=3D"font-family:mo=
nospace"><a href=3D"https://patchwork.openembedded.org/patch/164274/">https=
://patchwork.openembedded.org/patch/164274/</a></span></div><div><span styl=
e=3D"font-family:monospace"><br></span></div><div><span style=3D"font-famil=
y:monospace">The board would boot and I&#39;d get tons of these &quot;</spa=
n>/sbin/restorecon: Could not set context for &quot; bla, bla, bla &quot;Re=
ad-only file system<span style=3D"font-family:monospace"></span>&quot; mess=
ages ... but then I&#39;d get a login prompt and I&#39;d be able to log in =
as root and run sestatus:<br></div><div><span style=3D"font-family:monospac=
e"><br></span></div><div><span style=3D"font-family:monospace"><span style=
=3D"font-family:monospace">Poky (Yocto Project Reference Distro) 3.1.7 imx8=
mmevk ttymxc1
<br>
<br>imx8mmevk login: root
<br>root@imx8mmevk:~# sestatus
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
</span></span></div><div><br></div><div>This is when I paid more attention =
to the meta-selinux README <a href=3D"https://git.yoctoproject.org/cgit/cgi=
t.cgi/meta-selinux/tree/README">https://git.yoctoproject.org/cgit/cgit.cgi/=
meta-selinux/tree/README</a> <br></div><div><br></div><div>... and added th=
e DISTRO_FEATURES_remove =3D &quot; sysvinit&quot; and other systemd comman=
ds to my local.conf above since the &quot;boot loop&quot; link above talked=
 about issues with sysvinit etc.<br></div><div><br></div><div>This left me =
with a boot that looks like this for my core-image-selinux build ... which =
locks up:</div><div><br></div><div><span style=3D"font-family:monospace"><d=
iv><div class=3D"gmail-im">[ =C2=A0=C2=A0=C2=A00.000000] Dentry cache hash =
table entries: 262144 (order: 9, 2097152 bytes, linear)
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
<br>[ =C2=A0=C2=A0=C2=A00.008459] Console: colour dummy device 80x25
<br></div></div><span class=3D"gmail-im">[ =C2=A0=C2=A0=C2=A00.012580] Cali=
brating delay loop (skipped), value calculated using timer frequency.. 16.0=
0 BogoMIPS (lpj=3D32000)
<br></span>[ =C2=A0=C2=A0=C2=A00.022844] pid_max: default: 32768 minimum: 3=
01
<br><span class=3D"gmail-im">[ =C2=A0=C2=A0=C2=A00.027543] LSM: Security Fr=
amework initializing
<br>[ =C2=A0=C2=A0=C2=A00.032140] SELinux: =C2=A0Initializing.
<br>[ =C2=A0=C2=A0=C2=A00.035681] Mount-cache hash table entries: 4096 (ord=
er: 3, 32768 bytes, linear)
<br></span>[ =C2=A0=C2=A0=C2=A00.043062] Mountpoint-cache hash table entrie=
s: 4096 (order: 3, 32768 bytes, linear)
<br>[ =C2=A0=C2=A0=C2=A00.052070] ASID allocator initialised with 32768 ent=
ries
<br><span class=3D"gmail-im">[ =C2=A0=C2=A0=C2=A00.056440] rcu: Hierarchica=
l SRCU implementation.
<br></span>[ =C2=A0=C2=A0=C2=A00.062118] EFI services will not be available=
.
<br>[ =C2=A0=C2=A0=C2=A00.065893] smp: Bringing up secondary CPUs ...
<br>[ =C2=A0=C2=A0=C2=A00.070649] Detected VIPT I-cache on CPU1
<br><span class=3D"gmail-im">[ =C2=A0=C2=A0=C2=A00.070672] GICv3: CPU1: fou=
nd redistributor 1 region 0:0x00000000388a0000
<br>[ =C2=A0=C2=A0=C2=A00.070703] CPU1: Booted secondary processor 0x000000=
0001 [0x410fd034]
<br></span>[ =C2=A0=C2=A0=C2=A00.071102] Detected VIPT I-cache on CPU2
<br>[ =C2=A0=C2=A0=C2=A00.071119] GICv3: CPU2: found redistributor 2 region=
 0:0x00000000388c0000
<br>[ =C2=A0=C2=A0=C2=A00.071137] CPU2: Booted secondary processor 0x000000=
0002 [0x410fd034]
<br>[ =C2=A0=C2=A0=C2=A00.071503] Detected VIPT I-cache on CPU3
<br>[ =C2=A0=C2=A0=C2=A00.071518] GICv3: CPU3: found redistributor 3 region=
 0:0x00000000388e0000
<br>[ =C2=A0=C2=A0=C2=A00.071533] CPU3: Booted secondary processor 0x000000=
0003 [0x410fd034]
<br>[ =C2=A0=C2=A0=C2=A00.071584] smp: Brought up 1 node, 4 CPUs
<br>[ =C2=A0=C2=A0=C2=A00.126889] SMP: Total of 4 processors activated.
<br>[ =C2=A0=C2=A0=C2=A00.131608] CPU features: detected: 32-bit EL0 Suppor=
t
<br><span class=3D"gmail-im">[ =C2=A0=C2=A0=C2=A00.136780] CPU features: de=
tected: CRC32 instructions
<br></span>[ =C2=A0=C2=A0=C2=A00.148803] CPU: All CPU(s) started at EL2
<br>[ =C2=A0=C2=A0=C2=A00.150075] alternatives: patching kernel code
<br>[ =C2=A0=C2=A0=C2=A00.155994] devtmpfs: initialized
<br>[ =C2=A0=C2=A0=C2=A00.163617] clocksource: jiffies: mask: 0xffffffff ma=
x_cycles: 0xffffffff, max_idle_ns: 7645041785100000 ns
<br>[ =C2=A0=C2=A0=C2=A00.170570] futex hash table entries: 1024 (order: 4,=
 65536 bytes, linear)
<br>[ =C2=A0=C2=A0=C2=A00.194282] pinctrl core: initialized pinctrl subsyst=
em
<br>[ =C2=A0=C2=A0=C2=A00.197368] DMI not present or invalid.
<br>[ =C2=A0=C2=A0=C2=A00.200798] NET: Registered protocol family 16
<br>[ =C2=A0=C2=A0=C2=A00.212024] DMA: preallocated 256 KiB pool for atomic=
 allocations
<br>[ =C2=A0=C2=A0=C2=A00.215321] audit: initializing netlink subsys (disab=
led)
<br>[ =C2=A0=C2=A0=C2=A00.220974] audit: type=3D2000 audit(0.160:1): state=
=3Dinitialized audit_enabled=3D0 res=3D1
<br>[ =C2=A0=C2=A0=C2=A00.228526] cpuidle: using governor menu
<br>[ =C2=A0=C2=A0=C2=A00.232929] hw-breakpoint: found 6 breakpoint and 4 w=
atchpoint registers.
<br>[ =C2=A0=C2=A0=C2=A00.240041] Serial: AMBA PL011 UART driver
<br>[ =C2=A0=C2=A0=C2=A00.243431] imx mu driver is registered.
<br>[ =C2=A0=C2=A0=C2=A00.247320] imx rpmsg driver is registered.
<br>[ =C2=A0=C2=A0=C2=A00.256460] imx8mm-pinctrl 30330000.pinctrl: initiali=
zed IMX pinctrl driver
<br>[ =C2=A0=C2=A0=C2=A00.277607] HugeTLB registered 1.00 GiB page size, pr=
e-allocated 0 pages
<br>[ =C2=A0=C2=A0=C2=A00.281501] HugeTLB registered 32.0 MiB page size, pr=
e-allocated 0 pages
<br>[ =C2=A0=C2=A0=C2=A00.288221] HugeTLB registered 2.00 MiB page size, pr=
e-allocated 0 pages
<br>[ =C2=A0=C2=A0=C2=A00.294958] HugeTLB registered 64.0 KiB page size, pr=
e-allocated 0 pages
<br>[ =C2=A0=C2=A0=C2=A00.302578] cryptd: max_cpu_qlen set to 1000
<br>[ =C2=A0=C2=A0=C2=A00.308925] ACPI: Interpreter disabled.
<br>[ =C2=A0=C2=A0=C2=A00.310647] iommu: Default domain type: Translated =
=C2=A0<br>[ =C2=A0=C2=A0=C2=A00.314984] vgaarb: loaded
<br>[ =C2=A0=C2=A0=C2=A00.317796] SCSI subsystem initialized
<br>[ =C2=A0=C2=A0=C2=A00.321638] usbcore: registered new interface driver =
usbfs
<br>[ =C2=A0=C2=A0=C2=A00.326821] usbcore: registered new interface driver =
hub
<br>[ =C2=A0=C2=A0=C2=A00.332166] usbcore: registered new device driver usb
<br>[ =C2=A0=C2=A0=C2=A00.338386] mc: Linux media interface: v0.10
<br>[ =C2=A0=C2=A0=C2=A00.341521] videodev: Linux video capture interface: =
v2.00
<br>[ =C2=A0=C2=A0=C2=A00.347069] pps_core: LinuxPPS API ver. 1 registered
<br>[ =C2=A0=C2=A0=C2=A00.351999] pps_core: Software ver. 5.3.6 - Copyright=
 2005-2007 Rodolfo Giometti &lt;<a href=3D"mailto:giometti@linux.it" target=
=3D"_blank">giometti@linux.it</a>&gt;
<br>[ =C2=A0=C2=A0=C2=A00.361194] PTP clock support registered
<br>[ =C2=A0=C2=A0=C2=A00.365250] EDAC MC: Ver: 3.0.0
<br>[ =C2=A0=C2=A0=C2=A00.369031] No BMan portals available!
<br>[ =C2=A0=C2=A0=C2=A00.372241] QMan: Allocated lookup table at (____ptrv=
al____), entry count 65537
<br>[ =C2=A0=C2=A0=C2=A00.379650] No QMan portals available!
<br>[ =C2=A0=C2=A0=C2=A00.383528] No USDPAA memory, no &#39;fsl,usdpaa-mem&=
#39; in device-tree
<br>[ =C2=A0=C2=A0=C2=A00.389580] FPGA manager framework
<br>[ =C2=A0=C2=A0=C2=A00.392665] Advanced Linux Sound Architecture Driver =
Initialized.
<br>[ =C2=A0=C2=A0=C2=A00.399103] Bluetooth: Core ver 2.22
<br>[ =C2=A0=C2=A0=C2=A00.402325] NET: Registered protocol family 31
<br>[ =C2=A0=C2=A0=C2=A00.406776] Bluetooth: HCI device and connection mana=
ger initialized
<br>[ =C2=A0=C2=A0=C2=A00.413165] Bluetooth: HCI socket layer initialized
<br>[ =C2=A0=C2=A0=C2=A00.418063] Bluetooth: L2CAP socket layer initialized
<br>[ =C2=A0=C2=A0=C2=A00.423145] Bluetooth: SCO socket layer initialized
<br>[ =C2=A0=C2=A0=C2=A00.428729] clocksource: Switched to clocksource arch=
_sys_counter
<br>[ =C2=A0=C2=A0=C2=A00.434318] VFS: Disk quotas dquot_6.6.0
<br>[ =C2=A0=C2=A0=C2=A00.438147] VFS: Dquot-cache hash table entries: 512 =
(order 0, 4096 bytes)
<br>[ =C2=A0=C2=A0=C2=A00.445173] pnp: PnP ACPI: disabled
<br>[ =C2=A0=C2=A0=C2=A00.454071] thermal_sys: Registered thermal governor =
&#39;step_wise&#39;
<br>[ =C2=A0=C2=A0=C2=A00.454075] thermal_sys: Registered thermal governor =
&#39;power_allocator&#39;
<br>[ =C2=A0=C2=A0=C2=A00.457567] NET: Registered protocol family 2
<br>[ =C2=A0=C2=A0=C2=A00.468500] tcp_listen_portaddr_hash hash table entri=
es: 1024 (order: 2, 16384 bytes, linear)
<br>[ =C2=A0=C2=A0=C2=A00.476800] TCP established hash table entries: 16384=
 (order: 5, 131072 bytes, linear)
<br>[ =C2=A0=C2=A0=C2=A00.484830] TCP bind hash table entries: 16384 (order=
: 6, 262144 bytes, linear)
<br>[ =C2=A0=C2=A0=C2=A00.492297] TCP: Hash tables configured (established =
16384 bind 16384)
<br>[ =C2=A0=C2=A0=C2=A00.498720] UDP hash table entries: 1024 (order: 3, 3=
2768 bytes, linear)
<br>[ =C2=A0=C2=A0=C2=A00.505415] UDP-Lite hash table entries: 1024 (order:=
 3, 32768 bytes, linear)
<br>[ =C2=A0=C2=A0=C2=A00.512695] NET: Registered protocol family 1
<br>[ =C2=A0=C2=A0=C2=A00.517249] RPC: Registered named UNIX socket transpo=
rt module.
<br>[ =C2=A0=C2=A0=C2=A00.522882] RPC: Registered udp transport module.
<br>[ =C2=A0=C2=A0=C2=A00.527598] RPC: Registered tcp transport module.
<br>[ =C2=A0=C2=A0=C2=A00.532323] RPC: Registered tcp NFSv4.1 backchannel t=
ransport module.
<br>[ =C2=A0=C2=A0=C2=A00.539172] PCI: CLS 0 bytes, default 64
<br>[ =C2=A0=C2=A0=C2=A00.543460] hw perfevents: enabled with armv8_pmuv3 P=
MU driver, 7 counters available
<br>[ =C2=A0=C2=A0=C2=A00.550860] kvm [1]: IPA Size Limit: 40 bits
<br><span class=3D"gmail-im">[ =C2=A0=C2=A0=C2=A00.555419] kvm [1]: GICv3: =
no GICV resource entry
<br></span>[ =C2=A0=C2=A0=C2=A00.559628] kvm [1]: disabling GICv2 emulation
<br>[ =C2=A0=C2=A0=C2=A00.564099] kvm [1]: GIC system register CPU interfac=
e enabled
<br>[ =C2=A0=C2=A0=C2=A00.570004] kvm [1]: vgic interrupt IRQ1
<br>[ =C2=A0=C2=A0=C2=A00.573975] kvm [1]: Hyp mode initialized successfull=
y
<br>[ =C2=A0=C2=A0=C2=A00.581824] Initialise system trusted keyrings
<br>[ =C2=A0=C2=A0=C2=A00.583614] workingset: timestamp_bits=3D44 max_order=
=3D19 bucket_order=3D0
<br>[ =C2=A0=C2=A0=C2=A00.595759] squashfs: version 4.0 (2009/01/31) Philli=
p Lougher
<br>[ =C2=A0=C2=A0=C2=A00.599368] NFS: Registering the id_resolver key type
<br>[ =C2=A0=C2=A0=C2=A00.603857] Key type id_resolver registered
<br>[ =C2=A0=C2=A0=C2=A00.608041] Key type id_legacy registered
<br>[ =C2=A0=C2=A0=C2=A00.612067] nfs4filelayout_init: NFSv4 File Layout Dr=
iver Registering...
<br><span class=3D"gmail-im">[ =C2=A0=C2=A0=C2=A00.618796] nfs4flexfilelayo=
ut_init: NFSv4 Flexfile Layout Driver Registering...
<br>[ =C2=A0=C2=A0=C2=A00.626246] jffs2: version 2.2. (NAND) =EF=BF=BD=C2=
=A9 2001-2006 Red Hat, Inc.
<br></span>[ =C2=A0=C2=A0=C2=A00.632759] 9p: Installing v9fs 9p2000 file sy=
stem support
<br>[ =C2=A0=C2=A0=C2=A00.650797] Key type asymmetric registered
<br>[ =C2=A0=C2=A0=C2=A00.652038] Asymmetric key parser &#39;x509&#39; regi=
stered
<br>[ =C2=A0=C2=A0=C2=A00.656972] Block layer SCSI generic (bsg) driver ver=
sion 0.4 loaded (major 244)
<br>[ =C2=A0=C2=A0=C2=A00.664383] io scheduler mq-deadline registered
<br>[ =C2=A0=C2=A0=C2=A00.668932] io scheduler kyber registered
<br>[ =C2=A0=C2=A0=C2=A00.677135] EINJ: ACPI disabled.
<br>[ =C2=A0=C2=A0=C2=A00.685891] imx-sdma 302c0000.dma-controller: Direct =
firmware load for imx/sdma/sdma-imx7d.bin failed with error -2
<br>[ =C2=A0=C2=A0=C2=A00.693543] imx-sdma 302c0000.dma-controller: Falling=
 back to sysfs fallback for: imx/sdma/sdma-imx7d.bin
<br>[ =C2=A0=C2=A0=C2=A00.710746] mxs-dma 33000000.dma-controller: initiali=
zed
<br>[ =C2=A0=C2=A0=C2=A00.714250] Bus freq driver module loaded
<br>[ =C2=A0=C2=A0=C2=A00.722266] Serial: 8250/16550 driver, 4 ports, IRQ s=
haring enabled
<br>[ =C2=A0=C2=A0=C2=A00.727674] 30890000.serial: ttymxc1 at MMIO 0x308900=
00 (irq =3D 34, base_baud =3D 1500000) is a IMX
<br>[ =C2=A0=C2=A0=C2=A00.734595] printk: console [ttymxc1] enabled
<br>[ =C2=A0=C2=A0=C2=A00.734595] printk: console [ttymxc1] enabled
<br>[ =C2=A0=C2=A0=C2=A00.743235] printk: bootconsole [ec_imx6q0] disabled
<br>[ =C2=A0=C2=A0=C2=A00.743235] printk: bootconsole [ec_imx6q0] disabled
<br>[ =C2=A0=C2=A0=C2=A00.755182] imx-drm soc@0:bus@32c00000:display-subsys=
tem: no available port
<br>[ =C2=A0=C2=A0=C2=A00.773488] loop: module loaded
<br>[ =C2=A0=C2=A0=C2=A00.778553] imx ahci driver is registered.
<br>[ =C2=A0=C2=A0=C2=A00.785346] spi_imx 30830000.spi: probed
<br>[ =C2=A0=C2=A0=C2=A00.790183] spi-nor spi3.0: n25q256ax1 (32768 Kbytes)
<br>[ =C2=A0=C2=A0=C2=A00.795277] 7 fixed-partitions partitions found on MT=
D device 30bb0000.spi
<br>[ =C2=A0=C2=A0=C2=A00.802157] Creating 7 MTD partitions on &quot;30bb00=
00.spi&quot;:
<br>[ =C2=A0=C2=A0=C2=A00.807477] 0x000000000000-0x000000200000 : &quot;U-B=
oot&quot;
<br>[ =C2=A0=C2=A0=C2=A00.817371] 0x000000200000-0x000000202000 : &quot;U-B=
oot Env&quot;
<br>[ =C2=A0=C2=A0=C2=A00.822696] mtd: partition &quot;U-Boot Env&quot; doe=
sn&#39;t end on an erase/write block -- force read-only
<br>[ =C2=A0=C2=A0=C2=A00.833323] 0x000000202000-0x000000204000 : &quot;U-B=
oot Env 2&quot;
<br>[ =C2=A0=C2=A0=C2=A00.838819] mtd: partition &quot;U-Boot Env 2&quot; d=
oesn&#39;t start on an erase/write block boundary -- force read-only
<br>[ =C2=A0=C2=A0=C2=A00.853314] 0x000000204000-0x000000205000 : &quot;boo=
t.scr&quot;
<br>[ =C2=A0=C2=A0=C2=A00.858463] mtd: partition &quot;boot.scr&quot; doesn=
&#39;t start on an erase/write block boundary -- force read-only
<br>[ =C2=A0=C2=A0=C2=A00.869306] 0x000000205000-0x000000210000 : &quot;Dev=
ice Tree Blob&quot;
<br>[ =C2=A0=C2=A0=C2=A00.875150] mtd: partition &quot;Device Tree Blob&quo=
t; doesn&#39;t start on an erase/write block boundary -- force read-only
<br>[ =C2=A0=C2=A0=C2=A00.889320] 0x000000210000-0x000000e10000 : &quot;Com=
pressed Kernel&quot;
<br>[ =C2=A0=C2=A0=C2=A00.897335] 0x000000e10000-0x000002000000 : &quot;Squ=
ashFS&quot;
<br>[ =C2=A0=C2=A0=C2=A00.906575] libphy: Fixed MDIO Bus: probed
<br>[ =C2=A0=C2=A0=C2=A00.911375] tun: Universal TUN/TAP device driver, 1.6
<br>[ =C2=A0=C2=A0=C2=A00.917133] thunder_xcv, ver 1.0
<br>[ =C2=A0=C2=A0=C2=A00.920386] thunder_bgx, ver 1.0
<br>[ =C2=A0=C2=A0=C2=A00.923649] nicpf, ver 1.0
<br>[ =C2=A0=C2=A0=C2=A00.927576] pps pps0: new PPS source ptp0
<br>[ =C2=A0=C2=A0=C2=A00.944110] libphy: fec_enet_mii_bus: probed
<br>[ =C2=A0=C2=A0=C2=A00.948923] fec 30be0000.ethernet eth0: registered PH=
C device 0
<br>[ =C2=A0=C2=A0=C2=A00.955395] Freescale FM module, FMD API version 21.1=
.0
<br>[ =C2=A0=C2=A0=C2=A00.960856] Freescale FM Ports module
<br>[ =C2=A0=C2=A0=C2=A00.964517] fsl_mac: fsl_mac: FSL FMan MAC API based =
driver
<br>[ =C2=A0=C2=A0=C2=A00.970260] fsl_dpa: FSL DPAA Ethernet driver
<br>[ =C2=A0=C2=A0=C2=A00.974714] fsl_advanced: FSL DPAA Advanced drivers:
<br>[ =C2=A0=C2=A0=C2=A00.979684] fsl_proxy: FSL DPAA Proxy initialization =
driver
<br>[ =C2=A0=C2=A0=C2=A00.985344] fsl_oh: FSL FMan Offline Parsing port dri=
ver
<br>[ =C2=A0=C2=A0=C2=A00.991426] hclge is initializing
<br>[ =C2=A0=C2=A0=C2=A00.994751] hns3: Hisilicon Ethernet Network Driver f=
or Hip08 Family - version
<br>[ =C2=A0=C2=A0=C2=A01.001977] hns3: Copyright (c) 2017 Huawei Corporati=
on.
<br>[ =C2=A0=C2=A0=C2=A01.007347] e1000: Intel(R) PRO/1000 Network Driver -=
 version 7.3.21-k8-NAPI
<br>[ =C2=A0=C2=A0=C2=A01.014400] e1000: Copyright (c) 1999-2006 Intel Corp=
oration.
<br>[ =C2=A0=C2=A0=C2=A01.020176] e1000e: Intel(R) PRO/1000 Network Driver =
- 3.2.6-k
<br>[ =C2=A0=C2=A0=C2=A01.026012] e1000e: Copyright(c) 1999 - 2015 Intel Co=
rporation.
<br>[ =C2=A0=C2=A0=C2=A01.031967] igb: Intel(R) Gigabit Ethernet Network Dr=
iver - version 5.6.0-k
<br>[ =C2=A0=C2=A0=C2=A01.038938] igb: Copyright (c) 2007-2014 Intel Corpor=
ation.
<br>[ =C2=A0=C2=A0=C2=A01.044545] igbvf: Intel(R) Gigabit Virtual Function =
Network Driver - version 2.4.0-k
<br>[ =C2=A0=C2=A0=C2=A01.052378] igbvf: Copyright (c) 2009 - 2012 Intel Co=
rporation.
<br>[ =C2=A0=C2=A0=C2=A01.058433] sky2: driver version 1.30
<br>[ =C2=A0=C2=A0=C2=A01.062933] VFIO - User Level meta-driver version: 0.=
3
<br>[ =C2=A0=C2=A0=C2=A01.069701] ehci_hcd: USB 2.0 &#39;Enhanced&#39; Host=
 Controller (EHCI) Driver
<br>[ =C2=A0=C2=A0=C2=A01.076239] ehci-pci: EHCI PCI platform driver
<br>[ =C2=A0=C2=A0=C2=A01.080767] ehci-platform: EHCI generic platform driv=
er
<br>[ =C2=A0=C2=A0=C2=A01.086146] ohci_hcd: USB 1.1 &#39;Open&#39; Host Con=
troller (OHCI) Driver
<br><span class=3D"gmail-im">[ =C2=A0=C2=A0=C2=A01.092348] ohci-pci: OHCI P=
CI platform driver
<br>[ =C2=A0=C2=A0=C2=A01.096826] ohci-platform: OHCI generic platform driv=
er
<br></span>[ =C2=A0=C2=A0=C2=A01.102542] usbcore: registered new interface =
driver usb-storage
<br>[ =C2=A0=C2=A0=C2=A01.108613] usbcore: registered new interface driver =
usbserial_generic
<br>[ =C2=A0=C2=A0=C2=A01.115159] usbserial: USB Serial support registered =
for generic
<br>[ =C2=A0=C2=A0=C2=A01.121191] usbcore: registered new interface driver =
ftdi_sio
<br>[ =C2=A0=C2=A0=C2=A01.126952] usbserial: USB Serial support registered =
for FTDI USB Serial Device
<br>[ =C2=A0=C2=A0=C2=A01.134291] usbcore: registered new interface driver =
usb_serial_simple
<br>[ =C2=A0=C2=A0=C2=A01.140836] usbserial: USB Serial support registered =
for carelink
<br>[ =C2=A0=C2=A0=C2=A01.146944] usbserial: USB Serial support registered =
for zio
<br>[ =C2=A0=C2=A0=C2=A01.152619] usbserial: USB Serial support registered =
for funsoft
<br>[ =C2=A0=C2=A0=C2=A01.158641] usbserial: USB Serial support registered =
for flashloader
<br>[ =C2=A0=C2=A0=C2=A01.165010] usbserial: USB Serial support registered =
for google
<br>[ =C2=A0=C2=A0=C2=A01.170946] usbserial: USB Serial support registered =
for libtransistor
<br>[ =C2=A0=C2=A0=C2=A01.177489] usbserial: USB Serial support registered =
for vivopay
<br>[ =C2=A0=C2=A0=C2=A01.183513] usbserial: USB Serial support registered =
for moto_modem
<br>[ =C2=A0=C2=A0=C2=A01.189801] usbserial: USB Serial support registered =
for motorola_tetra
<br>[ =C2=A0=C2=A0=C2=A01.196438] usbserial: USB Serial support registered =
for novatel_gps
<br>[ =C2=A0=C2=A0=C2=A01.202809] usbserial: USB Serial support registered =
for hp4x
<br>[ =C2=A0=C2=A0=C2=A01.208572] usbserial: USB Serial support registered =
for suunto
<br>[ =C2=A0=C2=A0=C2=A01.214508] usbserial: USB Serial support registered =
for siemens_mpi
<br>[ =C2=A0=C2=A0=C2=A01.223211] input: 30370000.snvs:snvs-powerkey as /de=
vices/platform/soc@0/soc@0:bus@30000000/30370000.snvs/30370000.snvs:snvs-po=
werkey/input/input0
<br>[ =C2=A0=C2=A0=C2=A01.238238] snvs_rtc 30370000.snvs:snvs-rtc-lp: regis=
tered as rtc0
<br>[ =C2=A0=C2=A0=C2=A01.244505] i2c /dev entries driver
<br>[ =C2=A0=C2=A0=C2=A01.252447] imx2-wdt 30280000.watchdog: timeout 60 se=
c (nowayout=3D0)
<br>[ =C2=A0=C2=A0=C2=A01.258987] Bluetooth: HCI UART driver ver 2.3
<br>[ =C2=A0=C2=A0=C2=A01.263444] Bluetooth: HCI UART protocol H4 registere=
d
<br>[ =C2=A0=C2=A0=C2=A01.268589] Bluetooth: HCI UART protocol BCSP registe=
red
<br>[ =C2=A0=C2=A0=C2=A01.273925] Bluetooth: HCI UART protocol LL registere=
d
<br>[ =C2=A0=C2=A0=C2=A01.279069] Bluetooth: HCI UART protocol ATH3K regist=
ered
<br>[ =C2=A0=C2=A0=C2=A01.284486] Bluetooth: HCI UART protocol Three-wire (=
H5) registered
<br>[ =C2=A0=C2=A0=C2=A01.290836] Bluetooth: HCI UART protocol Broadcom reg=
istered
<br>[ =C2=A0=C2=A0=C2=A01.296520] Bluetooth: HCI UART protocol QCA register=
ed
<br>[ =C2=A0=C2=A0=C2=A01.303494] sdhci: Secure Digital Host Controller Int=
erface driver
<br>[ =C2=A0=C2=A0=C2=A01.309687] sdhci: Copyright(c) Pierre Ossman
<br>[ =C2=A0=C2=A0=C2=A01.314212] Synopsys Designware Multimedia Card Inter=
face Driver
<br>[ =C2=A0=C2=A0=C2=A01.320736] sdhci-pltfm: SDHCI platform and OF driver=
 helper
<br>[ =C2=A0=C2=A0=C2=A01.327135] mmc1: CQHCI version 5.10
<br>[ =C2=A0=C2=A0=C2=A01.331200] mmc2: CQHCI version 5.10
<br>[ =C2=A0=C2=A0=C2=A01.366866] mmc2: SDHCI controller on 30b60000.mmc [3=
0b60000.mmc] using ADMA
<br>[ =C2=A0=C2=A0=C2=A01.376165] ledtrig-cpu: registered to indicate activ=
ity on CPUs
<br>[ =C2=A0=C2=A0=C2=A01.383297] caam 30900000.crypto: device ID =3D 0x0a1=
6040100000000 (Era 9)
<br>[ =C2=A0=C2=A0=C2=A01.390069] caam 30900000.crypto: job rings =3D 3, qi=
 =3D 0
<br>[ =C2=A0=C2=A0=C2=A01.404678] caam algorithms registered in /proc/crypt=
o
<br>[ =C2=A0=C2=A0=C2=A01.410556] caam 30900000.crypto: caam pkc algorithms=
 registered in /proc/crypto
<br>[ =C2=A0=C2=A0=C2=A01.420079] caam_jr 30901000.jr: registering rng-caam
<br>[ =C2=A0=C2=A0=C2=A01.429895] caam-snvs 30370000.caam-snvs: can&#39;t g=
et snvs clock
<br>[ =C2=A0=C2=A0=C2=A01.435783] caam-snvs 30370000.caam-snvs: violation h=
andlers armed - non-secure state
<br>[ =C2=A0=C2=A0=C2=A01.444200] usbcore: registered new interface driver =
usbhid
<br>[ =C2=A0=C2=A0=C2=A01.449780] usbhid: USB HID core driver
<br>[ =C2=A0=C2=A0=C2=A01.455330] No fsl,qman node
<br>[ =C2=A0=C2=A0=C2=A01.458228] Freescale USDPAA process driver
<br>[ =C2=A0=C2=A0=C2=A01.462416] fsl-usdpaa: no region found
<br>[ =C2=A0=C2=A0=C2=A01.466254] Freescale USDPAA process IRQ driver
<br>[ =C2=A0=C2=A0=C2=A01.474284] optee: probing for conduit method from DT=
.
<br>[ =C2=A0=C2=A0=C2=A01.479448] optee: revision 3.2 (6a22e6e8)
<br>[ =C2=A0=C2=A0=C2=A01.480265] optee: dynamic shared memory is enabled
<br>[ =C2=A0=C2=A0=C2=A01.489481] optee: initialized driver
<br>[ =C2=A0=C2=A0=C2=A01.495289] mmc2: Command Queue Engine enabled
<br>[ =C2=A0=C2=A0=C2=A01.496837] wm8524-codec audio-codec: Failed to get m=
ute line: -517
<br>[ =C2=A0=C2=A0=C2=A01.499792] mmc2: new HS400 Enhanced strobe MMC card =
at address 0001
<br>[ =C2=A0=C2=A0=C2=A01.506505] OF: /sound-bt-sco/simple-audio-card,cpu: =
could not get #sound-dai-cells for /soc@0/bus@30000000/sai@30020000
<br>[ =C2=A0=C2=A0=C2=A01.513508] mmcblk2: mmc2:0001 DG4016 7.49 GiB =C2=A0=
<br>[ =C2=A0=C2=A0=C2=A01.523248] asoc-simple-card sound-bt-sco: parse erro=
r -22
<br>[ =C2=A0=C2=A0=C2=A01.523265] asoc-simple-card: probe of sound-bt-sco f=
ailed with error -22
<br>[ =C2=A0=C2=A0=C2=A01.527908] mmcblk2boot0: mmc2:0001 DG4016 partition =
1 4.00 MiB
<br>[ =C2=A0=C2=A0=C2=A01.546163] mmcblk2boot1: mmc2:0001 DG4016 partition =
2 4.00 MiB
<br>[ =C2=A0=C2=A0=C2=A01.547285] pktgen: Packet Generator for packet perfo=
rmance testing. Version: 2.75
<br>[ =C2=A0=C2=A0=C2=A01.552232] mmcblk2gp0: mmc2:0001 DG4016 partition 4 =
3.52 GiB
<br>[ =C2=A0=C2=A0=C2=A01.565904] mmcblk2rpmb: mmc2:0001 DG4016 partition 3=
 4.00 MiB, chardev (237:0)
<br>[ =C2=A0=C2=A0=C2=A01.566798] NET: Registered protocol family 26
<br>[ =C2=A0=C2=A0=C2=A01.578184] NET: Registered protocol family 10
<br>[ =C2=A0=C2=A0=C2=A01.582998] =C2=A0mmcblk2: p1 p2
<br>[ =C2=A0=C2=A0=C2=A01.583960] Segment Routing with IPv6
<br>[ =C2=A0=C2=A0=C2=A01.589559] NET: Registered protocol family 17
<br>[ =C2=A0=C2=A0=C2=A01.594201] =C2=A0mmcblk2gp0: p1 p2
<br>[ =C2=A0=C2=A0=C2=A01.594430] Bluetooth: RFCOMM TTY layer initialized
<br>[ =C2=A0=C2=A0=C2=A01.602179] Bluetooth: RFCOMM socket layer initialize=
d
<br>[ =C2=A0=C2=A0=C2=A01.607335] Bluetooth: RFCOMM ver 1.11
<br>[ =C2=A0=C2=A0=C2=A01.611099] Bluetooth: BNEP (Ethernet Emulation) ver =
1.3
<br>[ =C2=A0=C2=A0=C2=A01.616414] Bluetooth: BNEP filters: protocol multica=
st
<br>[ =C2=A0=C2=A0=C2=A01.621653] Bluetooth: BNEP socket layer initialized
<br>[ =C2=A0=C2=A0=C2=A01.626623] Bluetooth: HIDP (Human Interface Emulatio=
n) ver 1.2
<br>[ =C2=A0=C2=A0=C2=A01.632549] Bluetooth: HIDP socket layer initialized
<br>[ =C2=A0=C2=A0=C2=A01.637554] 8021q: 802.1Q VLAN Support v1.8
<br>[ =C2=A0=C2=A0=C2=A01.641764] lib80211: common routines for IEEE802.11 =
drivers
<br>[ =C2=A0=C2=A0=C2=A01.647544] 9pnet: Installing 9P2000 support
<br>[ =C2=A0=C2=A0=C2=A01.651845] tsn generic netlink module v1 init...
<br>[ =C2=A0=C2=A0=C2=A01.656632] Key type dns_resolver registered
<br>[ =C2=A0=C2=A0=C2=A01.661668] registered taskstats version 1
<br>[ =C2=A0=C2=A0=C2=A01.665794] Loading compiled-in X.509 certificates
<br>[ =C2=A0=C2=A0=C2=A01.692510] usb_phy_generic usbphynop1: usbphynop1 su=
pply vcc not found, using dummy regulator
<br>[ =C2=A0=C2=A0=C2=A01.701297] usb_phy_generic usbphynop2: usbphynop2 su=
pply vcc not found, using dummy regulator
<br>[ =C2=A0=C2=A0=C2=A01.733590] random: fast init done
<br>[ =C2=A0=C2=A0=C2=A01.738992] LDO6: supplied by regulator-dummy
<br>[ =C2=A0=C2=A0=C2=A01.743499] i2c i2c-0: IMX I2C adapter registered
<br>[ =C2=A0=C2=A0=C2=A01.749209] i2c i2c-1: IMX I2C adapter registered
<br>[ =C2=A0=C2=A0=C2=A01.754765] i2c i2c-2: IMX I2C adapter registered
<br>[ =C2=A0=C2=A0=C2=A01.760259] i2c i2c-3: IMX I2C adapter registered
<br>[ =C2=A0=C2=A0=C2=A01.765281] imx-cpufreq-dt imx-cpufreq-dt: cpu speed =
grade 2 mkt segment 2 supported-hw 0x4 0x4
<br>[ =C2=A0=C2=A0=C2=A01.777862] mmc1: CQHCI version 5.10
<br>[ =C2=A0=C2=A0=C2=A01.781506] sdhci-esdhc-imx 30b50000.mmc: Got CD GPIO
<br>[ =C2=A0=C2=A0=C2=A01.817451] mmc1: SDHCI controller on 30b50000.mmc [3=
0b50000.mmc] using ADMA
<br>[ =C2=A0=C2=A0=C2=A01.826135] imx8mm-pinctrl 30330000.pinctrl: pin=20
MX8MM_IOMUXC_I2C4_SDA already requested by 30a50000.i2c; cannot claim=20
for audio-codec
<br>[ =C2=A0=C2=A0=C2=A01.838253] imx8mm-pinctrl 30330000.pinctrl: pin-140 =
(audio-codec) status -22
<br>[ =C2=A0=C2=A0=C2=A01.845397] imx8mm-pinctrl 30330000.pinctrl: could no=
t request=20
pin 140 (MX8MM_IOMUXC_I2C4_SDA) from group gpiowlfgrp =C2=A0on device=20
30330000.pinctrl
<br>[ =C2=A0=C2=A0=C2=A01.858357] wm8524-codec audio-codec: Error applying =
setting, reverse things back
<br>[ =C2=A0=C2=A0=C2=A01.865856] wm8524-codec: probe of audio-codec failed=
 with error -22
<br>[ =C2=A0=C2=A0=C2=A01.876549] input: bd718xx-pwrkey as /devices/platfor=
m/soc@0/soc@0:bus@30800000/30a20000.i2c/i2c-0/0-004b/gpio-keys.1.auto/input=
/input1
<br>[ =C2=A0=C2=A0=C2=A01.890300] snvs_rtc 30370000.snvs:snvs-rtc-lp: setti=
ng system clock to 1970-01-01T00:00:00 UTC (0)
<br>[ =C2=A0=C2=A0=C2=A01.899718] cfg80211: Loading compiled-in X.509 certi=
ficates for regulatory database
<br>[ =C2=A0=C2=A0=C2=A01.911354] cfg80211: Loaded X.509 cert &#39;sforshee=
: 00b28ddf47aef9cea7&#39;
<br>[ =C2=A0=C2=A0=C2=A01.917963] platform regulatory.0: Direct firmware lo=
ad for regulatory.db failed with error -2
<br>[ =C2=A0=C2=A0=C2=A01.923612] ALSA device list:
<br>[ =C2=A0=C2=A0=C2=A01.926586] platform regulatory.0: Falling back to sy=
sfs fallback for: regulatory.db
<br>[ =C2=A0=C2=A0=C2=A01.929550] =C2=A0=C2=A0No soundcards found.
<br>[ =C2=A0=C2=A0=C2=A01.947317] EXT4-fs (mmcblk2p2): mounted filesystem w=
ith ordered data mode. Opts: (null)
<br>[ =C2=A0=C2=A0=C2=A01.955496] VFS: Mounted root (ext4 filesystem) reado=
nly on device 179:2.
<br>[ =C2=A0=C2=A0=C2=A01.963119] devtmpfs: mounted
<br>[ =C2=A0=C2=A0=C2=A01.966900] Freeing unused kernel memory: 2880K
<br>[ =C2=A0=C2=A0=C2=A01.989378] Run /sbin/init as init process
<br>[ =C2=A0=C2=A0=C2=A02.059403] audit: type=3D1404 audit(1.969:2): enforc=
ing=3D1=20
old_enforcing=3D0 auid=3D4294967295 ses=3D4294967295 enabled=3D1 old-enable=
d=3D1=20
lsm=3Dselinux res=3D1
<br>[ =C2=A0=C2=A0=C2=A02.199361] SELinux: =C2=A0Permission watch in class =
filesystem not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.206919] SELinux: =C2=A0Permission watch in class =
file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.213885] SELinux: =C2=A0Permission watch_mount in =
class file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.221377] SELinux: =C2=A0Permission watch_sb in cla=
ss file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.228601] SELinux: =C2=A0Permission watch_with_perm=
 in class file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.236441] SELinux: =C2=A0Permission watch_reads in =
class file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.243935] SELinux: =C2=A0Permission watch in class =
dir not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.250819] SELinux: =C2=A0Permission watch_mount in =
class dir not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.258216] SELinux: =C2=A0Permission watch_sb in cla=
ss dir not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.265361] SELinux: =C2=A0Permission watch_with_perm=
 in class dir not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.273105] SELinux: =C2=A0Permission watch_reads in =
class dir not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.280520] SELinux: =C2=A0Permission watch in class =
lnk_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.287830] SELinux: =C2=A0Permission watch_mount in =
class lnk_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.295669] SELinux: =C2=A0Permission watch_sb in cla=
ss lnk_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.303239] SELinux: =C2=A0Permission watch_with_perm=
 in class lnk_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.311429] SELinux: =C2=A0Permission watch_reads in =
class lnk_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.319266] SELinux: =C2=A0Permission watch in class =
chr_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.326585] SELinux: =C2=A0Permission watch_mount in =
class chr_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.334416] SELinux: =C2=A0Permission watch_sb in cla=
ss chr_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.341994] SELinux: =C2=A0Permission watch_with_perm=
 in class chr_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.350172] SELinux: =C2=A0Permission watch_reads in =
class chr_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.358021] SELinux: =C2=A0Permission watch in class =
blk_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.365332] SELinux: =C2=A0Permission watch_mount in =
class blk_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.373171] SELinux: =C2=A0Permission watch_sb in cla=
ss blk_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.380742] SELinux: =C2=A0Permission watch_with_perm=
 in class blk_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.388927] SELinux: =C2=A0Permission watch_reads in =
class blk_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.396765] SELinux: =C2=A0Permission watch in class =
sock_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.404171] SELinux: =C2=A0Permission watch_mount in =
class sock_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.412088] SELinux: =C2=A0Permission watch_sb in cla=
ss sock_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.419757] SELinux: =C2=A0Permission watch_with_perm=
 in class sock_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.428022] SELinux: =C2=A0Permission watch_reads in =
class sock_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.435953] SELinux: =C2=A0Permission watch in class =
fifo_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.443350] SELinux: =C2=A0Permission watch_mount in =
class fifo_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.451275] SELinux: =C2=A0Permission watch_sb in cla=
ss fifo_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.458933] SELinux: =C2=A0Permission watch_with_perm=
 in class fifo_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.467206] SELinux: =C2=A0Permission watch_reads in =
class fifo_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.475450] SELinux: the above unknown classes and pe=
rmissions will be allowed
<br>[ =C2=A0=C2=A0=C2=A02.482716] SELinux: =C2=A0policy capability network_=
peer_controls=3D1
<br>[ =C2=A0=C2=A0=C2=A02.488638] SELinux: =C2=A0policy capability open_per=
ms=3D1
<br>[ =C2=A0=C2=A0=C2=A02.493612] SELinux: =C2=A0policy capability extended=
_socket_class=3D1
<br>[ =C2=A0=C2=A0=C2=A02.499534] SELinux: =C2=A0policy capability always_c=
heck_network=3D0
<br>[ =C2=A0=C2=A0=C2=A02.505375] SELinux: =C2=A0policy capability cgroup_s=
eclabel=3D1
<br>[ =C2=A0=C2=A0=C2=A02.510776] SELinux: =C2=A0policy capability nnp_nosu=
id_transition=3D1
<br>[ =C2=A0=C2=A0=C2=A02.551944] audit: type=3D1403 audit(2.461:3): auid=
=3D4294967295 ses=3D4294967295 lsm=3Dselinux res=3D1
<br>[ =C2=A0=C2=A0=C2=A02.560140] systemd[1]: Successfully loaded SELinux p=
olicy in 501.858ms.
<br>[ =C2=A0=C2=A0=C2=A02.585453] systemd[1]: System time before build time=
, advancing clock.
<br>[ =C2=A0=C2=A0=C2=A02.596311] systemd[1]: Unable to fix SELinux securit=
y context of /dev: Operation not permitted
<br>[ =C2=A0=C2=A0=C2=A02.596451] audit: type=3D1401 audit(1600598638.004:4=
): op=3Dsecurity_validate_transition seresult=3Ddenied oldcontext=3Dsystem_=
u:object_r:device_t:s15:c0.c1023 newcontext=3Dsystem_u:object_r:device_t:s0=
 taskcontext=3Dsystem_u:system_r:kernel_t:s15:c0.c1023 tclassr
<br>[ =C2=A0=C2=A0=C2=A02.606247] systemd[1]: Failed to mount tmpfs at /dev=
/shm: No such file or directory
<br>[ =C2=A0=C2=A0=C2=A02.627743] audit: type=3D1400 audit(1600598638.016:5=
): avc:=20
=C2=A0denied =C2=A0{ create } for =C2=A0pid=3D1 comm=3D&quot;systemd&quot; =
name=3D&quot;shm&quot;=20
scontext=3Dsystem_u:system_r:kernel_t:s15:c0.c1023 tcontext=3Dsystem_u:obje=
ct_r:tmpfs_t:s0 tclass=3Ddir permissive=3D0
<br>[ =C2=A0=C2=A0=C2=A02.637910] systemd[1]: Unable to fix SELinux securit=
y context of /run: Operation not permitted
<br>[ =C2=A0=C2=A0=C2=A02.655581] audit: type=3D1400 audit(1600598638.044:6=
): avc:=20
=C2=A0denied =C2=A0{ create } for =C2=A0pid=3D1 comm=3D&quot;systemd&quot; =
name=3D&quot;pts&quot;=20
scontext=3Dsystem_u:system_r:kernel_t:s15:c0.c1023 tcontext=3Dsystem_u:obje=
ct_r:devpts_t:s0-s15:c0.c1023 tclass=3Ddir permissive=3D0
<br>[ =C2=A0=C2=A0=C2=A02.665724] systemd[1]: Unable to fix SELinux securit=
y context of /sys/fs/cgroup: Operation not permitted
<br>[ =C2=A0=C2=A0=C2=A02.685536] audit: type=3D1401 audit(1600598638.048:7=
): op=3Dsecurity_validate_transition seresult=3Ddenied oldcontext=3Dsystem_=
u:object_r:tmpfs_t:s15:c0.c1023 newcontext=3Dsystem_u:object_r:var_run_t:s0=
-s15:c0.c1023 taskcontext=3Dsystem_u:system_r:kernel_t:s15:c0r
<br>[ =C2=A0=C2=A0=C2=A02.719230] audit: type=3D1401 audit(1600598638.076:8=
): op=3Dsecurity_validate_transition seresult=3Ddenied oldcontext=3Dsystem_=
u:object_r:tmpfs_t:s15:c0.c1023 newcontext=3Dsystem_u:object_r:cgroup_t:s0 =
taskcontext=3Dsystem_u:system_r:kernel_t:s15:c0.c1023 tclass=3Dr
<br>[ =C2=A0=C2=A0=C2=A02.741846] audit: type=3D1400 audit(1600598638.108:9=
): avc:=20
=C2=A0denied =C2=A0{ create } for =C2=A0pid=3D1 comm=3D&quot;systemd&quot; =
name=3D&quot;bpf&quot;=20
scontext=3Dsystem_u:system_r:kernel_t:s15:c0.c1023 tcontext=3Dsystem_u:obje=
ct_r:sysfs_t:s0 tclass=3Ddir permissive=3D0
<br><span class=3D"gmail-im">[<span style=3D"font-weight:bold;color:rgb(0,0=
,0);background-color:rgb(255,255,255)">!!!!!!</span><span style=3D"color:rg=
b(0,0,0);background-color:rgb(255,255,255)">] Failed to mount API filesyste=
ms.
</span><br></span>[ =C2=A0=C2=A0=C2=A02.780814] systemd[1]: Freezing execut=
ion.</span></div><div><br></div></div>

--00000000000047f33305c24056aa--

--00000000000047f33505c24056ac
Content-Type: application/octet-stream; name=".config"
Content-Disposition: attachment; filename=".config"
Content-Transfer-Encoding: base64
Content-ID: <f_konnl4kc0>
X-Attachment-Id: f_konnl4kc0

IwojIEF1dG9tYXRpY2FsbHkgZ2VuZXJhdGVkIGZpbGU7IERPIE5PVCBFRElULgojIExpbnV4L2Fy
bTY0IDUuNC4xMTQgS2VybmVsIENvbmZpZ3VyYXRpb24KIwoKIwojIENvbXBpbGVyOiBhYXJjaDY0
LXBva3ktbGludXgtZ2NjIChHQ0MpIDkuMy4wCiMKQ09ORklHX0NDX0lTX0dDQz15CkNPTkZJR19H
Q0NfVkVSU0lPTj05MDMwMApDT05GSUdfQ0xBTkdfVkVSU0lPTj0wCkNPTkZJR19DQ19IQVNfQVNN
X0dPVE89eQpDT05GSUdfQ0NfSEFTX0FTTV9JTkxJTkU9eQpDT05GSUdfSVJRX1dPUks9eQpDT05G
SUdfQlVJTERUSU1FX0VYVEFCTEVfU09SVD15CkNPTkZJR19USFJFQURfSU5GT19JTl9UQVNLPXkK
CiMKIyBHZW5lcmFsIHNldHVwCiMKQ09ORklHX0lOSVRfRU5WX0FSR19MSU1JVD0zMgojIENPTkZJ
R19DT01QSUxFX1RFU1QgaXMgbm90IHNldApDT05GSUdfTE9DQUxWRVJTSU9OPSIiCkNPTkZJR19M
T0NBTFZFUlNJT05fQVVUTz15CkNPTkZJR19CVUlMRF9TQUxUPSIiCkNPTkZJR19ERUZBVUxUX0hP
U1ROQU1FPSIobm9uZSkiCkNPTkZJR19TV0FQPXkKQ09ORklHX1NZU1ZJUEM9eQpDT05GSUdfU1lT
VklQQ19TWVNDVEw9eQpDT05GSUdfUE9TSVhfTVFVRVVFPXkKQ09ORklHX1BPU0lYX01RVUVVRV9T
WVNDVEw9eQpDT05GSUdfQ1JPU1NfTUVNT1JZX0FUVEFDSD15CiMgQ09ORklHX1VTRUxJQiBpcyBu
b3Qgc2V0CkNPTkZJR19BVURJVD15CkNPTkZJR19IQVZFX0FSQ0hfQVVESVRTWVNDQUxMPXkKQ09O
RklHX0FVRElUU1lTQ0FMTD15CgojCiMgSVJRIHN1YnN5c3RlbQojCkNPTkZJR19HRU5FUklDX0lS
UV9QUk9CRT15CkNPTkZJR19HRU5FUklDX0lSUV9TSE9XPXkKQ09ORklHX0dFTkVSSUNfSVJRX1NI
T1dfTEVWRUw9eQpDT05GSUdfR0VORVJJQ19JUlFfRUZGRUNUSVZFX0FGRl9NQVNLPXkKQ09ORklH
X0dFTkVSSUNfSVJRX01JR1JBVElPTj15CkNPTkZJR19IQVJESVJRU19TV19SRVNFTkQ9eQpDT05G
SUdfR0VORVJJQ19JUlFfQ0hJUD15CkNPTkZJR19JUlFfRE9NQUlOPXkKQ09ORklHX0lSUV9ET01B
SU5fSElFUkFSQ0hZPXkKQ09ORklHX0dFTkVSSUNfTVNJX0lSUT15CkNPTkZJR19HRU5FUklDX01T
SV9JUlFfRE9NQUlOPXkKQ09ORklHX0lSUV9NU0lfSU9NTVU9eQpDT05GSUdfSEFORExFX0RPTUFJ
Tl9JUlE9eQpDT05GSUdfSVJRX0ZPUkNFRF9USFJFQURJTkc9eQpDT05GSUdfU1BBUlNFX0lSUT15
CiMgQ09ORklHX0dFTkVSSUNfSVJRX0RFQlVHRlMgaXMgbm90IHNldAojIGVuZCBvZiBJUlEgc3Vi
c3lzdGVtCgpDT05GSUdfR0VORVJJQ19JUlFfTVVMVElfSEFORExFUj15CkNPTkZJR19BUkNIX0NM
T0NLU09VUkNFX0RBVEE9eQpDT05GSUdfR0VORVJJQ19USU1FX1ZTWVNDQUxMPXkKQ09ORklHX0dF
TkVSSUNfQ0xPQ0tFVkVOVFM9eQpDT05GSUdfQVJDSF9IQVNfVElDS19CUk9BRENBU1Q9eQpDT05G
SUdfR0VORVJJQ19DTE9DS0VWRU5UU19CUk9BRENBU1Q9eQoKIwojIFRpbWVycyBzdWJzeXN0ZW0K
IwpDT05GSUdfVElDS19PTkVTSE9UPXkKQ09ORklHX05PX0haX0NPTU1PTj15CiMgQ09ORklHX0ha
X1BFUklPRElDIGlzIG5vdCBzZXQKQ09ORklHX05PX0haX0lETEU9eQojIENPTkZJR19OT19IWl9G
VUxMIGlzIG5vdCBzZXQKIyBDT05GSUdfTk9fSFogaXMgbm90IHNldApDT05GSUdfSElHSF9SRVNf
VElNRVJTPXkKIyBlbmQgb2YgVGltZXJzIHN1YnN5c3RlbQoKIyBDT05GSUdfUFJFRU1QVF9OT05F
IGlzIG5vdCBzZXQKIyBDT05GSUdfUFJFRU1QVF9WT0xVTlRBUlkgaXMgbm90IHNldApDT05GSUdf
UFJFRU1QVD15CkNPTkZJR19QUkVFTVBUX0NPVU5UPXkKQ09ORklHX1BSRUVNUFRJT049eQoKIwoj
IENQVS9UYXNrIHRpbWUgYW5kIHN0YXRzIGFjY291bnRpbmcKIwpDT05GSUdfVElDS19DUFVfQUND
T1VOVElORz15CiMgQ09ORklHX1ZJUlRfQ1BVX0FDQ09VTlRJTkdfR0VOIGlzIG5vdCBzZXQKQ09O
RklHX0lSUV9USU1FX0FDQ09VTlRJTkc9eQpDT05GSUdfSEFWRV9TQ0hFRF9BVkdfSVJRPXkKQ09O
RklHX0JTRF9QUk9DRVNTX0FDQ1Q9eQpDT05GSUdfQlNEX1BST0NFU1NfQUNDVF9WMz15CkNPTkZJ
R19UQVNLU1RBVFM9eQpDT05GSUdfVEFTS19ERUxBWV9BQ0NUPXkKQ09ORklHX1RBU0tfWEFDQ1Q9
eQpDT05GSUdfVEFTS19JT19BQ0NPVU5USU5HPXkKIyBDT05GSUdfUFNJIGlzIG5vdCBzZXQKIyBl
bmQgb2YgQ1BVL1Rhc2sgdGltZSBhbmQgc3RhdHMgYWNjb3VudGluZwoKQ09ORklHX0NQVV9JU09M
QVRJT049eQoKIwojIFJDVSBTdWJzeXN0ZW0KIwpDT05GSUdfUFJFRU1QVF9SQ1U9eQojIENPTkZJ
R19SQ1VfRVhQRVJUIGlzIG5vdCBzZXQKQ09ORklHX1NSQ1U9eQpDT05GSUdfVFJFRV9TUkNVPXkK
Q09ORklHX1RBU0tTX1JDVT15CkNPTkZJR19SQ1VfU1RBTExfQ09NTU9OPXkKQ09ORklHX1JDVV9O
RUVEX1NFR0NCTElTVD15CiMgZW5kIG9mIFJDVSBTdWJzeXN0ZW0KCkNPTkZJR19JS0NPTkZJRz15
CkNPTkZJR19JS0NPTkZJR19QUk9DPXkKIyBDT05GSUdfSUtIRUFERVJTIGlzIG5vdCBzZXQKQ09O
RklHX0xPR19CVUZfU0hJRlQ9MTcKQ09ORklHX0xPR19DUFVfTUFYX0JVRl9TSElGVD0xMgpDT05G
SUdfUFJJTlRLX1NBRkVfTE9HX0JVRl9TSElGVD0xMwpDT05GSUdfR0VORVJJQ19TQ0hFRF9DTE9D
Sz15CgojCiMgU2NoZWR1bGVyIGZlYXR1cmVzCiMKIyBDT05GSUdfVUNMQU1QX1RBU0sgaXMgbm90
IHNldAojIGVuZCBvZiBTY2hlZHVsZXIgZmVhdHVyZXMKCkNPTkZJR19BUkNIX1NVUFBPUlRTX05V
TUFfQkFMQU5DSU5HPXkKQ09ORklHX0FSQ0hfU1VQUE9SVFNfSU5UMTI4PXkKQ09ORklHX05VTUFf
QkFMQU5DSU5HPXkKQ09ORklHX05VTUFfQkFMQU5DSU5HX0RFRkFVTFRfRU5BQkxFRD15CkNPTkZJ
R19DR1JPVVBTPXkKQ09ORklHX1BBR0VfQ09VTlRFUj15CkNPTkZJR19NRU1DRz15CkNPTkZJR19N
RU1DR19TV0FQPXkKQ09ORklHX01FTUNHX1NXQVBfRU5BQkxFRD15CkNPTkZJR19NRU1DR19LTUVN
PXkKQ09ORklHX0JMS19DR1JPVVA9eQpDT05GSUdfQ0dST1VQX1dSSVRFQkFDSz15CkNPTkZJR19D
R1JPVVBfU0NIRUQ9eQpDT05GSUdfRkFJUl9HUk9VUF9TQ0hFRD15CiMgQ09ORklHX0NGU19CQU5E
V0lEVEggaXMgbm90IHNldAojIENPTkZJR19SVF9HUk9VUF9TQ0hFRCBpcyBub3Qgc2V0CkNPTkZJ
R19DR1JPVVBfUElEUz15CiMgQ09ORklHX0NHUk9VUF9SRE1BIGlzIG5vdCBzZXQKIyBDT05GSUdf
Q0dST1VQX0ZSRUVaRVIgaXMgbm90IHNldApDT05GSUdfQ0dST1VQX0hVR0VUTEI9eQpDT05GSUdf
Q1BVU0VUUz15CkNPTkZJR19QUk9DX1BJRF9DUFVTRVQ9eQpDT05GSUdfQ0dST1VQX0RFVklDRT15
CkNPTkZJR19DR1JPVVBfQ1BVQUNDVD15CkNPTkZJR19DR1JPVVBfUEVSRj15CiMgQ09ORklHX0NH
Uk9VUF9ERUJVRyBpcyBub3Qgc2V0CkNPTkZJR19OQU1FU1BBQ0VTPXkKQ09ORklHX1VUU19OUz15
CkNPTkZJR19JUENfTlM9eQpDT05GSUdfVVNFUl9OUz15CkNPTkZJR19QSURfTlM9eQpDT05GSUdf
TkVUX05TPXkKIyBDT05GSUdfQ0hFQ0tQT0lOVF9SRVNUT1JFIGlzIG5vdCBzZXQKQ09ORklHX1ND
SEVEX0FVVE9HUk9VUD15CiMgQ09ORklHX1NZU0ZTX0RFUFJFQ0FURUQgaXMgbm90IHNldApDT05G
SUdfUkVMQVk9eQpDT05GSUdfQkxLX0RFVl9JTklUUkQ9eQpDT05GSUdfSU5JVFJBTUZTX1NPVVJD
RT0iIgpDT05GSUdfUkRfR1pJUD15CkNPTkZJR19SRF9CWklQMj15CkNPTkZJR19SRF9MWk1BPXkK
Q09ORklHX1JEX1haPXkKQ09ORklHX1JEX0xaTz15CkNPTkZJR19SRF9MWjQ9eQpDT05GSUdfQ0Nf
T1BUSU1JWkVfRk9SX1BFUkZPUk1BTkNFPXkKIyBDT05GSUdfQ0NfT1BUSU1JWkVfRk9SX1NJWkUg
aXMgbm90IHNldApDT05GSUdfU1lTQ1RMPXkKQ09ORklHX0hBVkVfVUlEMTY9eQpDT05GSUdfU1lT
Q1RMX0VYQ0VQVElPTl9UUkFDRT15CkNPTkZJR19CUEY9eQojIENPTkZJR19FWFBFUlQgaXMgbm90
IHNldApDT05GSUdfVUlEMTY9eQpDT05GSUdfTVVMVElVU0VSPXkKQ09ORklHX1NZU0ZTX1NZU0NB
TEw9eQpDT05GSUdfRkhBTkRMRT15CkNPTkZJR19QT1NJWF9USU1FUlM9eQpDT05GSUdfUFJJTlRL
PXkKQ09ORklHX1BSSU5US19OTUk9eQpDT05GSUdfQlVHPXkKQ09ORklHX0VMRl9DT1JFPXkKQ09O
RklHX0JBU0VfRlVMTD15CkNPTkZJR19GVVRFWD15CkNPTkZJR19GVVRFWF9QST15CkNPTkZJR19F
UE9MTD15CkNPTkZJR19TSUdOQUxGRD15CkNPTkZJR19USU1FUkZEPXkKQ09ORklHX0VWRU5URkQ9
eQpDT05GSUdfU0hNRU09eQpDT05GSUdfQUlPPXkKQ09ORklHX0lPX1VSSU5HPXkKQ09ORklHX0FE
VklTRV9TWVNDQUxMUz15CkNPTkZJR19NRU1CQVJSSUVSPXkKQ09ORklHX0tBTExTWU1TPXkKQ09O
RklHX0tBTExTWU1TX0FMTD15CkNPTkZJR19LQUxMU1lNU19CQVNFX1JFTEFUSVZFPXkKIyBDT05G
SUdfQlBGX1NZU0NBTEwgaXMgbm90IHNldAojIENPTkZJR19VU0VSRkFVTFRGRCBpcyBub3Qgc2V0
CkNPTkZJR19BUkNIX0hBU19NRU1CQVJSSUVSX1NZTkNfQ09SRT15CkNPTkZJR19SU0VRPXkKIyBD
T05GSUdfRU1CRURERUQgaXMgbm90IHNldApDT05GSUdfSEFWRV9QRVJGX0VWRU5UUz15CgojCiMg
S2VybmVsIFBlcmZvcm1hbmNlIEV2ZW50cyBBbmQgQ291bnRlcnMKIwpDT05GSUdfUEVSRl9FVkVO
VFM9eQojIENPTkZJR19ERUJVR19QRVJGX1VTRV9WTUFMTE9DIGlzIG5vdCBzZXQKIyBlbmQgb2Yg
S2VybmVsIFBlcmZvcm1hbmNlIEV2ZW50cyBBbmQgQ291bnRlcnMKCkNPTkZJR19WTV9FVkVOVF9D
T1VOVEVSUz15CkNPTkZJR19TTFVCX0RFQlVHPXkKIyBDT05GSUdfQ09NUEFUX0JSSyBpcyBub3Qg
c2V0CiMgQ09ORklHX1NMQUIgaXMgbm90IHNldApDT05GSUdfU0xVQj15CkNPTkZJR19TTEFCX01F
UkdFX0RFRkFVTFQ9eQojIENPTkZJR19TTEFCX0ZSRUVMSVNUX1JBTkRPTSBpcyBub3Qgc2V0CiMg
Q09ORklHX1NMQUJfRlJFRUxJU1RfSEFSREVORUQgaXMgbm90IHNldAojIENPTkZJR19TSFVGRkxF
X1BBR0VfQUxMT0NBVE9SIGlzIG5vdCBzZXQKQ09ORklHX1NMVUJfQ1BVX1BBUlRJQUw9eQpDT05G
SUdfU1lTVEVNX0RBVEFfVkVSSUZJQ0FUSU9OPXkKQ09ORklHX1BST0ZJTElORz15CiMgZW5kIG9m
IEdlbmVyYWwgc2V0dXAKCkNPTkZJR19BUk02ND15CkNPTkZJR182NEJJVD15CkNPTkZJR19NTVU9
eQpDT05GSUdfQVJNNjRfUEFHRV9TSElGVD0xMgpDT05GSUdfQVJNNjRfQ09OVF9TSElGVD00CkNP
TkZJR19BUkNIX01NQVBfUk5EX0JJVFNfTUlOPTE4CkNPTkZJR19BUkNIX01NQVBfUk5EX0JJVFNf
TUFYPTMzCkNPTkZJR19BUkNIX01NQVBfUk5EX0NPTVBBVF9CSVRTX01JTj0xMQpDT05GSUdfQVJD
SF9NTUFQX1JORF9DT01QQVRfQklUU19NQVg9MTYKQ09ORklHX1NUQUNLVFJBQ0VfU1VQUE9SVD15
CkNPTkZJR19JTExFR0FMX1BPSU5URVJfVkFMVUU9MHhkZWFkMDAwMDAwMDAwMDAwCkNPTkZJR19M
T0NLREVQX1NVUFBPUlQ9eQpDT05GSUdfVFJBQ0VfSVJRRkxBR1NfU1VQUE9SVD15CkNPTkZJR19H
RU5FUklDX0JVRz15CkNPTkZJR19HRU5FUklDX0JVR19SRUxBVElWRV9QT0lOVEVSUz15CkNPTkZJ
R19HRU5FUklDX0hXRUlHSFQ9eQpDT05GSUdfR0VORVJJQ19DU1VNPXkKQ09ORklHX0dFTkVSSUNf
Q0FMSUJSQVRFX0RFTEFZPXkKQ09ORklHX1pPTkVfRE1BMzI9eQpDT05GSUdfQVJDSF9FTkFCTEVf
TUVNT1JZX0hPVFBMVUc9eQpDT05GSUdfU01QPXkKQ09ORklHX0tFUk5FTF9NT0RFX05FT049eQpD
T05GSUdfRklYX0VBUkxZQ09OX01FTT15CkNPTkZJR19QR1RBQkxFX0xFVkVMUz00CkNPTkZJR19B
UkNIX1NVUFBPUlRTX1VQUk9CRVM9eQpDT05GSUdfQVJDSF9QUk9DX0tDT1JFX1RFWFQ9eQoKIwoj
IFBsYXRmb3JtIHNlbGVjdGlvbgojCiMgQ09ORklHX0FSQ0hfQUNUSU9OUyBpcyBub3Qgc2V0CiMg
Q09ORklHX0FSQ0hfQUdJTEVYIGlzIG5vdCBzZXQKIyBDT05GSUdfQVJDSF9TVU5YSSBpcyBub3Qg
c2V0CiMgQ09ORklHX0FSQ0hfQUxQSU5FIGlzIG5vdCBzZXQKIyBDT05GSUdfQVJDSF9CQ00yODM1
IGlzIG5vdCBzZXQKIyBDT05GSUdfQVJDSF9CQ01fSVBST0MgaXMgbm90IHNldAojIENPTkZJR19B
UkNIX0JFUkxJTiBpcyBub3Qgc2V0CiMgQ09ORklHX0FSQ0hfQklUTUFJTiBpcyBub3Qgc2V0CiMg
Q09ORklHX0FSQ0hfQlJDTVNUQiBpcyBub3Qgc2V0CiMgQ09ORklHX0FSQ0hfRVhZTk9TIGlzIG5v
dCBzZXQKIyBDT05GSUdfQVJDSF9LMyBpcyBub3Qgc2V0CkNPTkZJR19BUkNIX0xBWUVSU0NBUEU9
eQojIENPTkZJR19BUkNIX0xHMUsgaXMgbm90IHNldAojIENPTkZJR19BUkNIX0hJU0kgaXMgbm90
IHNldAojIENPTkZJR19BUkNIX01FRElBVEVLIGlzIG5vdCBzZXQKIyBDT05GSUdfQVJDSF9NRVNP
TiBpcyBub3Qgc2V0CiMgQ09ORklHX0FSQ0hfTVZFQlUgaXMgbm90IHNldApDT05GSUdfQVJDSF9N
WEM9eQpDT05GSUdfSEFWRV9JTVhfQlVTRlJFUT15CiMgQ09ORklHX0FSQ0hfUUNPTSBpcyBub3Qg
c2V0CiMgQ09ORklHX0FSQ0hfUkVBTFRFSyBpcyBub3Qgc2V0CiMgQ09ORklHX0FSQ0hfUkVORVNB
UyBpcyBub3Qgc2V0CiMgQ09ORklHX0FSQ0hfUk9DS0NISVAgaXMgbm90IHNldApDT05GSUdfQVJD
SF9TMzI9eQoKIwojIFMzMiBTT0Mgc2VsZWN0aW9uCiMKQ09ORklHX1NPQ19TMzJWMjM0PXkKIyBl
bmQgb2YgUzMyIFNPQyBzZWxlY3Rpb24KCiMgQ09ORklHX0FSQ0hfU0VBVFRMRSBpcyBub3Qgc2V0
CiMgQ09ORklHX0FSQ0hfU1RSQVRJWDEwIGlzIG5vdCBzZXQKIyBDT05GSUdfQVJDSF9TWU5RVUFD
RVIgaXMgbm90IHNldAojIENPTkZJR19BUkNIX1RFR1JBIGlzIG5vdCBzZXQKIyBDT05GSUdfQVJD
SF9TUFJEIGlzIG5vdCBzZXQKIyBDT05GSUdfQVJDSF9USFVOREVSIGlzIG5vdCBzZXQKIyBDT05G
SUdfQVJDSF9USFVOREVSMiBpcyBub3Qgc2V0CiMgQ09ORklHX0FSQ0hfVU5JUEhJRVIgaXMgbm90
IHNldAojIENPTkZJR19BUkNIX1ZFWFBSRVNTIGlzIG5vdCBzZXQKIyBDT05GSUdfQVJDSF9YR0VO
RSBpcyBub3Qgc2V0CiMgQ09ORklHX0FSQ0hfWlggaXMgbm90IHNldAojIENPTkZJR19BUkNIX1pZ
TlFNUCBpcyBub3Qgc2V0CiMgZW5kIG9mIFBsYXRmb3JtIHNlbGVjdGlvbgoKIwojIEtlcm5lbCBG
ZWF0dXJlcwojCgojCiMgQVJNIGVycmF0YSB3b3JrYXJvdW5kcyB2aWEgdGhlIGFsdGVybmF0aXZl
cyBmcmFtZXdvcmsKIwpDT05GSUdfQVJNNjRfV09SS0FST1VORF9DTEVBTl9DQUNIRT15CkNPTkZJ
R19BUk02NF9FUlJBVFVNXzgyNjMxOT15CkNPTkZJR19BUk02NF9FUlJBVFVNXzgyNzMxOT15CkNP
TkZJR19BUk02NF9FUlJBVFVNXzgyNDA2OT15CkNPTkZJR19BUk02NF9FUlJBVFVNXzgxOTQ3Mj15
CkNPTkZJR19BUk02NF9FUlJBVFVNXzgzMjA3NT15CkNPTkZJR19BUk02NF9FUlJBVFVNXzgzNDIy
MD15CkNPTkZJR19BUk02NF9FUlJBVFVNXzg0NTcxOT15CkNPTkZJR19BUk02NF9FUlJBVFVNXzg0
MzQxOT15CkNPTkZJR19BUk02NF9FUlJBVFVNXzEwMjQ3MTg9eQpDT05GSUdfQVJNNjRfRVJSQVRV
TV8xNDE4MDQwPXkKQ09ORklHX0FSTTY0X0VSUkFUVU1fMTE2NTUyMj15CkNPTkZJR19BUk02NF9F
UlJBVFVNXzEyODY4MDc9eQpDT05GSUdfQVJNNjRfRVJSQVRVTV8xNDYzMjI1PXkKQ09ORklHX0FS
TTY0X0VSUkFUVU1fMTU0MjQxOT15CkNPTkZJR19DQVZJVU1fRVJSQVRVTV8yMjM3NT15CkNPTkZJ
R19DQVZJVU1fRVJSQVRVTV8yMzE0ND15CkNPTkZJR19DQVZJVU1fRVJSQVRVTV8yMzE1ND15CkNP
TkZJR19DQVZJVU1fRVJSQVRVTV8yNzQ1Nj15CkNPTkZJR19DQVZJVU1fRVJSQVRVTV8zMDExNT15
CkNPTkZJR19DQVZJVU1fVFgyX0VSUkFUVU1fMjE5PXkKQ09ORklHX1FDT01fRkFMS09SX0VSUkFU
VU1fMTAwMz15CkNPTkZJR19BUk02NF9XT1JLQVJPVU5EX1JFUEVBVF9UTEJJPXkKQ09ORklHX1FD
T01fRkFMS09SX0VSUkFUVU1fMTAwOT15CkNPTkZJR19RQ09NX1FERjI0MDBfRVJSQVRVTV8wMDY1
PXkKQ09ORklHX1NPQ0lPTkVYVF9TWU5RVUFDRVJfUFJFSVRTPXkKQ09ORklHX0hJU0lMSUNPTl9F
UlJBVFVNXzE2MTYwMDgwMj15CkNPTkZJR19RQ09NX0ZBTEtPUl9FUlJBVFVNX0UxMDQxPXkKQ09O
RklHX0ZVSklUU1VfRVJSQVRVTV8wMTAwMDE9eQojIGVuZCBvZiBBUk0gZXJyYXRhIHdvcmthcm91
bmRzIHZpYSB0aGUgYWx0ZXJuYXRpdmVzIGZyYW1ld29yawoKQ09ORklHX0FSTTY0XzRLX1BBR0VT
PXkKIyBDT05GSUdfQVJNNjRfMTZLX1BBR0VTIGlzIG5vdCBzZXQKIyBDT05GSUdfQVJNNjRfNjRL
X1BBR0VTIGlzIG5vdCBzZXQKIyBDT05GSUdfQVJNNjRfVkFfQklUU18zOSBpcyBub3Qgc2V0CkNP
TkZJR19BUk02NF9WQV9CSVRTXzQ4PXkKQ09ORklHX0FSTTY0X1ZBX0JJVFM9NDgKQ09ORklHX0FS
TTY0X1BBX0JJVFNfNDg9eQpDT05GSUdfQVJNNjRfUEFfQklUUz00OAojIENPTkZJR19DUFVfQklH
X0VORElBTiBpcyBub3Qgc2V0CkNPTkZJR19TQ0hFRF9NQz15CiMgQ09ORklHX1NDSEVEX1NNVCBp
cyBub3Qgc2V0CkNPTkZJR19OUl9DUFVTPTI1NgpDT05GSUdfSE9UUExVR19DUFU9eQpDT05GSUdf
TlVNQT15CkNPTkZJR19OT0RFU19TSElGVD0yCkNPTkZJR19VU0VfUEVSQ1BVX05VTUFfTk9ERV9J
RD15CkNPTkZJR19IQVZFX1NFVFVQX1BFUl9DUFVfQVJFQT15CkNPTkZJR19ORUVEX1BFUl9DUFVf
RU1CRURfRklSU1RfQ0hVTks9eQpDT05GSUdfSE9MRVNfSU5fWk9ORT15CiMgQ09ORklHX0haXzEw
MCBpcyBub3Qgc2V0CkNPTkZJR19IWl8yNTA9eQojIENPTkZJR19IWl8zMDAgaXMgbm90IHNldAoj
IENPTkZJR19IWl8xMDAwIGlzIG5vdCBzZXQKQ09ORklHX0haPTI1MApDT05GSUdfU0NIRURfSFJU
SUNLPXkKQ09ORklHX0FSQ0hfU1VQUE9SVFNfREVCVUdfUEFHRUFMTE9DPXkKQ09ORklHX0FSQ0hf
U1BBUlNFTUVNX0VOQUJMRT15CkNPTkZJR19BUkNIX1NQQVJTRU1FTV9ERUZBVUxUPXkKQ09ORklH
X0FSQ0hfU0VMRUNUX01FTU9SWV9NT0RFTD15CkNPTkZJR19IQVZFX0FSQ0hfUEZOX1ZBTElEPXkK
Q09ORklHX0hXX1BFUkZfRVZFTlRTPXkKQ09ORklHX1NZU19TVVBQT1JUU19IVUdFVExCRlM9eQpD
T05GSUdfQVJDSF9XQU5UX0hVR0VfUE1EX1NIQVJFPXkKQ09ORklHX0FSQ0hfSEFTX0NBQ0hFX0xJ
TkVfU0laRT15CkNPTkZJR19BUkNIX0VOQUJMRV9TUExJVF9QTURfUFRMT0NLPXkKQ09ORklHX1NF
Q0NPTVA9eQpDT05GSUdfUEFSQVZJUlQ9eQojIENPTkZJR19QQVJBVklSVF9USU1FX0FDQ09VTlRJ
TkcgaXMgbm90IHNldApDT05GSUdfS0VYRUM9eQojIENPTkZJR19LRVhFQ19GSUxFIGlzIG5vdCBz
ZXQKQ09ORklHX0NSQVNIX0RVTVA9eQpDT05GSUdfWEVOX0RPTTA9eQpDT05GSUdfWEVOPXkKQ09O
RklHX0ZPUkNFX01BWF9aT05FT1JERVI9MTQKQ09ORklHX1VOTUFQX0tFUk5FTF9BVF9FTDA9eQpD
T05GSUdfSEFSREVOX0JSQU5DSF9QUkVESUNUT1I9eQpDT05GSUdfSEFSREVOX0VMMl9WRUNUT1JT
PXkKQ09ORklHX0FSTTY0X1NTQkQ9eQpDT05GSUdfUk9EQVRBX0ZVTExfREVGQVVMVF9FTkFCTEVE
PXkKIyBDT05GSUdfQVJNNjRfU1dfVFRCUjBfUEFOIGlzIG5vdCBzZXQKQ09ORklHX0FSTTY0X1RB
R0dFRF9BRERSX0FCST15CkNPTkZJR19DT01QQVQ9eQpDT05GSUdfS1VTRVJfSEVMUEVSUz15CiMg
Q09ORklHX0FSTVY4X0RFUFJFQ0FURUQgaXMgbm90IHNldAoKIwojIEFSTXY4LjEgYXJjaGl0ZWN0
dXJhbCBmZWF0dXJlcwojCkNPTkZJR19BUk02NF9IV19BRkRCTT15CkNPTkZJR19BUk02NF9QQU49
eQpDT05GSUdfQVJNNjRfTFNFX0FUT01JQ1M9eQpDT05GSUdfQVJNNjRfVkhFPXkKIyBlbmQgb2Yg
QVJNdjguMSBhcmNoaXRlY3R1cmFsIGZlYXR1cmVzCgojCiMgQVJNdjguMiBhcmNoaXRlY3R1cmFs
IGZlYXR1cmVzCiMKQ09ORklHX0FSTTY0X1VBTz15CiMgQ09ORklHX0FSTTY0X1BNRU0gaXMgbm90
IHNldApDT05GSUdfQVJNNjRfUkFTX0VYVE49eQpDT05GSUdfQVJNNjRfQ05QPXkKIyBlbmQgb2Yg
QVJNdjguMiBhcmNoaXRlY3R1cmFsIGZlYXR1cmVzCgojCiMgQVJNdjguMyBhcmNoaXRlY3R1cmFs
IGZlYXR1cmVzCiMKQ09ORklHX0FSTTY0X1BUUl9BVVRIPXkKIyBlbmQgb2YgQVJNdjguMyBhcmNo
aXRlY3R1cmFsIGZlYXR1cmVzCgpDT05GSUdfQVJNNjRfU1ZFPXkKQ09ORklHX0FSTTY0X01PRFVM
RV9QTFRTPXkKIyBDT05GSUdfQVJNNjRfUFNFVURPX05NSSBpcyBub3Qgc2V0CkNPTkZJR19SRUxP
Q0FUQUJMRT15CkNPTkZJR19SQU5ET01JWkVfQkFTRT15CkNPTkZJR19SQU5ET01JWkVfTU9EVUxF
X1JFR0lPTl9GVUxMPXkKQ09ORklHX0NDX0hBVkVfU1RBQ0tQUk9URUNUT1JfU1lTUkVHPXkKQ09O
RklHX1NUQUNLUFJPVEVDVE9SX1BFUl9UQVNLPXkKIyBlbmQgb2YgS2VybmVsIEZlYXR1cmVzCgoj
CiMgQm9vdCBvcHRpb25zCiMKIyBDT05GSUdfQVJNNjRfQUNQSV9QQVJLSU5HX1BST1RPQ09MIGlz
IG5vdCBzZXQKQ09ORklHX0NNRExJTkU9IiIKIyBDT05GSUdfQ01ETElORV9GT1JDRSBpcyBub3Qg
c2V0CkNPTkZJR19FRklfU1RVQj15CkNPTkZJR19FRkk9eQpDT05GSUdfRE1JPXkKIyBlbmQgb2Yg
Qm9vdCBvcHRpb25zCgpDT05GSUdfU1lTVklQQ19DT01QQVQ9eQpDT05GSUdfQVJDSF9FTkFCTEVf
SFVHRVBBR0VfTUlHUkFUSU9OPXkKCiMKIyBQb3dlciBtYW5hZ2VtZW50IG9wdGlvbnMKIwpDT05G
SUdfU1VTUEVORD15CkNPTkZJR19TVVNQRU5EX0ZSRUVaRVI9eQojIENPTkZJR19ISUJFUk5BVElP
TiBpcyBub3Qgc2V0CkNPTkZJR19QTV9TTEVFUD15CkNPTkZJR19QTV9TTEVFUF9TTVA9eQojIENP
TkZJR19QTV9BVVRPU0xFRVAgaXMgbm90IHNldAojIENPTkZJR19QTV9XQUtFTE9DS1MgaXMgbm90
IHNldApDT05GSUdfUE09eQpDT05GSUdfUE1fREVCVUc9eQojIENPTkZJR19QTV9BRFZBTkNFRF9E
RUJVRyBpcyBub3Qgc2V0CkNPTkZJR19QTV9URVNUX1NVU1BFTkQ9eQpDT05GSUdfUE1fU0xFRVBf
REVCVUc9eQpDT05GSUdfUE1fQ0xLPXkKQ09ORklHX1BNX0dFTkVSSUNfRE9NQUlOUz15CkNPTkZJ
R19XUV9QT1dFUl9FRkZJQ0lFTlRfREVGQVVMVD15CkNPTkZJR19QTV9HRU5FUklDX0RPTUFJTlNf
U0xFRVA9eQpDT05GSUdfUE1fR0VORVJJQ19ET01BSU5TX09GPXkKQ09ORklHX0NQVV9QTT15CiMg
Q09ORklHX0VORVJHWV9NT0RFTCBpcyBub3Qgc2V0CkNPTkZJR19BUkNIX0hJQkVSTkFUSU9OX1BP
U1NJQkxFPXkKQ09ORklHX0FSQ0hfU1VTUEVORF9QT1NTSUJMRT15CiMgZW5kIG9mIFBvd2VyIG1h
bmFnZW1lbnQgb3B0aW9ucwoKIwojIENQVSBQb3dlciBNYW5hZ2VtZW50CiMKCiMKIyBDUFUgSWRs
ZQojCkNPTkZJR19DUFVfSURMRT15CkNPTkZJR19DUFVfSURMRV9NVUxUSVBMRV9EUklWRVJTPXkK
IyBDT05GSUdfQ1BVX0lETEVfR09WX0xBRERFUiBpcyBub3Qgc2V0CkNPTkZJR19DUFVfSURMRV9H
T1ZfTUVOVT15CiMgQ09ORklHX0NQVV9JRExFX0dPVl9URU8gaXMgbm90IHNldApDT05GSUdfRFRf
SURMRV9TVEFURVM9eQoKIwojIEFSTSBDUFUgSWRsZSBEcml2ZXJzCiMKQ09ORklHX0FSTV9DUFVJ
RExFPXkKQ09ORklHX0FSTV9QU0NJX0NQVUlETEU9eQojIGVuZCBvZiBBUk0gQ1BVIElkbGUgRHJp
dmVycwojIGVuZCBvZiBDUFUgSWRsZQoKIwojIENQVSBGcmVxdWVuY3kgc2NhbGluZwojCkNPTkZJ
R19DUFVfRlJFUT15CkNPTkZJR19DUFVfRlJFUV9HT1ZfQVRUUl9TRVQ9eQpDT05GSUdfQ1BVX0ZS
RVFfR09WX0NPTU1PTj15CkNPTkZJR19DUFVfRlJFUV9TVEFUPXkKIyBDT05GSUdfQ1BVX0ZSRVFf
REVGQVVMVF9HT1ZfUEVSRk9STUFOQ0UgaXMgbm90IHNldAojIENPTkZJR19DUFVfRlJFUV9ERUZB
VUxUX0dPVl9QT1dFUlNBVkUgaXMgbm90IHNldAojIENPTkZJR19DUFVfRlJFUV9ERUZBVUxUX0dP
Vl9VU0VSU1BBQ0UgaXMgbm90IHNldApDT05GSUdfQ1BVX0ZSRVFfREVGQVVMVF9HT1ZfT05ERU1B
TkQ9eQojIENPTkZJR19DUFVfRlJFUV9ERUZBVUxUX0dPVl9DT05TRVJWQVRJVkUgaXMgbm90IHNl
dAojIENPTkZJR19DUFVfRlJFUV9ERUZBVUxUX0dPVl9TQ0hFRFVUSUwgaXMgbm90IHNldApDT05G
SUdfQ1BVX0ZSRVFfR09WX1BFUkZPUk1BTkNFPXkKQ09ORklHX0NQVV9GUkVRX0dPVl9QT1dFUlNB
VkU9eQpDT05GSUdfQ1BVX0ZSRVFfR09WX1VTRVJTUEFDRT15CkNPTkZJR19DUFVfRlJFUV9HT1Zf
T05ERU1BTkQ9eQpDT05GSUdfQ1BVX0ZSRVFfR09WX0NPTlNFUlZBVElWRT15CkNPTkZJR19DUFVf
RlJFUV9HT1ZfU0NIRURVVElMPXkKCiMKIyBDUFUgZnJlcXVlbmN5IHNjYWxpbmcgZHJpdmVycwoj
CkNPTkZJR19DUFVGUkVRX0RUPXkKQ09ORklHX0NQVUZSRVFfRFRfUExBVERFVj15CkNPTkZJR19B
Q1BJX0NQUENfQ1BVRlJFUT1tCkNPTkZJR19BUk1fU0NQSV9DUFVGUkVRPXkKQ09ORklHX0FSTV9J
TVhfQ1BVRlJFUV9EVD15CiMgQ09ORklHX0FSTV9JTVg3VUxQX0NQVUZSRVEgaXMgbm90IHNldApD
T05GSUdfUU9SSVFfQ1BVRlJFUT15CiMgZW5kIG9mIENQVSBGcmVxdWVuY3kgc2NhbGluZwojIGVu
ZCBvZiBDUFUgUG93ZXIgTWFuYWdlbWVudAoKIwojIEZpcm13YXJlIERyaXZlcnMKIwojIENPTkZJ
R19BUk1fU0NNSV9QUk9UT0NPTCBpcyBub3Qgc2V0CkNPTkZJR19BUk1fU0NQSV9QUk9UT0NPTD15
CkNPTkZJR19BUk1fU0NQSV9QT1dFUl9ET01BSU49eQojIENPTkZJR19BUk1fU0RFX0lOVEVSRkFD
RSBpcyBub3Qgc2V0CkNPTkZJR19ETUlJRD15CiMgQ09ORklHX0RNSV9TWVNGUyBpcyBub3Qgc2V0
CiMgQ09ORklHX0lTQ1NJX0lCRlQgaXMgbm90IHNldAojIENPTkZJR19GV19DRkdfU1lTRlMgaXMg
bm90IHNldApDT05GSUdfSEFWRV9BUk1fU01DQ0M9eQpDT05GSUdfQVJNX1BTQ0lfRlc9eQojIENP
TkZJR19BUk1fUFNDSV9DSEVDS0VSIGlzIG5vdCBzZXQKIyBDT05GSUdfR09PR0xFX0ZJUk1XQVJF
IGlzIG5vdCBzZXQKCiMKIyBFRkkgKEV4dGVuc2libGUgRmlybXdhcmUgSW50ZXJmYWNlKSBTdXBw
b3J0CiMKIyBDT05GSUdfRUZJX1ZBUlMgaXMgbm90IHNldApDT05GSUdfRUZJX0VTUlQ9eQpDT05G
SUdfRUZJX1BBUkFNU19GUk9NX0ZEVD15CkNPTkZJR19FRklfUlVOVElNRV9XUkFQUEVSUz15CkNP
TkZJR19FRklfQVJNU1RVQj15CkNPTkZJR19FRklfQVJNU1RVQl9EVEJfTE9BREVSPXkKQ09ORklH
X0VGSV9DQVBTVUxFX0xPQURFUj15CiMgQ09ORklHX0VGSV9URVNUIGlzIG5vdCBzZXQKIyBDT05G
SUdfUkVTRVRfQVRUQUNLX01JVElHQVRJT04gaXMgbm90IHNldAojIGVuZCBvZiBFRkkgKEV4dGVu
c2libGUgRmlybXdhcmUgSW50ZXJmYWNlKSBTdXBwb3J0CgpDT05GSUdfVUVGSV9DUEVSPXkKQ09O
RklHX1VFRklfQ1BFUl9BUk09eQpDT05GSUdfRUZJX0VBUkxZQ09OPXkKQ09ORklHX0lNWF9EU1A9
eQpDT05GSUdfSU1YX1NDVT15CkNPTkZJR19JTVhfU0NVX1BEPXkKQ09ORklHX0lNWF9TRUNPX01V
PXkKCiMKIyBUZWdyYSBmaXJtd2FyZSBkcml2ZXIKIwojIGVuZCBvZiBUZWdyYSBmaXJtd2FyZSBk
cml2ZXIKIyBlbmQgb2YgRmlybXdhcmUgRHJpdmVycwoKQ09ORklHX0FSQ0hfU1VQUE9SVFNfQUNQ
ST15CkNPTkZJR19BQ1BJPXkKQ09ORklHX0FDUElfR0VORVJJQ19HU0k9eQpDT05GSUdfQUNQSV9D
Q0FfUkVRVUlSRUQ9eQojIENPTkZJR19BQ1BJX0RFQlVHR0VSIGlzIG5vdCBzZXQKQ09ORklHX0FD
UElfU1BDUl9UQUJMRT15CiMgQ09ORklHX0FDUElfRUNfREVCVUdGUyBpcyBub3Qgc2V0CkNPTkZJ
R19BQ1BJX0FDPXkKQ09ORklHX0FDUElfQkFUVEVSWT15CkNPTkZJR19BQ1BJX0JVVFRPTj15CkNP
TkZJR19BQ1BJX0ZBTj15CiMgQ09ORklHX0FDUElfVEFEIGlzIG5vdCBzZXQKIyBDT05GSUdfQUNQ
SV9ET0NLIGlzIG5vdCBzZXQKQ09ORklHX0FDUElfUFJPQ0VTU09SX0lETEU9eQpDT05GSUdfQUNQ
SV9NQ0ZHPXkKQ09ORklHX0FDUElfQ1BQQ19MSUI9eQpDT05GSUdfQUNQSV9QUk9DRVNTT1I9eQoj
IENPTkZJR19BQ1BJX0lQTUkgaXMgbm90IHNldApDT05GSUdfQUNQSV9IT1RQTFVHX0NQVT15CkNP
TkZJR19BQ1BJX1RIRVJNQUw9eQpDT05GSUdfQUNQSV9OVU1BPXkKQ09ORklHX0FSQ0hfSEFTX0FD
UElfVEFCTEVfVVBHUkFERT15CkNPTkZJR19BQ1BJX1RBQkxFX1VQR1JBREU9eQojIENPTkZJR19B
Q1BJX0RFQlVHIGlzIG5vdCBzZXQKIyBDT05GSUdfQUNQSV9QQ0lfU0xPVCBpcyBub3Qgc2V0CkNP
TkZJR19BQ1BJX0NPTlRBSU5FUj15CkNPTkZJR19BQ1BJX0hFRD15CiMgQ09ORklHX0FDUElfQ1VT
VE9NX01FVEhPRCBpcyBub3Qgc2V0CiMgQ09ORklHX0FDUElfQkdSVCBpcyBub3Qgc2V0CkNPTkZJ
R19BQ1BJX1JFRFVDRURfSEFSRFdBUkVfT05MWT15CiMgQ09ORklHX0FDUElfSE1BVCBpcyBub3Qg
c2V0CkNPTkZJR19IQVZFX0FDUElfQVBFST15CkNPTkZJR19BQ1BJX0FQRUk9eQpDT05GSUdfQUNQ
SV9BUEVJX0dIRVM9eQpDT05GSUdfQUNQSV9BUEVJX1BDSUVBRVI9eQpDT05GSUdfQUNQSV9BUEVJ
X1NFQT15CkNPTkZJR19BQ1BJX0FQRUlfTUVNT1JZX0ZBSUxVUkU9eQpDT05GSUdfQUNQSV9BUEVJ
X0VJTko9eQojIENPTkZJR19BQ1BJX0FQRUlfRVJTVF9ERUJVRyBpcyBub3Qgc2V0CiMgQ09ORklH
X1BNSUNfT1BSRUdJT04gaXMgbm90IHNldAojIENPTkZJR19BQ1BJX0NPTkZJR0ZTIGlzIG5vdCBz
ZXQKQ09ORklHX0FDUElfSU9SVD15CkNPTkZJR19BQ1BJX0dURFQ9eQpDT05GSUdfQUNQSV9QUFRU
PXkKQ09ORklHX0hBVkVfS1ZNX0lSUUNISVA9eQpDT05GSUdfSEFWRV9LVk1fSVJRRkQ9eQpDT05G
SUdfSEFWRV9LVk1fSVJRX1JPVVRJTkc9eQpDT05GSUdfSEFWRV9LVk1fRVZFTlRGRD15CkNPTkZJ
R19LVk1fTU1JTz15CkNPTkZJR19IQVZFX0tWTV9NU0k9eQpDT05GSUdfSEFWRV9LVk1fQ1BVX1JF
TEFYX0lOVEVSQ0VQVD15CkNPTkZJR19LVk1fVkZJTz15CkNPTkZJR19IQVZFX0tWTV9BUkNIX1RM
Ql9GTFVTSF9BTEw9eQpDT05GSUdfS1ZNX0dFTkVSSUNfRElSVFlMT0dfUkVBRF9QUk9URUNUPXkK
Q09ORklHX0hBVkVfS1ZNX0lSUV9CWVBBU1M9eQpDT05GSUdfSEFWRV9LVk1fVkNQVV9SVU5fUElE
X0NIQU5HRT15CkNPTkZJR19JUlFfQllQQVNTX01BTkFHRVI9eQpDT05GSUdfVklSVFVBTElaQVRJ
T049eQpDT05GSUdfS1ZNPXkKQ09ORklHX0tWTV9BUk1fSE9TVD15CkNPTkZJR19LVk1fQVJNX1BN
VT15CkNPTkZJR19LVk1fSU5ESVJFQ1RfVkVDVE9SUz15CiMgQ09ORklHX1ZIT1NUX05FVCBpcyBu
b3Qgc2V0CiMgQ09ORklHX1ZIT1NUX0NST1NTX0VORElBTl9MRUdBQ1kgaXMgbm90IHNldApDT05G
SUdfQVJNNjRfQ1JZUFRPPXkKQ09ORklHX0NSWVBUT19TSEEyNTZfQVJNNjQ9eQpDT05GSUdfQ1JZ
UFRPX1NIQTUxMl9BUk02ND1tCkNPTkZJR19DUllQVE9fU0hBMV9BUk02NF9DRT15CkNPTkZJR19D
UllQVE9fU0hBMl9BUk02NF9DRT15CkNPTkZJR19DUllQVE9fU0hBNTEyX0FSTTY0X0NFPW0KQ09O
RklHX0NSWVBUT19TSEEzX0FSTTY0PW0KQ09ORklHX0NSWVBUT19TTTNfQVJNNjRfQ0U9bQojIENP
TkZJR19DUllQVE9fU000X0FSTTY0X0NFIGlzIG5vdCBzZXQKQ09ORklHX0NSWVBUT19HSEFTSF9B
Uk02NF9DRT15CkNPTkZJR19DUllQVE9fQ1JDVDEwRElGX0FSTTY0X0NFPW0KQ09ORklHX0NSWVBU
T19BRVNfQVJNNjQ9eQpDT05GSUdfQ1JZUFRPX0FFU19BUk02NF9DRT15CkNPTkZJR19DUllQVE9f
QUVTX0FSTTY0X0NFX0NDTT15CkNPTkZJR19DUllQVE9fQUVTX0FSTTY0X0NFX0JMSz15CkNPTkZJ
R19DUllQVE9fQUVTX0FSTTY0X05FT05fQkxLPW0KQ09ORklHX0NSWVBUT19DSEFDSEEyMF9ORU9O
PW0KIyBDT05GSUdfQ1JZUFRPX05IUE9MWTEzMDVfTkVPTiBpcyBub3Qgc2V0CkNPTkZJR19DUllQ
VE9fQUVTX0FSTTY0X0JTPW0KCiMKIyBHZW5lcmFsIGFyY2hpdGVjdHVyZS1kZXBlbmRlbnQgb3B0
aW9ucwojCkNPTkZJR19DUkFTSF9DT1JFPXkKQ09ORklHX0tFWEVDX0NPUkU9eQojIENPTkZJR19L
UFJPQkVTIGlzIG5vdCBzZXQKQ09ORklHX0pVTVBfTEFCRUw9eQojIENPTkZJR19TVEFUSUNfS0VZ
U19TRUxGVEVTVCBpcyBub3Qgc2V0CkNPTkZJR19IQVZFX0VGRklDSUVOVF9VTkFMSUdORURfQUND
RVNTPXkKQ09ORklHX0hBVkVfS1BST0JFUz15CkNPTkZJR19IQVZFX0tSRVRQUk9CRVM9eQpDT05G
SUdfSEFWRV9GVU5DVElPTl9FUlJPUl9JTkpFQ1RJT049eQpDT05GSUdfSEFWRV9OTUk9eQpDT05G
SUdfSEFWRV9BUkNIX1RSQUNFSE9PSz15CkNPTkZJR19IQVZFX0RNQV9DT05USUdVT1VTPXkKQ09O
RklHX0dFTkVSSUNfU01QX0lETEVfVEhSRUFEPXkKQ09ORklHX0dFTkVSSUNfSURMRV9QT0xMX1NF
VFVQPXkKQ09ORklHX0FSQ0hfSEFTX0ZPUlRJRllfU09VUkNFPXkKQ09ORklHX0FSQ0hfSEFTX0tF
RVBJTklUUkQ9eQpDT05GSUdfQVJDSF9IQVNfU0VUX01FTU9SWT15CkNPTkZJR19BUkNIX0hBU19T
RVRfRElSRUNUX01BUD15CkNPTkZJR19IQVZFX0FSQ0hfVEhSRUFEX1NUUlVDVF9XSElURUxJU1Q9
eQpDT05GSUdfSEFWRV9BU01fTU9EVkVSU0lPTlM9eQpDT05GSUdfSEFWRV9SRUdTX0FORF9TVEFD
S19BQ0NFU1NfQVBJPXkKQ09ORklHX0hBVkVfUlNFUT15CkNPTkZJR19IQVZFX0ZVTkNUSU9OX0FS
R19BQ0NFU1NfQVBJPXkKQ09ORklHX0hBVkVfQ0xLPXkKQ09ORklHX0hBVkVfSFdfQlJFQUtQT0lO
VD15CkNPTkZJR19IQVZFX1BFUkZfUkVHUz15CkNPTkZJR19IQVZFX1BFUkZfVVNFUl9TVEFDS19E
VU1QPXkKQ09ORklHX0hBVkVfQVJDSF9KVU1QX0xBQkVMPXkKQ09ORklHX0hBVkVfQVJDSF9KVU1Q
X0xBQkVMX1JFTEFUSVZFPXkKQ09ORklHX0hBVkVfUkNVX1RBQkxFX0ZSRUU9eQpDT05GSUdfQVJD
SF9IQVZFX05NSV9TQUZFX0NNUFhDSEc9eQpDT05GSUdfSEFWRV9BTElHTkVEX1NUUlVDVF9QQUdF
PXkKQ09ORklHX0hBVkVfQ01QWENIR19MT0NBTD15CkNPTkZJR19IQVZFX0NNUFhDSEdfRE9VQkxF
PXkKQ09ORklHX0FSQ0hfV0FOVF9DT01QQVRfSVBDX1BBUlNFX1ZFUlNJT049eQpDT05GSUdfSEFW
RV9BUkNIX1NFQ0NPTVBfRklMVEVSPXkKQ09ORklHX1NFQ0NPTVBfRklMVEVSPXkKQ09ORklHX0hB
VkVfQVJDSF9TVEFDS0xFQUs9eQpDT05GSUdfSEFWRV9TVEFDS1BST1RFQ1RPUj15CkNPTkZJR19D
Q19IQVNfU1RBQ0tQUk9URUNUT1JfTk9ORT15CkNPTkZJR19TVEFDS1BST1RFQ1RPUj15CkNPTkZJ
R19TVEFDS1BST1RFQ1RPUl9TVFJPTkc9eQpDT05GSUdfSEFWRV9DT05URVhUX1RSQUNLSU5HPXkK
Q09ORklHX0hBVkVfVklSVF9DUFVfQUNDT1VOVElOR19HRU49eQpDT05GSUdfSEFWRV9JUlFfVElN
RV9BQ0NPVU5USU5HPXkKQ09ORklHX0hBVkVfQVJDSF9UUkFOU1BBUkVOVF9IVUdFUEFHRT15CkNP
TkZJR19IQVZFX0FSQ0hfSFVHRV9WTUFQPXkKQ09ORklHX0hBVkVfTU9EX0FSQ0hfU1BFQ0lGSUM9
eQpDT05GSUdfTU9EVUxFU19VU0VfRUxGX1JFTEE9eQpDT05GSUdfQVJDSF9IQVNfRUxGX1JBTkRP
TUlaRT15CkNPTkZJR19IQVZFX0FSQ0hfTU1BUF9STkRfQklUUz15CkNPTkZJR19BUkNIX01NQVBf
Uk5EX0JJVFM9MTgKQ09ORklHX0hBVkVfQVJDSF9NTUFQX1JORF9DT01QQVRfQklUUz15CkNPTkZJ
R19BUkNIX01NQVBfUk5EX0NPTVBBVF9CSVRTPTExCkNPTkZJR19BUkNIX1dBTlRfREVGQVVMVF9U
T1BET1dOX01NQVBfTEFZT1VUPXkKQ09ORklHX0hBVkVfQ09QWV9USFJFQURfVExTPXkKQ09ORklH
X0NMT05FX0JBQ0tXQVJEUz15CkNPTkZJR19PTERfU0lHU1VTUEVORDM9eQpDT05GSUdfQ09NUEFU
X09MRF9TSUdBQ1RJT049eQpDT05GSUdfNjRCSVRfVElNRT15CkNPTkZJR19DT01QQVRfMzJCSVRf
VElNRT15CkNPTkZJR19IQVZFX0FSQ0hfVk1BUF9TVEFDSz15CkNPTkZJR19WTUFQX1NUQUNLPXkK
Q09ORklHX0FSQ0hfSEFTX1NUUklDVF9LRVJORUxfUldYPXkKQ09ORklHX1NUUklDVF9LRVJORUxf
UldYPXkKQ09ORklHX0FSQ0hfSEFTX1NUUklDVF9NT0RVTEVfUldYPXkKQ09ORklHX1NUUklDVF9N
T0RVTEVfUldYPXkKQ09ORklHX1JFRkNPVU5UX0ZVTEw9eQpDT05GSUdfSEFWRV9BUkNIX1BSRUwz
Ml9SRUxPQ0FUSU9OUz15CkNPTkZJR19BUkNIX1VTRV9NRU1SRU1BUF9QUk9UPXkKIyBDT05GSUdf
TE9DS19FVkVOVF9DT1VOVFMgaXMgbm90IHNldApDT05GSUdfQVJDSF9IQVNfUkVMUj15CgojCiMg
R0NPVi1iYXNlZCBrZXJuZWwgcHJvZmlsaW5nCiMKIyBDT05GSUdfR0NPVl9LRVJORUwgaXMgbm90
IHNldApDT05GSUdfQVJDSF9IQVNfR0NPVl9QUk9GSUxFX0FMTD15CiMgZW5kIG9mIEdDT1YtYmFz
ZWQga2VybmVsIHByb2ZpbGluZwoKQ09ORklHX1BMVUdJTl9IT1NUQ0M9IiIKQ09ORklHX0hBVkVf
R0NDX1BMVUdJTlM9eQojIGVuZCBvZiBHZW5lcmFsIGFyY2hpdGVjdHVyZS1kZXBlbmRlbnQgb3B0
aW9ucwoKQ09ORklHX1JUX01VVEVYRVM9eQpDT05GSUdfQkFTRV9TTUFMTD0wCkNPTkZJR19NT0RV
TEVTPXkKIyBDT05GSUdfTU9EVUxFX0ZPUkNFX0xPQUQgaXMgbm90IHNldApDT05GSUdfTU9EVUxF
X1VOTE9BRD15CiMgQ09ORklHX01PRFVMRV9GT1JDRV9VTkxPQUQgaXMgbm90IHNldApDT05GSUdf
TU9EVkVSU0lPTlM9eQpDT05GSUdfQVNNX01PRFZFUlNJT05TPXkKIyBDT05GSUdfTU9EVUxFX1NS
Q1ZFUlNJT05fQUxMIGlzIG5vdCBzZXQKIyBDT05GSUdfTU9EVUxFX1NJRyBpcyBub3Qgc2V0CiMg
Q09ORklHX01PRFVMRV9DT01QUkVTUyBpcyBub3Qgc2V0CiMgQ09ORklHX01PRFVMRV9BTExPV19N
SVNTSU5HX05BTUVTUEFDRV9JTVBPUlRTIGlzIG5vdCBzZXQKIyBDT05GSUdfVU5VU0VEX1NZTUJP
TFMgaXMgbm90IHNldAojIENPTkZJR19UUklNX1VOVVNFRF9LU1lNUyBpcyBub3Qgc2V0CkNPTkZJ
R19NT0RVTEVTX1RSRUVfTE9PS1VQPXkKQ09ORklHX0JMT0NLPXkKQ09ORklHX0JMS19TQ1NJX1JF
UVVFU1Q9eQpDT05GSUdfQkxLX0RFVl9CU0c9eQpDT05GSUdfQkxLX0RFVl9CU0dMSUI9eQpDT05G
SUdfQkxLX0RFVl9JTlRFR1JJVFk9eQojIENPTkZJR19CTEtfREVWX1pPTkVEIGlzIG5vdCBzZXQK
IyBDT05GSUdfQkxLX0RFVl9USFJPVFRMSU5HIGlzIG5vdCBzZXQKIyBDT05GSUdfQkxLX0NNRExJ
TkVfUEFSU0VSIGlzIG5vdCBzZXQKIyBDT05GSUdfQkxLX1dCVCBpcyBub3Qgc2V0CiMgQ09ORklH
X0JMS19DR1JPVVBfSU9MQVRFTkNZIGlzIG5vdCBzZXQKIyBDT05GSUdfQkxLX0NHUk9VUF9JT0NP
U1QgaXMgbm90IHNldApDT05GSUdfQkxLX0RFQlVHX0ZTPXkKIyBDT05GSUdfQkxLX1NFRF9PUEFM
IGlzIG5vdCBzZXQKCiMKIyBQYXJ0aXRpb24gVHlwZXMKIwojIENPTkZJR19QQVJUSVRJT05fQURW
QU5DRUQgaXMgbm90IHNldApDT05GSUdfTVNET1NfUEFSVElUSU9OPXkKQ09ORklHX0VGSV9QQVJU
SVRJT049eQojIGVuZCBvZiBQYXJ0aXRpb24gVHlwZXMKCkNPTkZJR19CTE9DS19DT01QQVQ9eQpD
T05GSUdfQkxLX01RX1BDST15CkNPTkZJR19CTEtfTVFfVklSVElPPXkKQ09ORklHX0JMS19QTT15
CgojCiMgSU8gU2NoZWR1bGVycwojCkNPTkZJR19NUV9JT1NDSEVEX0RFQURMSU5FPXkKQ09ORklH
X01RX0lPU0NIRURfS1lCRVI9eQojIENPTkZJR19JT1NDSEVEX0JGUSBpcyBub3Qgc2V0CiMgZW5k
IG9mIElPIFNjaGVkdWxlcnMKCkNPTkZJR19QUkVFTVBUX05PVElGSUVSUz15CkNPTkZJR19BU04x
PXkKQ09ORklHX1VOSU5MSU5FX1NQSU5fVU5MT0NLPXkKQ09ORklHX0FSQ0hfU1VQUE9SVFNfQVRP
TUlDX1JNVz15CkNPTkZJR19NVVRFWF9TUElOX09OX09XTkVSPXkKQ09ORklHX1JXU0VNX1NQSU5f
T05fT1dORVI9eQpDT05GSUdfTE9DS19TUElOX09OX09XTkVSPXkKQ09ORklHX0FSQ0hfVVNFX1FV
RVVFRF9TUElOTE9DS1M9eQpDT05GSUdfUVVFVUVEX1NQSU5MT0NLUz15CkNPTkZJR19BUkNIX1VT
RV9RVUVVRURfUldMT0NLUz15CkNPTkZJR19RVUVVRURfUldMT0NLUz15CkNPTkZJR19BUkNIX0hB
U19TWVNDQUxMX1dSQVBQRVI9eQpDT05GSUdfRlJFRVpFUj15CgojCiMgRXhlY3V0YWJsZSBmaWxl
IGZvcm1hdHMKIwpDT05GSUdfQklORk1UX0VMRj15CkNPTkZJR19DT01QQVRfQklORk1UX0VMRj15
CkNPTkZJR19FTEZDT1JFPXkKIyBDT05GSUdfQ09SRV9EVU1QX0RFRkFVTFRfRUxGX0hFQURFUlMg
aXMgbm90IHNldApDT05GSUdfQklORk1UX1NDUklQVD15CiMgQ09ORklHX0JJTkZNVF9NSVNDIGlz
IG5vdCBzZXQKQ09ORklHX0NPUkVEVU1QPXkKIyBlbmQgb2YgRXhlY3V0YWJsZSBmaWxlIGZvcm1h
dHMKCiMKIyBNZW1vcnkgTWFuYWdlbWVudCBvcHRpb25zCiMKQ09ORklHX1NFTEVDVF9NRU1PUllf
TU9ERUw9eQpDT05GSUdfU1BBUlNFTUVNX01BTlVBTD15CkNPTkZJR19TUEFSU0VNRU09eQpDT05G
SUdfTkVFRF9NVUxUSVBMRV9OT0RFUz15CkNPTkZJR19IQVZFX01FTU9SWV9QUkVTRU5UPXkKQ09O
RklHX1NQQVJTRU1FTV9FWFRSRU1FPXkKQ09ORklHX1NQQVJTRU1FTV9WTUVNTUFQX0VOQUJMRT15
CkNPTkZJR19TUEFSU0VNRU1fVk1FTU1BUD15CkNPTkZJR19IQVZFX01FTUJMT0NLX05PREVfTUFQ
PXkKQ09ORklHX0hBVkVfRkFTVF9HVVA9eQpDT05GSUdfQVJDSF9LRUVQX01FTUJMT0NLPXkKQ09O
RklHX01FTU9SWV9JU09MQVRJT049eQojIENPTkZJR19NRU1PUllfSE9UUExVRyBpcyBub3Qgc2V0
CkNPTkZJR19TUExJVF9QVExPQ0tfQ1BVUz00CkNPTkZJR19NRU1PUllfQkFMTE9PTj15CkNPTkZJ
R19CQUxMT09OX0NPTVBBQ1RJT049eQpDT05GSUdfQ09NUEFDVElPTj15CkNPTkZJR19NSUdSQVRJ
T049eQpDT05GSUdfQ09OVElHX0FMTE9DPXkKQ09ORklHX1BIWVNfQUREUl9UXzY0QklUPXkKQ09O
RklHX01NVV9OT1RJRklFUj15CkNPTkZJR19LU009eQpDT05GSUdfREVGQVVMVF9NTUFQX01JTl9B
RERSPTQwOTYKQ09ORklHX0FSQ0hfU1VQUE9SVFNfTUVNT1JZX0ZBSUxVUkU9eQpDT05GSUdfTUVN
T1JZX0ZBSUxVUkU9eQojIENPTkZJR19IV1BPSVNPTl9JTkpFQ1QgaXMgbm90IHNldApDT05GSUdf
VFJBTlNQQVJFTlRfSFVHRVBBR0U9eQpDT05GSUdfVFJBTlNQQVJFTlRfSFVHRVBBR0VfQUxXQVlT
PXkKIyBDT05GSUdfVFJBTlNQQVJFTlRfSFVHRVBBR0VfTUFEVklTRSBpcyBub3Qgc2V0CkNPTkZJ
R19UUkFOU1BBUkVOVF9IVUdFX1BBR0VDQUNIRT15CiMgQ09ORklHX0NMRUFOQ0FDSEUgaXMgbm90
IHNldAojIENPTkZJR19GUk9OVFNXQVAgaXMgbm90IHNldApDT05GSUdfQ01BPXkKIyBDT05GSUdf
Q01BX0RFQlVHIGlzIG5vdCBzZXQKIyBDT05GSUdfQ01BX0RFQlVHRlMgaXMgbm90IHNldApDT05G
SUdfQ01BX0FSRUFTPTcKIyBDT05GSUdfWlBPT0wgaXMgbm90IHNldAojIENPTkZJR19aQlVEIGlz
IG5vdCBzZXQKIyBDT05GSUdfWlNNQUxMT0MgaXMgbm90IHNldApDT05GSUdfR0VORVJJQ19FQVJM
WV9JT1JFTUFQPXkKIyBDT05GSUdfREVGRVJSRURfU1RSVUNUX1BBR0VfSU5JVCBpcyBub3Qgc2V0
CiMgQ09ORklHX0lETEVfUEFHRV9UUkFDS0lORyBpcyBub3Qgc2V0CkNPTkZJR19BUkNIX0hBU19Q
VEVfREVWTUFQPXkKQ09ORklHX0ZSQU1FX1ZFQ1RPUj15CiMgQ09ORklHX1BFUkNQVV9TVEFUUyBp
cyBub3Qgc2V0CiMgQ09ORklHX0dVUF9CRU5DSE1BUksgaXMgbm90IHNldAojIENPTkZJR19SRUFE
X09OTFlfVEhQX0ZPUl9GUyBpcyBub3Qgc2V0CkNPTkZJR19BUkNIX0hBU19QVEVfU1BFQ0lBTD15
CiMgZW5kIG9mIE1lbW9yeSBNYW5hZ2VtZW50IG9wdGlvbnMKCkNPTkZJR19ORVQ9eQpDT05GSUdf
Q09NUEFUX05FVExJTktfTUVTU0FHRVM9eQpDT05GSUdfTkVUX0lOR1JFU1M9eQpDT05GSUdfU0tC
X0VYVEVOU0lPTlM9eQoKIwojIE5ldHdvcmtpbmcgb3B0aW9ucwojCkNPTkZJR19QQUNLRVQ9eQoj
IENPTkZJR19QQUNLRVRfRElBRyBpcyBub3Qgc2V0CkNPTkZJR19VTklYPXkKQ09ORklHX1VOSVhf
U0NNPXkKIyBDT05GSUdfVU5JWF9ESUFHIGlzIG5vdCBzZXQKIyBDT05GSUdfVExTIGlzIG5vdCBz
ZXQKIyBDT05GSUdfWEZSTV9VU0VSIGlzIG5vdCBzZXQKIyBDT05GSUdfTkVUX0tFWSBpcyBub3Qg
c2V0CkNPTkZJR19JTkVUPXkKQ09ORklHX0lQX01VTFRJQ0FTVD15CiMgQ09ORklHX0lQX0FEVkFO
Q0VEX1JPVVRFUiBpcyBub3Qgc2V0CkNPTkZJR19JUF9QTlA9eQpDT05GSUdfSVBfUE5QX0RIQ1A9
eQpDT05GSUdfSVBfUE5QX0JPT1RQPXkKIyBDT05GSUdfSVBfUE5QX1JBUlAgaXMgbm90IHNldAoj
IENPTkZJR19ORVRfSVBJUCBpcyBub3Qgc2V0CiMgQ09ORklHX05FVF9JUEdSRV9ERU1VWCBpcyBu
b3Qgc2V0CkNPTkZJR19ORVRfSVBfVFVOTkVMPW0KIyBDT05GSUdfSVBfTVJPVVRFIGlzIG5vdCBz
ZXQKIyBDT05GSUdfU1lOX0NPT0tJRVMgaXMgbm90IHNldAojIENPTkZJR19ORVRfSVBWVEkgaXMg
bm90IHNldApDT05GSUdfTkVUX1VEUF9UVU5ORUw9bQojIENPTkZJR19ORVRfRk9VIGlzIG5vdCBz
ZXQKIyBDT05GSUdfTkVUX0ZPVV9JUF9UVU5ORUxTIGlzIG5vdCBzZXQKIyBDT05GSUdfSU5FVF9B
SCBpcyBub3Qgc2V0CiMgQ09ORklHX0lORVRfRVNQIGlzIG5vdCBzZXQKIyBDT05GSUdfSU5FVF9J
UENPTVAgaXMgbm90IHNldApDT05GSUdfSU5FVF9UVU5ORUw9bQpDT05GSUdfSU5FVF9ESUFHPXkK
Q09ORklHX0lORVRfVENQX0RJQUc9eQojIENPTkZJR19JTkVUX1VEUF9ESUFHIGlzIG5vdCBzZXQK
IyBDT05GSUdfSU5FVF9SQVdfRElBRyBpcyBub3Qgc2V0CiMgQ09ORklHX0lORVRfRElBR19ERVNU
Uk9ZIGlzIG5vdCBzZXQKIyBDT05GSUdfVENQX0NPTkdfQURWQU5DRUQgaXMgbm90IHNldApDT05G
SUdfVENQX0NPTkdfQ1VCSUM9eQpDT05GSUdfREVGQVVMVF9UQ1BfQ09ORz0iY3ViaWMiCiMgQ09O
RklHX1RDUF9NRDVTSUcgaXMgbm90IHNldApDT05GSUdfSVBWNj15CiMgQ09ORklHX0lQVjZfUk9V
VEVSX1BSRUYgaXMgbm90IHNldAojIENPTkZJR19JUFY2X09QVElNSVNUSUNfREFEIGlzIG5vdCBz
ZXQKIyBDT05GSUdfSU5FVDZfQUggaXMgbm90IHNldAojIENPTkZJR19JTkVUNl9FU1AgaXMgbm90
IHNldAojIENPTkZJR19JTkVUNl9JUENPTVAgaXMgbm90IHNldAojIENPTkZJR19JUFY2X01JUDYg
aXMgbm90IHNldAojIENPTkZJR19JUFY2X0lMQSBpcyBub3Qgc2V0CiMgQ09ORklHX0lQVjZfVlRJ
IGlzIG5vdCBzZXQKQ09ORklHX0lQVjZfU0lUPW0KIyBDT05GSUdfSVBWNl9TSVRfNlJEIGlzIG5v
dCBzZXQKQ09ORklHX0lQVjZfTkRJU0NfTk9ERVRZUEU9eQojIENPTkZJR19JUFY2X1RVTk5FTCBp
cyBub3Qgc2V0CiMgQ09ORklHX0lQVjZfTVVMVElQTEVfVEFCTEVTIGlzIG5vdCBzZXQKIyBDT05G
SUdfSVBWNl9NUk9VVEUgaXMgbm90IHNldAojIENPTkZJR19JUFY2X1NFRzZfTFdUVU5ORUwgaXMg
bm90IHNldAojIENPTkZJR19JUFY2X1NFRzZfSE1BQyBpcyBub3Qgc2V0CiMgQ09ORklHX05FVExB
QkVMIGlzIG5vdCBzZXQKQ09ORklHX05FVFdPUktfU0VDTUFSSz15CkNPTkZJR19ORVRfUFRQX0NM
QVNTSUZZPXkKIyBDT05GSUdfTkVUV09SS19QSFlfVElNRVNUQU1QSU5HIGlzIG5vdCBzZXQKQ09O
RklHX05FVEZJTFRFUj15CkNPTkZJR19ORVRGSUxURVJfQURWQU5DRUQ9eQpDT05GSUdfQlJJREdF
X05FVEZJTFRFUj1tCgojCiMgQ29yZSBOZXRmaWx0ZXIgQ29uZmlndXJhdGlvbgojCkNPTkZJR19O
RVRGSUxURVJfSU5HUkVTUz15CkNPTkZJR19ORVRGSUxURVJfRkFNSUxZX0JSSURHRT15CiMgQ09O
RklHX05FVEZJTFRFUl9ORVRMSU5LX0FDQ1QgaXMgbm90IHNldAojIENPTkZJR19ORVRGSUxURVJf
TkVUTElOS19RVUVVRSBpcyBub3Qgc2V0CiMgQ09ORklHX05FVEZJTFRFUl9ORVRMSU5LX0xPRyBp
cyBub3Qgc2V0CiMgQ09ORklHX05FVEZJTFRFUl9ORVRMSU5LX09TRiBpcyBub3Qgc2V0CkNPTkZJ
R19ORl9DT05OVFJBQ0s9bQpDT05GSUdfTkZfTE9HX0NPTU1PTj1tCiMgQ09ORklHX05GX0xPR19O
RVRERVYgaXMgbm90IHNldAojIENPTkZJR19ORl9DT05OVFJBQ0tfTUFSSyBpcyBub3Qgc2V0CiMg
Q09ORklHX05GX0NPTk5UUkFDS19TRUNNQVJLIGlzIG5vdCBzZXQKIyBDT05GSUdfTkZfQ09OTlRS
QUNLX1pPTkVTIGlzIG5vdCBzZXQKQ09ORklHX05GX0NPTk5UUkFDS19QUk9DRlM9eQpDT05GSUdf
TkZfQ09OTlRSQUNLX0VWRU5UUz15CiMgQ09ORklHX05GX0NPTk5UUkFDS19USU1FT1VUIGlzIG5v
dCBzZXQKIyBDT05GSUdfTkZfQ09OTlRSQUNLX1RJTUVTVEFNUCBpcyBub3Qgc2V0CiMgQ09ORklH
X05GX0NPTk5UUkFDS19MQUJFTFMgaXMgbm90IHNldApDT05GSUdfTkZfQ1RfUFJPVE9fRENDUD15
CkNPTkZJR19ORl9DVF9QUk9UT19TQ1RQPXkKQ09ORklHX05GX0NUX1BST1RPX1VEUExJVEU9eQoj
IENPTkZJR19ORl9DT05OVFJBQ0tfQU1BTkRBIGlzIG5vdCBzZXQKIyBDT05GSUdfTkZfQ09OTlRS
QUNLX0ZUUCBpcyBub3Qgc2V0CiMgQ09ORklHX05GX0NPTk5UUkFDS19IMzIzIGlzIG5vdCBzZXQK
IyBDT05GSUdfTkZfQ09OTlRSQUNLX0lSQyBpcyBub3Qgc2V0CiMgQ09ORklHX05GX0NPTk5UUkFD
S19ORVRCSU9TX05TIGlzIG5vdCBzZXQKIyBDT05GSUdfTkZfQ09OTlRSQUNLX1NOTVAgaXMgbm90
IHNldAojIENPTkZJR19ORl9DT05OVFJBQ0tfUFBUUCBpcyBub3Qgc2V0CiMgQ09ORklHX05GX0NP
Tk5UUkFDS19TQU5FIGlzIG5vdCBzZXQKIyBDT05GSUdfTkZfQ09OTlRSQUNLX1NJUCBpcyBub3Qg
c2V0CiMgQ09ORklHX05GX0NPTk5UUkFDS19URlRQIGlzIG5vdCBzZXQKIyBDT05GSUdfTkZfQ1Rf
TkVUTElOSyBpcyBub3Qgc2V0CkNPTkZJR19ORl9OQVQ9bQpDT05GSUdfTkZfTkFUX01BU1FVRVJB
REU9eQojIENPTkZJR19ORl9UQUJMRVMgaXMgbm90IHNldApDT05GSUdfTkVURklMVEVSX1hUQUJM
RVM9bQoKIwojIFh0YWJsZXMgY29tYmluZWQgbW9kdWxlcwojCiMgQ09ORklHX05FVEZJTFRFUl9Y
VF9NQVJLIGlzIG5vdCBzZXQKIyBDT05GSUdfTkVURklMVEVSX1hUX0NPTk5NQVJLIGlzIG5vdCBz
ZXQKCiMKIyBYdGFibGVzIHRhcmdldHMKIwojIENPTkZJR19ORVRGSUxURVJfWFRfVEFSR0VUX0FV
RElUIGlzIG5vdCBzZXQKQ09ORklHX05FVEZJTFRFUl9YVF9UQVJHRVRfQ0hFQ0tTVU09bQojIENP
TkZJR19ORVRGSUxURVJfWFRfVEFSR0VUX0NMQVNTSUZZIGlzIG5vdCBzZXQKIyBDT05GSUdfTkVU
RklMVEVSX1hUX1RBUkdFVF9DT05OTUFSSyBpcyBub3Qgc2V0CiMgQ09ORklHX05FVEZJTFRFUl9Y
VF9UQVJHRVRfRFNDUCBpcyBub3Qgc2V0CiMgQ09ORklHX05FVEZJTFRFUl9YVF9UQVJHRVRfSEwg
aXMgbm90IHNldAojIENPTkZJR19ORVRGSUxURVJfWFRfVEFSR0VUX0hNQVJLIGlzIG5vdCBzZXQK
IyBDT05GSUdfTkVURklMVEVSX1hUX1RBUkdFVF9JRExFVElNRVIgaXMgbm90IHNldAojIENPTkZJ
R19ORVRGSUxURVJfWFRfVEFSR0VUX0xFRCBpcyBub3Qgc2V0CkNPTkZJR19ORVRGSUxURVJfWFRf
VEFSR0VUX0xPRz1tCiMgQ09ORklHX05FVEZJTFRFUl9YVF9UQVJHRVRfTUFSSyBpcyBub3Qgc2V0
CkNPTkZJR19ORVRGSUxURVJfWFRfTkFUPW0KIyBDT05GSUdfTkVURklMVEVSX1hUX1RBUkdFVF9O
RVRNQVAgaXMgbm90IHNldAojIENPTkZJR19ORVRGSUxURVJfWFRfVEFSR0VUX05GTE9HIGlzIG5v
dCBzZXQKIyBDT05GSUdfTkVURklMVEVSX1hUX1RBUkdFVF9ORlFVRVVFIGlzIG5vdCBzZXQKIyBD
T05GSUdfTkVURklMVEVSX1hUX1RBUkdFVF9SQVRFRVNUIGlzIG5vdCBzZXQKIyBDT05GSUdfTkVU
RklMVEVSX1hUX1RBUkdFVF9SRURJUkVDVCBpcyBub3Qgc2V0CkNPTkZJR19ORVRGSUxURVJfWFRf
VEFSR0VUX01BU1FVRVJBREU9bQojIENPTkZJR19ORVRGSUxURVJfWFRfVEFSR0VUX1RFRSBpcyBu
b3Qgc2V0CiMgQ09ORklHX05FVEZJTFRFUl9YVF9UQVJHRVRfVFBST1hZIGlzIG5vdCBzZXQKIyBD
T05GSUdfTkVURklMVEVSX1hUX1RBUkdFVF9TRUNNQVJLIGlzIG5vdCBzZXQKIyBDT05GSUdfTkVU
RklMVEVSX1hUX1RBUkdFVF9UQ1BNU1MgaXMgbm90IHNldAojIENPTkZJR19ORVRGSUxURVJfWFRf
VEFSR0VUX1RDUE9QVFNUUklQIGlzIG5vdCBzZXQKCiMKIyBYdGFibGVzIG1hdGNoZXMKIwpDT05G
SUdfTkVURklMVEVSX1hUX01BVENIX0FERFJUWVBFPW0KIyBDT05GSUdfTkVURklMVEVSX1hUX01B
VENIX0JQRiBpcyBub3Qgc2V0CiMgQ09ORklHX05FVEZJTFRFUl9YVF9NQVRDSF9DR1JPVVAgaXMg
bm90IHNldAojIENPTkZJR19ORVRGSUxURVJfWFRfTUFUQ0hfQ0xVU1RFUiBpcyBub3Qgc2V0CiMg
Q09ORklHX05FVEZJTFRFUl9YVF9NQVRDSF9DT01NRU5UIGlzIG5vdCBzZXQKIyBDT05GSUdfTkVU
RklMVEVSX1hUX01BVENIX0NPTk5CWVRFUyBpcyBub3Qgc2V0CiMgQ09ORklHX05FVEZJTFRFUl9Y
VF9NQVRDSF9DT05OTEFCRUwgaXMgbm90IHNldAojIENPTkZJR19ORVRGSUxURVJfWFRfTUFUQ0hf
Q09OTkxJTUlUIGlzIG5vdCBzZXQKIyBDT05GSUdfTkVURklMVEVSX1hUX01BVENIX0NPTk5NQVJL
IGlzIG5vdCBzZXQKQ09ORklHX05FVEZJTFRFUl9YVF9NQVRDSF9DT05OVFJBQ0s9bQojIENPTkZJ
R19ORVRGSUxURVJfWFRfTUFUQ0hfQ1BVIGlzIG5vdCBzZXQKIyBDT05GSUdfTkVURklMVEVSX1hU
X01BVENIX0RDQ1AgaXMgbm90IHNldAojIENPTkZJR19ORVRGSUxURVJfWFRfTUFUQ0hfREVWR1JP
VVAgaXMgbm90IHNldAojIENPTkZJR19ORVRGSUxURVJfWFRfTUFUQ0hfRFNDUCBpcyBub3Qgc2V0
CiMgQ09ORklHX05FVEZJTFRFUl9YVF9NQVRDSF9FQ04gaXMgbm90IHNldAojIENPTkZJR19ORVRG
SUxURVJfWFRfTUFUQ0hfRVNQIGlzIG5vdCBzZXQKIyBDT05GSUdfTkVURklMVEVSX1hUX01BVENI
X0hBU0hMSU1JVCBpcyBub3Qgc2V0CiMgQ09ORklHX05FVEZJTFRFUl9YVF9NQVRDSF9IRUxQRVIg
aXMgbm90IHNldAojIENPTkZJR19ORVRGSUxURVJfWFRfTUFUQ0hfSEwgaXMgbm90IHNldAojIENP
TkZJR19ORVRGSUxURVJfWFRfTUFUQ0hfSVBDT01QIGlzIG5vdCBzZXQKIyBDT05GSUdfTkVURklM
VEVSX1hUX01BVENIX0lQUkFOR0UgaXMgbm90IHNldAojIENPTkZJR19ORVRGSUxURVJfWFRfTUFU
Q0hfTDJUUCBpcyBub3Qgc2V0CiMgQ09ORklHX05FVEZJTFRFUl9YVF9NQVRDSF9MRU5HVEggaXMg
bm90IHNldAojIENPTkZJR19ORVRGSUxURVJfWFRfTUFUQ0hfTElNSVQgaXMgbm90IHNldAojIENP
TkZJR19ORVRGSUxURVJfWFRfTUFUQ0hfTUFDIGlzIG5vdCBzZXQKIyBDT05GSUdfTkVURklMVEVS
X1hUX01BVENIX01BUksgaXMgbm90IHNldAojIENPTkZJR19ORVRGSUxURVJfWFRfTUFUQ0hfTVVM
VElQT1JUIGlzIG5vdCBzZXQKIyBDT05GSUdfTkVURklMVEVSX1hUX01BVENIX05GQUNDVCBpcyBu
b3Qgc2V0CiMgQ09ORklHX05FVEZJTFRFUl9YVF9NQVRDSF9PU0YgaXMgbm90IHNldAojIENPTkZJ
R19ORVRGSUxURVJfWFRfTUFUQ0hfT1dORVIgaXMgbm90IHNldAojIENPTkZJR19ORVRGSUxURVJf
WFRfTUFUQ0hfUEhZU0RFViBpcyBub3Qgc2V0CiMgQ09ORklHX05FVEZJTFRFUl9YVF9NQVRDSF9Q
S1RUWVBFIGlzIG5vdCBzZXQKIyBDT05GSUdfTkVURklMVEVSX1hUX01BVENIX1FVT1RBIGlzIG5v
dCBzZXQKIyBDT05GSUdfTkVURklMVEVSX1hUX01BVENIX1JBVEVFU1QgaXMgbm90IHNldAojIENP
TkZJR19ORVRGSUxURVJfWFRfTUFUQ0hfUkVBTE0gaXMgbm90IHNldAojIENPTkZJR19ORVRGSUxU
RVJfWFRfTUFUQ0hfUkVDRU5UIGlzIG5vdCBzZXQKIyBDT05GSUdfTkVURklMVEVSX1hUX01BVENI
X1NDVFAgaXMgbm90IHNldAojIENPTkZJR19ORVRGSUxURVJfWFRfTUFUQ0hfU09DS0VUIGlzIG5v
dCBzZXQKIyBDT05GSUdfTkVURklMVEVSX1hUX01BVENIX1NUQVRFIGlzIG5vdCBzZXQKIyBDT05G
SUdfTkVURklMVEVSX1hUX01BVENIX1NUQVRJU1RJQyBpcyBub3Qgc2V0CiMgQ09ORklHX05FVEZJ
TFRFUl9YVF9NQVRDSF9TVFJJTkcgaXMgbm90IHNldAojIENPTkZJR19ORVRGSUxURVJfWFRfTUFU
Q0hfVENQTVNTIGlzIG5vdCBzZXQKIyBDT05GSUdfTkVURklMVEVSX1hUX01BVENIX1RJTUUgaXMg
bm90IHNldAojIENPTkZJR19ORVRGSUxURVJfWFRfTUFUQ0hfVTMyIGlzIG5vdCBzZXQKIyBlbmQg
b2YgQ29yZSBOZXRmaWx0ZXIgQ29uZmlndXJhdGlvbgoKIyBDT05GSUdfSVBfU0VUIGlzIG5vdCBz
ZXQKIyBDT05GSUdfSVBfVlMgaXMgbm90IHNldAoKIwojIElQOiBOZXRmaWx0ZXIgQ29uZmlndXJh
dGlvbgojCkNPTkZJR19ORl9ERUZSQUdfSVBWND1tCiMgQ09ORklHX05GX1NPQ0tFVF9JUFY0IGlz
IG5vdCBzZXQKIyBDT05GSUdfTkZfVFBST1hZX0lQVjQgaXMgbm90IHNldAojIENPTkZJR19ORl9E
VVBfSVBWNCBpcyBub3Qgc2V0CiMgQ09ORklHX05GX0xPR19BUlAgaXMgbm90IHNldApDT05GSUdf
TkZfTE9HX0lQVjQ9bQpDT05GSUdfTkZfUkVKRUNUX0lQVjQ9bQpDT05GSUdfSVBfTkZfSVBUQUJM
RVM9bQojIENPTkZJR19JUF9ORl9NQVRDSF9BSCBpcyBub3Qgc2V0CiMgQ09ORklHX0lQX05GX01B
VENIX0VDTiBpcyBub3Qgc2V0CiMgQ09ORklHX0lQX05GX01BVENIX1JQRklMVEVSIGlzIG5vdCBz
ZXQKIyBDT05GSUdfSVBfTkZfTUFUQ0hfVFRMIGlzIG5vdCBzZXQKQ09ORklHX0lQX05GX0ZJTFRF
Uj1tCkNPTkZJR19JUF9ORl9UQVJHRVRfUkVKRUNUPW0KIyBDT05GSUdfSVBfTkZfVEFSR0VUX1NZ
TlBST1hZIGlzIG5vdCBzZXQKQ09ORklHX0lQX05GX05BVD1tCkNPTkZJR19JUF9ORl9UQVJHRVRf
TUFTUVVFUkFERT1tCiMgQ09ORklHX0lQX05GX1RBUkdFVF9ORVRNQVAgaXMgbm90IHNldAojIENP
TkZJR19JUF9ORl9UQVJHRVRfUkVESVJFQ1QgaXMgbm90IHNldApDT05GSUdfSVBfTkZfTUFOR0xF
PW0KIyBDT05GSUdfSVBfTkZfVEFSR0VUX0NMVVNURVJJUCBpcyBub3Qgc2V0CiMgQ09ORklHX0lQ
X05GX1RBUkdFVF9FQ04gaXMgbm90IHNldAojIENPTkZJR19JUF9ORl9UQVJHRVRfVFRMIGlzIG5v
dCBzZXQKIyBDT05GSUdfSVBfTkZfUkFXIGlzIG5vdCBzZXQKIyBDT05GSUdfSVBfTkZfU0VDVVJJ
VFkgaXMgbm90IHNldAojIENPTkZJR19JUF9ORl9BUlBUQUJMRVMgaXMgbm90IHNldAojIGVuZCBv
ZiBJUDogTmV0ZmlsdGVyIENvbmZpZ3VyYXRpb24KCiMKIyBJUHY2OiBOZXRmaWx0ZXIgQ29uZmln
dXJhdGlvbgojCiMgQ09ORklHX05GX1NPQ0tFVF9JUFY2IGlzIG5vdCBzZXQKIyBDT05GSUdfTkZf
VFBST1hZX0lQVjYgaXMgbm90IHNldAojIENPTkZJR19ORl9EVVBfSVBWNiBpcyBub3Qgc2V0CkNP
TkZJR19ORl9SRUpFQ1RfSVBWNj1tCkNPTkZJR19ORl9MT0dfSVBWNj1tCkNPTkZJR19JUDZfTkZf
SVBUQUJMRVM9bQojIENPTkZJR19JUDZfTkZfTUFUQ0hfQUggaXMgbm90IHNldAojIENPTkZJR19J
UDZfTkZfTUFUQ0hfRVVJNjQgaXMgbm90IHNldAojIENPTkZJR19JUDZfTkZfTUFUQ0hfRlJBRyBp
cyBub3Qgc2V0CiMgQ09ORklHX0lQNl9ORl9NQVRDSF9PUFRTIGlzIG5vdCBzZXQKIyBDT05GSUdf
SVA2X05GX01BVENIX0hMIGlzIG5vdCBzZXQKIyBDT05GSUdfSVA2X05GX01BVENIX0lQVjZIRUFE
RVIgaXMgbm90IHNldAojIENPTkZJR19JUDZfTkZfTUFUQ0hfTUggaXMgbm90IHNldAojIENPTkZJ
R19JUDZfTkZfTUFUQ0hfUlBGSUxURVIgaXMgbm90IHNldAojIENPTkZJR19JUDZfTkZfTUFUQ0hf
UlQgaXMgbm90IHNldAojIENPTkZJR19JUDZfTkZfTUFUQ0hfU1JIIGlzIG5vdCBzZXQKIyBDT05G
SUdfSVA2X05GX1RBUkdFVF9ITCBpcyBub3Qgc2V0CkNPTkZJR19JUDZfTkZfRklMVEVSPW0KQ09O
RklHX0lQNl9ORl9UQVJHRVRfUkVKRUNUPW0KIyBDT05GSUdfSVA2X05GX1RBUkdFVF9TWU5QUk9Y
WSBpcyBub3Qgc2V0CkNPTkZJR19JUDZfTkZfTUFOR0xFPW0KIyBDT05GSUdfSVA2X05GX1JBVyBp
cyBub3Qgc2V0CiMgQ09ORklHX0lQNl9ORl9TRUNVUklUWSBpcyBub3Qgc2V0CkNPTkZJR19JUDZf
TkZfTkFUPW0KQ09ORklHX0lQNl9ORl9UQVJHRVRfTUFTUVVFUkFERT1tCiMgQ09ORklHX0lQNl9O
Rl9UQVJHRVRfTlBUIGlzIG5vdCBzZXQKIyBlbmQgb2YgSVB2NjogTmV0ZmlsdGVyIENvbmZpZ3Vy
YXRpb24KCkNPTkZJR19ORl9ERUZSQUdfSVBWNj1tCiMgQ09ORklHX05GX0NPTk5UUkFDS19CUklE
R0UgaXMgbm90IHNldAojIENPTkZJR19CUklER0VfTkZfRUJUQUJMRVMgaXMgbm90IHNldAojIENP
TkZJR19CUEZJTFRFUiBpcyBub3Qgc2V0CiMgQ09ORklHX0lQX0RDQ1AgaXMgbm90IHNldAojIENP
TkZJR19JUF9TQ1RQIGlzIG5vdCBzZXQKIyBDT05GSUdfUkRTIGlzIG5vdCBzZXQKIyBDT05GSUdf
VElQQyBpcyBub3Qgc2V0CiMgQ09ORklHX0FUTSBpcyBub3Qgc2V0CiMgQ09ORklHX0wyVFAgaXMg
bm90IHNldApDT05GSUdfU1RQPXkKQ09ORklHX0dBUlA9eQpDT05GSUdfTVJQPXkKQ09ORklHX0JS
SURHRT1tCkNPTkZJR19CUklER0VfSUdNUF9TTk9PUElORz15CkNPTkZJR19CUklER0VfVkxBTl9G
SUxURVJJTkc9eQpDT05GSUdfSEFWRV9ORVRfRFNBPXkKIyBDT05GSUdfTkVUX0RTQSBpcyBub3Qg
c2V0CkNPTkZJR19WTEFOXzgwMjFRPXkKQ09ORklHX1ZMQU5fODAyMVFfR1ZSUD15CkNPTkZJR19W
TEFOXzgwMjFRX01WUlA9eQojIENPTkZJR19ERUNORVQgaXMgbm90IHNldApDT05GSUdfTExDPXkK
Q09ORklHX0xMQzI9eQojIENPTkZJR19BVEFMSyBpcyBub3Qgc2V0CiMgQ09ORklHX1gyNSBpcyBu
b3Qgc2V0CiMgQ09ORklHX0xBUEIgaXMgbm90IHNldAojIENPTkZJR19QSE9ORVQgaXMgbm90IHNl
dAojIENPTkZJR182TE9XUEFOIGlzIG5vdCBzZXQKIyBDT05GSUdfSUVFRTgwMjE1NCBpcyBub3Qg
c2V0CkNPTkZJR19ORVRfU0NIRUQ9eQoKIwojIFF1ZXVlaW5nL1NjaGVkdWxpbmcKIwojIENPTkZJ
R19ORVRfU0NIX0NCUSBpcyBub3Qgc2V0CiMgQ09ORklHX05FVF9TQ0hfSFRCIGlzIG5vdCBzZXQK
IyBDT05GSUdfTkVUX1NDSF9IRlNDIGlzIG5vdCBzZXQKIyBDT05GSUdfTkVUX1NDSF9QUklPIGlz
IG5vdCBzZXQKQ09ORklHX05FVF9TQ0hfTVVMVElRPXkKIyBDT05GSUdfTkVUX1NDSF9SRUQgaXMg
bm90IHNldAojIENPTkZJR19ORVRfU0NIX1NGQiBpcyBub3Qgc2V0CiMgQ09ORklHX05FVF9TQ0hf
U0ZRIGlzIG5vdCBzZXQKIyBDT05GSUdfTkVUX1NDSF9URVFMIGlzIG5vdCBzZXQKIyBDT05GSUdf
TkVUX1NDSF9UQkYgaXMgbm90IHNldApDT05GSUdfTkVUX1NDSF9DQlM9eQojIENPTkZJR19ORVRf
U0NIX0VURiBpcyBub3Qgc2V0CkNPTkZJR19ORVRfU0NIX1RBUFJJTz15CiMgQ09ORklHX05FVF9T
Q0hfR1JFRCBpcyBub3Qgc2V0CiMgQ09ORklHX05FVF9TQ0hfRFNNQVJLIGlzIG5vdCBzZXQKIyBD
T05GSUdfTkVUX1NDSF9ORVRFTSBpcyBub3Qgc2V0CiMgQ09ORklHX05FVF9TQ0hfRFJSIGlzIG5v
dCBzZXQKQ09ORklHX05FVF9TQ0hfTVFQUklPPXkKIyBDT05GSUdfTkVUX1NDSF9TS0JQUklPIGlz
IG5vdCBzZXQKIyBDT05GSUdfTkVUX1NDSF9DSE9LRSBpcyBub3Qgc2V0CiMgQ09ORklHX05FVF9T
Q0hfUUZRIGlzIG5vdCBzZXQKIyBDT05GSUdfTkVUX1NDSF9DT0RFTCBpcyBub3Qgc2V0CiMgQ09O
RklHX05FVF9TQ0hfRlFfQ09ERUwgaXMgbm90IHNldAojIENPTkZJR19ORVRfU0NIX0NBS0UgaXMg
bm90IHNldAojIENPTkZJR19ORVRfU0NIX0ZRIGlzIG5vdCBzZXQKIyBDT05GSUdfTkVUX1NDSF9I
SEYgaXMgbm90IHNldAojIENPTkZJR19ORVRfU0NIX1BJRSBpcyBub3Qgc2V0CiMgQ09ORklHX05F
VF9TQ0hfUExVRyBpcyBub3Qgc2V0CiMgQ09ORklHX05FVF9TQ0hfREVGQVVMVCBpcyBub3Qgc2V0
CgojCiMgQ2xhc3NpZmljYXRpb24KIwpDT05GSUdfTkVUX0NMUz15CkNPTkZJR19ORVRfQ0xTX0JB
U0lDPXkKQ09ORklHX05FVF9DTFNfVENJTkRFWD15CiMgQ09ORklHX05FVF9DTFNfUk9VVEU0IGlz
IG5vdCBzZXQKIyBDT05GSUdfTkVUX0NMU19GVyBpcyBub3Qgc2V0CiMgQ09ORklHX05FVF9DTFNf
VTMyIGlzIG5vdCBzZXQKIyBDT05GSUdfTkVUX0NMU19SU1ZQIGlzIG5vdCBzZXQKIyBDT05GSUdf
TkVUX0NMU19SU1ZQNiBpcyBub3Qgc2V0CiMgQ09ORklHX05FVF9DTFNfRkxPVyBpcyBub3Qgc2V0
CiMgQ09ORklHX05FVF9DTFNfQ0dST1VQIGlzIG5vdCBzZXQKIyBDT05GSUdfTkVUX0NMU19CUEYg
aXMgbm90IHNldAojIENPTkZJR19ORVRfQ0xTX0ZMT1dFUiBpcyBub3Qgc2V0CiMgQ09ORklHX05F
VF9DTFNfTUFUQ0hBTEwgaXMgbm90IHNldAojIENPTkZJR19ORVRfRU1BVENIIGlzIG5vdCBzZXQK
IyBDT05GSUdfTkVUX0NMU19BQ1QgaXMgbm90IHNldApDT05GSUdfTkVUX1NDSF9GSUZPPXkKIyBD
T05GSUdfRENCIGlzIG5vdCBzZXQKQ09ORklHX1RTTj15CkNPTkZJR19ETlNfUkVTT0xWRVI9eQoj
IENPTkZJR19CQVRNQU5fQURWIGlzIG5vdCBzZXQKIyBDT05GSUdfT1BFTlZTV0lUQ0ggaXMgbm90
IHNldAojIENPTkZJR19WU09DS0VUUyBpcyBub3Qgc2V0CiMgQ09ORklHX05FVExJTktfRElBRyBp
cyBub3Qgc2V0CiMgQ09ORklHX01QTFMgaXMgbm90IHNldAojIENPTkZJR19ORVRfTlNIIGlzIG5v
dCBzZXQKIyBDT05GSUdfSFNSIGlzIG5vdCBzZXQKQ09ORklHX05FVF9TV0lUQ0hERVY9eQojIENP
TkZJR19ORVRfTDNfTUFTVEVSX0RFViBpcyBub3Qgc2V0CiMgQ09ORklHX05FVF9OQ1NJIGlzIG5v
dCBzZXQKQ09ORklHX1JQUz15CkNPTkZJR19SRlNfQUNDRUw9eQpDT05GSUdfWFBTPXkKIyBDT05G
SUdfQ0dST1VQX05FVF9QUklPIGlzIG5vdCBzZXQKIyBDT05GSUdfQ0dST1VQX05FVF9DTEFTU0lE
IGlzIG5vdCBzZXQKQ09ORklHX05FVF9SWF9CVVNZX1BPTEw9eQpDT05GSUdfQlFMPXkKQ09ORklH
X0JQRl9KSVQ9eQpDT05GSUdfTkVUX0ZMT1dfTElNSVQ9eQoKIwojIE5ldHdvcmsgdGVzdGluZwoj
CkNPTkZJR19ORVRfUEtUR0VOPXkKIyBlbmQgb2YgTmV0d29yayB0ZXN0aW5nCiMgZW5kIG9mIE5l
dHdvcmtpbmcgb3B0aW9ucwoKIyBDT05GSUdfSEFNUkFESU8gaXMgbm90IHNldApDT05GSUdfQ0FO
PW0KQ09ORklHX0NBTl9SQVc9bQpDT05GSUdfQ0FOX0JDTT1tCkNPTkZJR19DQU5fR1c9bQojIENP
TkZJR19DQU5fSjE5MzkgaXMgbm90IHNldAoKIwojIENBTiBEZXZpY2UgRHJpdmVycwojCiMgQ09O
RklHX0NBTl9WQ0FOIGlzIG5vdCBzZXQKIyBDT05GSUdfQ0FOX1ZYQ0FOIGlzIG5vdCBzZXQKIyBD
T05GSUdfQ0FOX1NMQ0FOIGlzIG5vdCBzZXQKQ09ORklHX0NBTl9ERVY9bQpDT05GSUdfQ0FOX0NB
TENfQklUVElNSU5HPXkKQ09ORklHX0NBTl9GTEVYQ0FOPW0KIyBDT05GSUdfQ0FOX0dSQ0FOIGlz
IG5vdCBzZXQKIyBDT05GSUdfQ0FOX0tWQVNFUl9QQ0lFRkQgaXMgbm90IHNldAojIENPTkZJR19D
QU5fWElMSU5YQ0FOIGlzIG5vdCBzZXQKIyBDT05GSUdfQ0FOX0NfQ0FOIGlzIG5vdCBzZXQKIyBD
T05GSUdfQ0FOX0NDNzcwIGlzIG5vdCBzZXQKIyBDT05GSUdfQ0FOX0lGSV9DQU5GRCBpcyBub3Qg
c2V0CiMgQ09ORklHX0NBTl9NX0NBTiBpcyBub3Qgc2V0CiMgQ09ORklHX0NBTl9QRUFLX1BDSUVG
RCBpcyBub3Qgc2V0CiMgQ09ORklHX0NBTl9TSkExMDAwIGlzIG5vdCBzZXQKIyBDT05GSUdfQ0FO
X1NPRlRJTkcgaXMgbm90IHNldAoKIwojIENBTiBTUEkgaW50ZXJmYWNlcwojCiMgQ09ORklHX0NB
Tl9ISTMxMVggaXMgbm90IHNldAojIENPTkZJR19DQU5fTUNQMjUxWCBpcyBub3Qgc2V0CiMgZW5k
IG9mIENBTiBTUEkgaW50ZXJmYWNlcwoKIwojIENBTiBVU0IgaW50ZXJmYWNlcwojCiMgQ09ORklH
X0NBTl84REVWX1VTQiBpcyBub3Qgc2V0CiMgQ09ORklHX0NBTl9FTVNfVVNCIGlzIG5vdCBzZXQK
IyBDT05GSUdfQ0FOX0VTRF9VU0IyIGlzIG5vdCBzZXQKIyBDT05GSUdfQ0FOX0dTX1VTQiBpcyBu
b3Qgc2V0CiMgQ09ORklHX0NBTl9LVkFTRVJfVVNCIGlzIG5vdCBzZXQKIyBDT05GSUdfQ0FOX01D
QkFfVVNCIGlzIG5vdCBzZXQKIyBDT05GSUdfQ0FOX1BFQUtfVVNCIGlzIG5vdCBzZXQKIyBDT05G
SUdfQ0FOX1VDQU4gaXMgbm90IHNldAojIGVuZCBvZiBDQU4gVVNCIGludGVyZmFjZXMKCiMgQ09O
RklHX0NBTl9ERUJVR19ERVZJQ0VTIGlzIG5vdCBzZXQKIyBlbmQgb2YgQ0FOIERldmljZSBEcml2
ZXJzCgpDT05GSUdfQlQ9eQpDT05GSUdfQlRfQlJFRFI9eQpDT05GSUdfQlRfUkZDT01NPXkKQ09O
RklHX0JUX1JGQ09NTV9UVFk9eQpDT05GSUdfQlRfQk5FUD15CkNPTkZJR19CVF9CTkVQX01DX0ZJ
TFRFUj15CkNPTkZJR19CVF9CTkVQX1BST1RPX0ZJTFRFUj15CkNPTkZJR19CVF9ISURQPXkKIyBD
T05GSUdfQlRfSFMgaXMgbm90IHNldAojIENPTkZJR19CVF9MRSBpcyBub3Qgc2V0CkNPTkZJR19C
VF9MRURTPXkKIyBDT05GSUdfQlRfU0VMRlRFU1QgaXMgbm90IHNldAojIENPTkZJR19CVF9ERUJV
R0ZTIGlzIG5vdCBzZXQKCiMKIyBCbHVldG9vdGggZGV2aWNlIGRyaXZlcnMKIwpDT05GSUdfQlRf
SU5URUw9bQpDT05GSUdfQlRfQkNNPXkKQ09ORklHX0JUX1JUTD1tCkNPTkZJR19CVF9RQ0E9eQpD
T05GSUdfQlRfSENJQlRVU0I9bQojIENPTkZJR19CVF9IQ0lCVFVTQl9BVVRPU1VTUEVORCBpcyBu
b3Qgc2V0CkNPTkZJR19CVF9IQ0lCVFVTQl9CQ009eQojIENPTkZJR19CVF9IQ0lCVFVTQl9NVEsg
aXMgbm90IHNldApDT05GSUdfQlRfSENJQlRVU0JfUlRMPXkKIyBDT05GSUdfQlRfSENJQlRTRElP
IGlzIG5vdCBzZXQKQ09ORklHX0JUX0hDSVVBUlQ9eQpDT05GSUdfQlRfSENJVUFSVF9TRVJERVY9
eQpDT05GSUdfQlRfSENJVUFSVF9IND15CiMgQ09ORklHX0JUX0hDSVVBUlRfTk9LSUEgaXMgbm90
IHNldApDT05GSUdfQlRfSENJVUFSVF9CQ1NQPXkKQ09ORklHX0JUX0hDSVVBUlRfQVRIM0s9eQpD
T05GSUdfQlRfSENJVUFSVF9MTD15CkNPTkZJR19CVF9IQ0lVQVJUXzNXSVJFPXkKIyBDT05GSUdf
QlRfSENJVUFSVF9JTlRFTCBpcyBub3Qgc2V0CkNPTkZJR19CVF9IQ0lVQVJUX0JDTT15CiMgQ09O
RklHX0JUX0hDSVVBUlRfUlRMIGlzIG5vdCBzZXQKQ09ORklHX0JUX0hDSVVBUlRfUUNBPXkKIyBD
T05GSUdfQlRfSENJVUFSVF9BRzZYWCBpcyBub3Qgc2V0CiMgQ09ORklHX0JUX0hDSVVBUlRfTVJW
TCBpcyBub3Qgc2V0CiMgQ09ORklHX0JUX0hDSUJDTTIwM1ggaXMgbm90IHNldAojIENPTkZJR19C
VF9IQ0lCUEExMFggaXMgbm90IHNldAojIENPTkZJR19CVF9IQ0lCRlVTQiBpcyBub3Qgc2V0CkNP
TkZJR19CVF9IQ0lWSENJPXkKIyBDT05GSUdfQlRfTVJWTCBpcyBub3Qgc2V0CiMgQ09ORklHX0JU
X0FUSDNLIGlzIG5vdCBzZXQKIyBDT05GSUdfQlRfTVRLU0RJTyBpcyBub3Qgc2V0CiMgQ09ORklH
X0JUX01US1VBUlQgaXMgbm90IHNldAojIGVuZCBvZiBCbHVldG9vdGggZGV2aWNlIGRyaXZlcnMK
CiMgQ09ORklHX0FGX1JYUlBDIGlzIG5vdCBzZXQKIyBDT05GSUdfQUZfS0NNIGlzIG5vdCBzZXQK
Q09ORklHX1dJUkVMRVNTPXkKQ09ORklHX1dJUkVMRVNTX0VYVD15CkNPTkZJR19XRVhUX0NPUkU9
eQpDT05GSUdfV0VYVF9QUk9DPXkKQ09ORklHX1dFWFRfU1BZPXkKQ09ORklHX1dFWFRfUFJJVj15
CkNPTkZJR19DRkc4MDIxMT15CkNPTkZJR19OTDgwMjExX1RFU1RNT0RFPXkKIyBDT05GSUdfQ0ZH
ODAyMTFfREVWRUxPUEVSX1dBUk5JTkdTIGlzIG5vdCBzZXQKQ09ORklHX0NGRzgwMjExX1JFUVVJ
UkVfU0lHTkVEX1JFR0RCPXkKQ09ORklHX0NGRzgwMjExX1VTRV9LRVJORUxfUkVHREJfS0VZUz15
CkNPTkZJR19DRkc4MDIxMV9ERUZBVUxUX1BTPXkKIyBDT05GSUdfQ0ZHODAyMTFfREVCVUdGUyBp
cyBub3Qgc2V0CkNPTkZJR19DRkc4MDIxMV9DUkRBX1NVUFBPUlQ9eQpDT05GSUdfQ0ZHODAyMTFf
V0VYVD15CkNPTkZJR19MSUI4MDIxMT15CkNPTkZJR19MSUI4MDIxMV9DUllQVF9XRVA9eQpDT05G
SUdfTElCODAyMTFfQ1JZUFRfQ0NNUD15CkNPTkZJR19MSUI4MDIxMV9DUllQVF9US0lQPXkKIyBD
T05GSUdfTElCODAyMTFfREVCVUcgaXMgbm90IHNldApDT05GSUdfTUFDODAyMTE9eQpDT05GSUdf
TUFDODAyMTFfSEFTX1JDPXkKQ09ORklHX01BQzgwMjExX1JDX01JTlNUUkVMPXkKQ09ORklHX01B
QzgwMjExX1JDX0RFRkFVTFRfTUlOU1RSRUw9eQpDT05GSUdfTUFDODAyMTFfUkNfREVGQVVMVD0i
bWluc3RyZWxfaHQiCiMgQ09ORklHX01BQzgwMjExX01FU0ggaXMgbm90IHNldApDT05GSUdfTUFD
ODAyMTFfTEVEUz15CiMgQ09ORklHX01BQzgwMjExX0RFQlVHRlMgaXMgbm90IHNldAojIENPTkZJ
R19NQUM4MDIxMV9NRVNTQUdFX1RSQUNJTkcgaXMgbm90IHNldAojIENPTkZJR19NQUM4MDIxMV9E
RUJVR19NRU5VIGlzIG5vdCBzZXQKQ09ORklHX01BQzgwMjExX1NUQV9IQVNIX01BWF9TSVpFPTAK
IyBDT05GSUdfV0lNQVggaXMgbm90IHNldAojIENPTkZJR19SRktJTEwgaXMgbm90IHNldApDT05G
SUdfTkVUXzlQPXkKQ09ORklHX05FVF85UF9WSVJUSU89eQojIENPTkZJR19ORVRfOVBfWEVOIGlz
IG5vdCBzZXQKIyBDT05GSUdfTkVUXzlQX0RFQlVHIGlzIG5vdCBzZXQKIyBDT05GSUdfQ0FJRiBp
cyBub3Qgc2V0CiMgQ09ORklHX0NFUEhfTElCIGlzIG5vdCBzZXQKIyBDT05GSUdfTkZDIGlzIG5v
dCBzZXQKIyBDT05GSUdfUFNBTVBMRSBpcyBub3Qgc2V0CiMgQ09ORklHX05FVF9JRkUgaXMgbm90
IHNldAojIENPTkZJR19MV1RVTk5FTCBpcyBub3Qgc2V0CkNPTkZJR19EU1RfQ0FDSEU9eQpDT05G
SUdfR1JPX0NFTExTPXkKQ09ORklHX05FVF9ERVZMSU5LPXkKQ09ORklHX1BBR0VfUE9PTD15CkNP
TkZJR19GQUlMT1ZFUj15CkNPTkZJR19IQVZFX0VCUEZfSklUPXkKCiMKIyBEZXZpY2UgRHJpdmVy
cwojCkNPTkZJR19BUk1fQU1CQT15CkNPTkZJR19IQVZFX1BDST15CkNPTkZJR19QQ0k9eQpDT05G
SUdfUENJX0RPTUFJTlM9eQpDT05GSUdfUENJX0RPTUFJTlNfR0VORVJJQz15CkNPTkZJR19QQ0lf
U1lTQ0FMTD15CkNPTkZJR19QQ0lFUE9SVEJVUz15CiMgQ09ORklHX0hPVFBMVUdfUENJX1BDSUUg
aXMgbm90IHNldApDT05GSUdfUENJRUFFUj15CiMgQ09ORklHX1BDSUVBRVJfSU5KRUNUIGlzIG5v
dCBzZXQKIyBDT05GSUdfUENJRV9FQ1JDIGlzIG5vdCBzZXQKQ09ORklHX1BDSUVBU1BNPXkKIyBD
T05GSUdfUENJRUFTUE1fREVCVUcgaXMgbm90IHNldApDT05GSUdfUENJRUFTUE1fREVGQVVMVD15
CiMgQ09ORklHX1BDSUVBU1BNX1BPV0VSU0FWRSBpcyBub3Qgc2V0CiMgQ09ORklHX1BDSUVBU1BN
X1BPV0VSX1NVUEVSU0FWRSBpcyBub3Qgc2V0CiMgQ09ORklHX1BDSUVBU1BNX1BFUkZPUk1BTkNF
IGlzIG5vdCBzZXQKQ09ORklHX1BDSUVfUE1FPXkKIyBDT05GSUdfUENJRV9EUEMgaXMgbm90IHNl
dAojIENPTkZJR19QQ0lFX1BUTSBpcyBub3Qgc2V0CiMgQ09ORklHX1BDSUVfQlcgaXMgbm90IHNl
dApDT05GSUdfUENJX01TST15CkNPTkZJR19QQ0lfTVNJX0lSUV9ET01BSU49eQpDT05GSUdfUENJ
X1FVSVJLUz15CiMgQ09ORklHX1BDSV9ERUJVRyBpcyBub3Qgc2V0CiMgQ09ORklHX1BDSV9SRUFM
TE9DX0VOQUJMRV9BVVRPIGlzIG5vdCBzZXQKIyBDT05GSUdfUENJX1NUVUIgaXMgbm90IHNldAoj
IENPTkZJR19QQ0lfUEZfU1RVQiBpcyBub3Qgc2V0CkNPTkZJR19QQ0lfQVRTPXkKQ09ORklHX1BD
SV9FQ0FNPXkKQ09ORklHX1BDSV9JT1Y9eQojIENPTkZJR19QQ0lfUFJJIGlzIG5vdCBzZXQKIyBD
T05GSUdfUENJX1BBU0lEIGlzIG5vdCBzZXQKQ09ORklHX1BDSV9MQUJFTD15CkNPTkZJR19IT1RQ
TFVHX1BDST15CkNPTkZJR19IT1RQTFVHX1BDSV9BQ1BJPXkKIyBDT05GSUdfSE9UUExVR19QQ0lf
QUNQSV9JQk0gaXMgbm90IHNldAojIENPTkZJR19IT1RQTFVHX1BDSV9DUENJIGlzIG5vdCBzZXQK
IyBDT05GSUdfSE9UUExVR19QQ0lfU0hQQyBpcyBub3Qgc2V0CgojCiMgUENJIGNvbnRyb2xsZXIg
ZHJpdmVycwojCgojCiMgQ2FkZW5jZSBQQ0llIGNvbnRyb2xsZXJzIHN1cHBvcnQKIwojIENPTkZJ
R19QQ0lFX0NBREVOQ0VfSE9TVCBpcyBub3Qgc2V0CiMgZW5kIG9mIENhZGVuY2UgUENJZSBjb250
cm9sbGVycyBzdXBwb3J0CgojIENPTkZJR19QQ0lfRlRQQ0kxMDAgaXMgbm90IHNldApDT05GSUdf
UENJX0hPU1RfQ09NTU9OPXkKQ09ORklHX1BDSV9IT1NUX0dFTkVSSUM9eQojIENPTkZJR19QQ0lF
X1hJTElOWCBpcyBub3Qgc2V0CkNPTkZJR19QQ0lfWEdFTkU9eQpDT05GSUdfUENJX1hHRU5FX01T
ST15CkNPTkZJR19QQ0lFX0FMVEVSQT15CkNPTkZJR19QQ0lFX0FMVEVSQV9NU0k9eQpDT05GSUdf
UENJX0hPU1RfVEhVTkRFUl9QRU09eQpDT05GSUdfUENJX0hPU1RfVEhVTkRFUl9FQ0FNPXkKCiMK
IyBEZXNpZ25XYXJlIFBDSSBDb3JlIFN1cHBvcnQKIwpDT05GSUdfUENJRV9EVz15CkNPTkZJR19Q
Q0lFX0RXX0hPU1Q9eQojIENPTkZJR19QQ0lFX0RXX1BMQVRfSE9TVCBpcyBub3Qgc2V0CkNPTkZJ
R19QQ0lfSU1YNj15CiMgQ09ORklHX1BDSV9JTVg2X0NPTVBMSUFOQ0VfVEVTVCBpcyBub3Qgc2V0
CiMgQ09ORklHX0VQX01PREVfSU5fRVBfUkNfU1lTIGlzIG5vdCBzZXQKIyBDT05GSUdfUkNfTU9E
RV9JTl9FUF9SQ19TWVMgaXMgbm90IHNldApDT05GSUdfUENJX0xBWUVSU0NBUEU9eQpDT05GSUdf
UENJX0hJU0k9eQpDT05GSUdfUENJRV9LSVJJTj15CiMgQ09ORklHX1BDSV9NRVNPTiBpcyBub3Qg
c2V0CiMgQ09ORklHX1BDSUVfQUwgaXMgbm90IHNldAojIGVuZCBvZiBEZXNpZ25XYXJlIFBDSSBD
b3JlIFN1cHBvcnQKCiMKIyBNb2JpdmVpbCBQQ0llIENvcmUgU3VwcG9ydAojCkNPTkZJR19QQ0lF
X01PQklWRUlMPXkKQ09ORklHX1BDSUVfTU9CSVZFSUxfSE9TVD15CkNPTkZJR19QQ0lFX0xBWUVS
U0NBUEVfR0VOND15CiMgZW5kIG9mIE1vYml2ZWlsIFBDSWUgQ29yZSBTdXBwb3J0CiMgZW5kIG9m
IFBDSSBjb250cm9sbGVyIGRyaXZlcnMKCiMKIyBQQ0kgRW5kcG9pbnQKIwojIENPTkZJR19QQ0lf
RU5EUE9JTlQgaXMgbm90IHNldAojIGVuZCBvZiBQQ0kgRW5kcG9pbnQKCiMKIyBQQ0kgc3dpdGNo
IGNvbnRyb2xsZXIgZHJpdmVycwojCiMgQ09ORklHX1BDSV9TV19TV0lUQ0hURUMgaXMgbm90IHNl
dAojIGVuZCBvZiBQQ0kgc3dpdGNoIGNvbnRyb2xsZXIgZHJpdmVycwoKIyBDT05GSUdfUENDQVJE
IGlzIG5vdCBzZXQKIyBDT05GSUdfUkFQSURJTyBpcyBub3Qgc2V0CgojCiMgR2VuZXJpYyBEcml2
ZXIgT3B0aW9ucwojCiMgQ09ORklHX1VFVkVOVF9IRUxQRVIgaXMgbm90IHNldApDT05GSUdfREVW
VE1QRlM9eQpDT05GSUdfREVWVE1QRlNfTU9VTlQ9eQpDT05GSUdfU1RBTkRBTE9ORT15CkNPTkZJ
R19QUkVWRU5UX0ZJUk1XQVJFX0JVSUxEPXkKCiMKIyBGaXJtd2FyZSBsb2FkZXIKIwpDT05GSUdf
RldfTE9BREVSPXkKQ09ORklHX0ZXX0xPQURFUl9QQUdFRF9CVUY9eQpDT05GSUdfRVhUUkFfRklS
TVdBUkU9IiIKQ09ORklHX0ZXX0xPQURFUl9VU0VSX0hFTFBFUj15CkNPTkZJR19GV19MT0FERVJf
VVNFUl9IRUxQRVJfRkFMTEJBQ0s9eQojIENPTkZJR19GV19MT0FERVJfQ09NUFJFU1MgaXMgbm90
IHNldAojIGVuZCBvZiBGaXJtd2FyZSBsb2FkZXIKCkNPTkZJR19XQU5UX0RFVl9DT1JFRFVNUD15
CkNPTkZJR19BTExPV19ERVZfQ09SRURVTVA9eQpDT05GSUdfREVWX0NPUkVEVU1QPXkKIyBDT05G
SUdfREVCVUdfRFJJVkVSIGlzIG5vdCBzZXQKIyBDT05GSUdfREVCVUdfREVWUkVTIGlzIG5vdCBz
ZXQKIyBDT05GSUdfREVCVUdfVEVTVF9EUklWRVJfUkVNT1ZFIGlzIG5vdCBzZXQKIyBDT05GSUdf
VEVTVF9BU1lOQ19EUklWRVJfUFJPQkUgaXMgbm90IHNldApDT05GSUdfU1lTX0hZUEVSVklTT1I9
eQpDT05GSUdfR0VORVJJQ19DUFVfQVVUT1BST0JFPXkKQ09ORklHX0dFTkVSSUNfQ1BVX1ZVTE5F
UkFCSUxJVElFUz15CkNPTkZJR19TT0NfQlVTPXkKQ09ORklHX1JFR01BUD15CkNPTkZJR19SRUdN
QVBfSTJDPXkKQ09ORklHX1JFR01BUF9TUEk9eQpDT05GSUdfUkVHTUFQX01NSU89eQpDT05GSUdf
UkVHTUFQX0lSUT15CkNPTkZJR19ETUFfU0hBUkVEX0JVRkZFUj15CiMgQ09ORklHX0RNQV9GRU5D
RV9UUkFDRSBpcyBub3Qgc2V0CkNPTkZJR19HRU5FUklDX0FSQ0hfVE9QT0xPR1k9eQojIGVuZCBv
ZiBHZW5lcmljIERyaXZlciBPcHRpb25zCgojCiMgQnVzIGRldmljZXMKIwpDT05GSUdfQlJDTVNU
Ql9HSVNCX0FSQj15CiMgQ09ORklHX01PWFRFVCBpcyBub3Qgc2V0CiMgQ09ORklHX0lNWF9XRUlN
IGlzIG5vdCBzZXQKQ09ORklHX1NJTVBMRV9QTV9CVVM9eQpDT05GSUdfVkVYUFJFU1NfQ09ORklH
PXkKQ09ORklHX0ZTTF9NQ19CVVM9eQpDT05GSUdfRlNMX01DX1VBUElfU1VQUE9SVD15CiMgZW5k
IG9mIEJ1cyBkZXZpY2VzCgojIENPTkZJR19DT05ORUNUT1IgaXMgbm90IHNldAojIENPTkZJR19H
TlNTIGlzIG5vdCBzZXQKQ09ORklHX01URD15CiMgQ09ORklHX01URF9URVNUUyBpcyBub3Qgc2V0
CgojCiMgUGFydGl0aW9uIHBhcnNlcnMKIwojIENPTkZJR19NVERfQVI3X1BBUlRTIGlzIG5vdCBz
ZXQKQ09ORklHX01URF9DTURMSU5FX1BBUlRTPXkKQ09ORklHX01URF9PRl9QQVJUUz15CiMgQ09O
RklHX01URF9BRlNfUEFSVFMgaXMgbm90IHNldAojIENPTkZJR19NVERfUkVEQk9PVF9QQVJUUyBp
cyBub3Qgc2V0CiMgZW5kIG9mIFBhcnRpdGlvbiBwYXJzZXJzCgojCiMgVXNlciBNb2R1bGVzIEFu
ZCBUcmFuc2xhdGlvbiBMYXllcnMKIwpDT05GSUdfTVREX0JMS0RFVlM9eQpDT05GSUdfTVREX0JM
T0NLPXkKIyBDT05GSUdfRlRMIGlzIG5vdCBzZXQKIyBDT05GSUdfTkZUTCBpcyBub3Qgc2V0CiMg
Q09ORklHX0lORlRMIGlzIG5vdCBzZXQKIyBDT05GSUdfUkZEX0ZUTCBpcyBub3Qgc2V0CiMgQ09O
RklHX1NTRkRDIGlzIG5vdCBzZXQKIyBDT05GSUdfU01fRlRMIGlzIG5vdCBzZXQKIyBDT05GSUdf
TVREX09PUFMgaXMgbm90IHNldAojIENPTkZJR19NVERfU1dBUCBpcyBub3Qgc2V0CiMgQ09ORklH
X01URF9QQVJUSVRJT05FRF9NQVNURVIgaXMgbm90IHNldAoKIwojIFJBTS9ST00vRmxhc2ggY2hp
cCBkcml2ZXJzCiMKQ09ORklHX01URF9DRkk9eQojIENPTkZJR19NVERfSkVERUNQUk9CRSBpcyBu
b3Qgc2V0CkNPTkZJR19NVERfR0VOX1BST0JFPXkKQ09ORklHX01URF9DRklfQURWX09QVElPTlM9
eQpDT05GSUdfTVREX0NGSV9OT1NXQVA9eQojIENPTkZJR19NVERfQ0ZJX0JFX0JZVEVfU1dBUCBp
cyBub3Qgc2V0CiMgQ09ORklHX01URF9DRklfTEVfQllURV9TV0FQIGlzIG5vdCBzZXQKIyBDT05G
SUdfTVREX0NGSV9HRU9NRVRSWSBpcyBub3Qgc2V0CkNPTkZJR19NVERfTUFQX0JBTktfV0lEVEhf
MT15CkNPTkZJR19NVERfTUFQX0JBTktfV0lEVEhfMj15CkNPTkZJR19NVERfTUFQX0JBTktfV0lE
VEhfND15CkNPTkZJR19NVERfQ0ZJX0kxPXkKQ09ORklHX01URF9DRklfSTI9eQojIENPTkZJR19N
VERfT1RQIGlzIG5vdCBzZXQKQ09ORklHX01URF9DRklfSU5URUxFWFQ9eQpDT05GSUdfTVREX0NG
SV9BTURTVEQ9eQpDT05GSUdfTVREX0NGSV9TVEFBPXkKQ09ORklHX01URF9DRklfVVRJTD15CiMg
Q09ORklHX01URF9SQU0gaXMgbm90IHNldAojIENPTkZJR19NVERfUk9NIGlzIG5vdCBzZXQKIyBD
T05GSUdfTVREX0FCU0VOVCBpcyBub3Qgc2V0CiMgZW5kIG9mIFJBTS9ST00vRmxhc2ggY2hpcCBk
cml2ZXJzCgojCiMgTWFwcGluZyBkcml2ZXJzIGZvciBjaGlwIGFjY2VzcwojCiMgQ09ORklHX01U
RF9DT01QTEVYX01BUFBJTkdTIGlzIG5vdCBzZXQKQ09ORklHX01URF9QSFlTTUFQPXkKIyBDT05G
SUdfTVREX1BIWVNNQVBfQ09NUEFUIGlzIG5vdCBzZXQKQ09ORklHX01URF9QSFlTTUFQX09GPXkK
IyBDT05GSUdfTVREX1BIWVNNQVBfVkVSU0FUSUxFIGlzIG5vdCBzZXQKIyBDT05GSUdfTVREX1BI
WVNNQVBfR0VNSU5JIGlzIG5vdCBzZXQKIyBDT05GSUdfTVREX0lOVEVMX1ZSX05PUiBpcyBub3Qg
c2V0CiMgQ09ORklHX01URF9QTEFUUkFNIGlzIG5vdCBzZXQKIyBlbmQgb2YgTWFwcGluZyBkcml2
ZXJzIGZvciBjaGlwIGFjY2VzcwoKIwojIFNlbGYtY29udGFpbmVkIE1URCBkZXZpY2UgZHJpdmVy
cwojCiMgQ09ORklHX01URF9QTUM1NTEgaXMgbm90IHNldApDT05GSUdfTVREX0RBVEFGTEFTSD15
CiMgQ09ORklHX01URF9EQVRBRkxBU0hfV1JJVEVfVkVSSUZZIGlzIG5vdCBzZXQKIyBDT05GSUdf
TVREX0RBVEFGTEFTSF9PVFAgaXMgbm90IHNldAojIENPTkZJR19NVERfTUNIUDIzSzI1NiBpcyBu
b3Qgc2V0CkNPTkZJR19NVERfU1NUMjVMPXkKIyBDT05GSUdfTVREX1NMUkFNIGlzIG5vdCBzZXQK
IyBDT05GSUdfTVREX1BIUkFNIGlzIG5vdCBzZXQKIyBDT05GSUdfTVREX01URFJBTSBpcyBub3Qg
c2V0CiMgQ09ORklHX01URF9CTE9DSzJNVEQgaXMgbm90IHNldAoKIwojIERpc2stT24tQ2hpcCBE
ZXZpY2UgRHJpdmVycwojCiMgQ09ORklHX01URF9ET0NHMyBpcyBub3Qgc2V0CiMgZW5kIG9mIFNl
bGYtY29udGFpbmVkIE1URCBkZXZpY2UgZHJpdmVycwoKQ09ORklHX01URF9OQU5EX0NPUkU9eQoj
IENPTkZJR19NVERfT05FTkFORCBpcyBub3Qgc2V0CkNPTkZJR19NVERfTkFORF9FQ0NfU1dfSEFN
TUlORz15CiMgQ09ORklHX01URF9OQU5EX0VDQ19TV19IQU1NSU5HX1NNQyBpcyBub3Qgc2V0CkNP
TkZJR19NVERfUkFXX05BTkQ9eQojIENPTkZJR19NVERfTkFORF9FQ0NfU1dfQkNIIGlzIG5vdCBz
ZXQKCiMKIyBSYXcvcGFyYWxsZWwgTkFORCBmbGFzaCBjb250cm9sbGVycwojCkNPTkZJR19NVERf
TkFORF9ERU5BTEk9eQojIENPTkZJR19NVERfTkFORF9ERU5BTElfUENJIGlzIG5vdCBzZXQKQ09O
RklHX01URF9OQU5EX0RFTkFMSV9EVD15CiMgQ09ORklHX01URF9OQU5EX0NBRkUgaXMgbm90IHNl
dAojIENPTkZJR19NVERfTkFORF9CUkNNTkFORCBpcyBub3Qgc2V0CkNPTkZJR19NVERfTkFORF9H
UE1JX05BTkQ9eQpDT05GSUdfTVREX05BTkRfRlNMX0lGQz15CiMgQ09ORklHX01URF9OQU5EX01Y
QyBpcyBub3Qgc2V0CiMgQ09ORklHX01URF9OQU5EX01YSUMgaXMgbm90IHNldAojIENPTkZJR19N
VERfTkFORF9HUElPIGlzIG5vdCBzZXQKIyBDT05GSUdfTVREX05BTkRfUExBVEZPUk0gaXMgbm90
IHNldAoKIwojIE1pc2MKIwojIENPTkZJR19NVERfTkFORF9OQU5EU0lNIGlzIG5vdCBzZXQKIyBD
T05GSUdfTVREX05BTkRfUklDT0ggaXMgbm90IHNldAojIENPTkZJR19NVERfTkFORF9ESVNLT05D
SElQIGlzIG5vdCBzZXQKIyBDT05GSUdfTVREX1NQSV9OQU5EIGlzIG5vdCBzZXQKCiMKIyBMUERE
UiAmIExQRERSMiBQQ00gbWVtb3J5IGRyaXZlcnMKIwojIENPTkZJR19NVERfTFBERFIgaXMgbm90
IHNldAojIGVuZCBvZiBMUEREUiAmIExQRERSMiBQQ00gbWVtb3J5IGRyaXZlcnMKCkNPTkZJR19N
VERfU1BJX05PUj15CiMgQ09ORklHX01URF9TUElfTk9SX1VTRV80S19TRUNUT1JTIGlzIG5vdCBz
ZXQKIyBDT05GSUdfU1BJX0NBREVOQ0VfUVVBRFNQSSBpcyBub3Qgc2V0CiMgQ09ORklHX1NQSV9N
VEtfUVVBRFNQSSBpcyBub3Qgc2V0CkNPTkZJR19NVERfVUJJPXkKQ09ORklHX01URF9VQklfV0xf
VEhSRVNIT0xEPTQwOTYKQ09ORklHX01URF9VQklfQkVCX0xJTUlUPTIwCiMgQ09ORklHX01URF9V
QklfRkFTVE1BUCBpcyBub3Qgc2V0CiMgQ09ORklHX01URF9VQklfR0xVRUJJIGlzIG5vdCBzZXQK
IyBDT05GSUdfTVREX1VCSV9CTE9DSyBpcyBub3Qgc2V0CiMgQ09ORklHX01URF9IWVBFUkJVUyBp
cyBub3Qgc2V0CkNPTkZJR19EVEM9eQpDT05GSUdfT0Y9eQojIENPTkZJR19PRl9VTklUVEVTVCBp
cyBub3Qgc2V0CkNPTkZJR19PRl9GTEFUVFJFRT15CkNPTkZJR19PRl9FQVJMWV9GTEFUVFJFRT15
CkNPTkZJR19PRl9LT0JKPXkKQ09ORklHX09GX0RZTkFNSUM9eQpDT05GSUdfT0ZfQUREUkVTUz15
CkNPTkZJR19PRl9JUlE9eQpDT05GSUdfT0ZfTkVUPXkKQ09ORklHX09GX01ESU89eQpDT05GSUdf
T0ZfUkVTRVJWRURfTUVNPXkKQ09ORklHX09GX1JFU09MVkU9eQpDT05GSUdfT0ZfT1ZFUkxBWT15
CkNPTkZJR19PRl9OVU1BPXkKIyBDT05GSUdfUEFSUE9SVCBpcyBub3Qgc2V0CkNPTkZJR19QTlA9
eQpDT05GSUdfUE5QX0RFQlVHX01FU1NBR0VTPXkKCiMKIyBQcm90b2NvbHMKIwpDT05GSUdfUE5Q
QUNQST15CkNPTkZJR19CTEtfREVWPXkKIyBDT05GSUdfQkxLX0RFVl9OVUxMX0JMSyBpcyBub3Qg
c2V0CiMgQ09ORklHX0JMS19ERVZfUENJRVNTRF9NVElQMzJYWCBpcyBub3Qgc2V0CiMgQ09ORklH
X0JMS19ERVZfVU1FTSBpcyBub3Qgc2V0CkNPTkZJR19CTEtfREVWX0xPT1A9eQpDT05GSUdfQkxL
X0RFVl9MT09QX01JTl9DT1VOVD04CiMgQ09ORklHX0JMS19ERVZfQ1JZUFRPTE9PUCBpcyBub3Qg
c2V0CiMgQ09ORklHX0JMS19ERVZfRFJCRCBpcyBub3Qgc2V0CkNPTkZJR19CTEtfREVWX05CRD1t
CiMgQ09ORklHX0JMS19ERVZfU0tEIGlzIG5vdCBzZXQKIyBDT05GSUdfQkxLX0RFVl9TWDggaXMg
bm90IHNldAojIENPTkZJR19CTEtfREVWX1JBTSBpcyBub3Qgc2V0CiMgQ09ORklHX0NEUk9NX1BL
VENEVkQgaXMgbm90IHNldAojIENPTkZJR19BVEFfT1ZFUl9FVEggaXMgbm90IHNldApDT05GSUdf
WEVOX0JMS0RFVl9GUk9OVEVORD15CkNPTkZJR19YRU5fQkxLREVWX0JBQ0tFTkQ9bQpDT05GSUdf
VklSVElPX0JMSz15CiMgQ09ORklHX1ZJUlRJT19CTEtfU0NTSSBpcyBub3Qgc2V0CiMgQ09ORklH
X0JMS19ERVZfUkJEIGlzIG5vdCBzZXQKIyBDT05GSUdfQkxLX0RFVl9SU1hYIGlzIG5vdCBzZXQK
CiMKIyBOVk1FIFN1cHBvcnQKIwpDT05GSUdfTlZNRV9DT1JFPXkKQ09ORklHX0JMS19ERVZfTlZN
RT15CiMgQ09ORklHX05WTUVfTVVMVElQQVRIIGlzIG5vdCBzZXQKIyBDT05GSUdfTlZNRV9GQyBp
cyBub3Qgc2V0CiMgQ09ORklHX05WTUVfVENQIGlzIG5vdCBzZXQKIyBDT05GSUdfTlZNRV9UQVJH
RVQgaXMgbm90IHNldAojIGVuZCBvZiBOVk1FIFN1cHBvcnQKCiMKIyBNaXNjIGRldmljZXMKIwoj
IENPTkZJR19BRDUyNVhfRFBPVCBpcyBub3Qgc2V0CiMgQ09ORklHX0RVTU1ZX0lSUSBpcyBub3Qg
c2V0CiMgQ09ORklHX1BIQU5UT00gaXMgbm90IHNldAojIENPTkZJR19USUZNX0NPUkUgaXMgbm90
IHNldAojIENPTkZJR19JQ1M5MzJTNDAxIGlzIG5vdCBzZXQKIyBDT05GSUdfRU5DTE9TVVJFX1NF
UlZJQ0VTIGlzIG5vdCBzZXQKIyBDT05GSUdfSFBfSUxPIGlzIG5vdCBzZXQKIyBDT05GSUdfQVBE
Uzk4MDJBTFMgaXMgbm90IHNldAojIENPTkZJR19JU0wyOTAwMyBpcyBub3Qgc2V0CiMgQ09ORklH
X0lTTDI5MDIwIGlzIG5vdCBzZXQKQ09ORklHX1NFTlNPUlNfRlhPUzg3MDA9eQpDT05GSUdfU0VO
U09SU19GWEFTMjEwMFg9eQojIENPTkZJR19TRU5TT1JTX1RTTDI1NTAgaXMgbm90IHNldAojIENP
TkZJR19TRU5TT1JTX0JIMTc3MCBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfQVBEUzk5MFgg
aXMgbm90IHNldAojIENPTkZJR19ITUM2MzUyIGlzIG5vdCBzZXQKIyBDT05GSUdfRFMxNjgyIGlz
IG5vdCBzZXQKIyBDT05GSUdfTEFUVElDRV9FQ1AzX0NPTkZJRyBpcyBub3Qgc2V0CkNPTkZJR19T
UkFNPXkKQ09ORklHX1ZFWFBSRVNTX1NZU0NGRz15CiMgQ09ORklHX1BDSV9FTkRQT0lOVF9URVNU
IGlzIG5vdCBzZXQKIyBDT05GSUdfWElMSU5YX1NERkVDIGlzIG5vdCBzZXQKIyBDT05GSUdfUFZQ
QU5JQyBpcyBub3Qgc2V0CiMgQ09ORklHX0MyUE9SVCBpcyBub3Qgc2V0CgojCiMgRUVQUk9NIHN1
cHBvcnQKIwpDT05GSUdfRUVQUk9NX0FUMjQ9eQpDT05GSUdfRUVQUk9NX0FUMjU9bQojIENPTkZJ
R19FRVBST01fTEVHQUNZIGlzIG5vdCBzZXQKIyBDT05GSUdfRUVQUk9NX01BWDY4NzUgaXMgbm90
IHNldAojIENPTkZJR19FRVBST01fOTNDWDYgaXMgbm90IHNldAojIENPTkZJR19FRVBST01fOTNY
WDQ2IGlzIG5vdCBzZXQKIyBDT05GSUdfRUVQUk9NX0lEVF84OUhQRVNYIGlzIG5vdCBzZXQKIyBD
T05GSUdfRUVQUk9NX0VFMTAwNCBpcyBub3Qgc2V0CiMgZW5kIG9mIEVFUFJPTSBzdXBwb3J0Cgoj
IENPTkZJR19DQjcxMF9DT1JFIGlzIG5vdCBzZXQKCiMKIyBUZXhhcyBJbnN0cnVtZW50cyBzaGFy
ZWQgdHJhbnNwb3J0IGxpbmUgZGlzY2lwbGluZQojCiMgQ09ORklHX1RJX1NUIGlzIG5vdCBzZXQK
IyBlbmQgb2YgVGV4YXMgSW5zdHJ1bWVudHMgc2hhcmVkIHRyYW5zcG9ydCBsaW5lIGRpc2NpcGxp
bmUKCiMgQ09ORklHX1NFTlNPUlNfTElTM19JMkMgaXMgbm90IHNldAojIENPTkZJR19BTFRFUkFf
U1RBUEwgaXMgbm90IHNldAoKIwojIEludGVsIE1JQyAmIHJlbGF0ZWQgc3VwcG9ydAojCgojCiMg
SW50ZWwgTUlDIEJ1cyBEcml2ZXIKIwoKIwojIFNDSUYgQnVzIERyaXZlcgojCgojCiMgVk9QIEJ1
cyBEcml2ZXIKIwojIENPTkZJR19WT1BfQlVTIGlzIG5vdCBzZXQKCiMKIyBJbnRlbCBNSUMgSG9z
dCBEcml2ZXIKIwoKIwojIEludGVsIE1JQyBDYXJkIERyaXZlcgojCgojCiMgU0NJRiBEcml2ZXIK
IwoKIwojIEludGVsIE1JQyBDb3Byb2Nlc3NvciBTdGF0ZSBNYW5hZ2VtZW50IChDT1NNKSBEcml2
ZXJzCiMKCiMKIyBWT1AgRHJpdmVyCiMKIyBlbmQgb2YgSW50ZWwgTUlDICYgcmVsYXRlZCBzdXBw
b3J0CgojIENPTkZJR19HRU5XUUUgaXMgbm90IHNldAojIENPTkZJR19FQ0hPIGlzIG5vdCBzZXQK
IyBDT05GSUdfTUlTQ19BTENPUl9QQ0kgaXMgbm90IHNldAojIENPTkZJR19NSVNDX1JUU1hfUENJ
IGlzIG5vdCBzZXQKIyBDT05GSUdfTUlTQ19SVFNYX1VTQiBpcyBub3Qgc2V0CiMgQ09ORklHX0hB
QkFOQV9BSSBpcyBub3Qgc2V0CiMgZW5kIG9mIE1pc2MgZGV2aWNlcwoKIwojIFNDU0kgZGV2aWNl
IHN1cHBvcnQKIwpDT05GSUdfU0NTSV9NT0Q9eQpDT05GSUdfUkFJRF9BVFRSUz1tCkNPTkZJR19T
Q1NJPXkKQ09ORklHX1NDU0lfRE1BPXkKIyBDT05GSUdfU0NTSV9QUk9DX0ZTIGlzIG5vdCBzZXQK
CiMKIyBTQ1NJIHN1cHBvcnQgdHlwZSAoZGlzaywgdGFwZSwgQ0QtUk9NKQojCkNPTkZJR19CTEtf
REVWX1NEPXkKIyBDT05GSUdfQ0hSX0RFVl9TVCBpcyBub3Qgc2V0CiMgQ09ORklHX0JMS19ERVZf
U1IgaXMgbm90IHNldAojIENPTkZJR19DSFJfREVWX1NHIGlzIG5vdCBzZXQKIyBDT05GSUdfQ0hS
X0RFVl9TQ0ggaXMgbm90IHNldAojIENPTkZJR19TQ1NJX0NPTlNUQU5UUyBpcyBub3Qgc2V0CiMg
Q09ORklHX1NDU0lfTE9HR0lORyBpcyBub3Qgc2V0CiMgQ09ORklHX1NDU0lfU0NBTl9BU1lOQyBp
cyBub3Qgc2V0CgojCiMgU0NTSSBUcmFuc3BvcnRzCiMKIyBDT05GSUdfU0NTSV9TUElfQVRUUlMg
aXMgbm90IHNldAojIENPTkZJR19TQ1NJX0ZDX0FUVFJTIGlzIG5vdCBzZXQKIyBDT05GSUdfU0NT
SV9JU0NTSV9BVFRSUyBpcyBub3Qgc2V0CkNPTkZJR19TQ1NJX1NBU19BVFRSUz15CkNPTkZJR19T
Q1NJX1NBU19MSUJTQVM9eQpDT05GSUdfU0NTSV9TQVNfQVRBPXkKQ09ORklHX1NDU0lfU0FTX0hP
U1RfU01QPXkKIyBDT05GSUdfU0NTSV9TUlBfQVRUUlMgaXMgbm90IHNldAojIGVuZCBvZiBTQ1NJ
IFRyYW5zcG9ydHMKCkNPTkZJR19TQ1NJX0xPV0xFVkVMPXkKIyBDT05GSUdfSVNDU0lfVENQIGlz
IG5vdCBzZXQKIyBDT05GSUdfSVNDU0lfQk9PVF9TWVNGUyBpcyBub3Qgc2V0CiMgQ09ORklHX1ND
U0lfQ1hHQjNfSVNDU0kgaXMgbm90IHNldAojIENPTkZJR19TQ1NJX0NYR0I0X0lTQ1NJIGlzIG5v
dCBzZXQKIyBDT05GSUdfU0NTSV9CTlgyX0lTQ1NJIGlzIG5vdCBzZXQKIyBDT05GSUdfQkUySVND
U0kgaXMgbm90IHNldAojIENPTkZJR19CTEtfREVWXzNXX1hYWFhfUkFJRCBpcyBub3Qgc2V0CiMg
Q09ORklHX1NDU0lfSFBTQSBpcyBub3Qgc2V0CiMgQ09ORklHX1NDU0lfM1dfOVhYWCBpcyBub3Qg
c2V0CiMgQ09ORklHX1NDU0lfM1dfU0FTIGlzIG5vdCBzZXQKIyBDT05GSUdfU0NTSV9BQ0FSRCBp
cyBub3Qgc2V0CiMgQ09ORklHX1NDU0lfQUFDUkFJRCBpcyBub3Qgc2V0CiMgQ09ORklHX1NDU0lf
QUlDN1hYWCBpcyBub3Qgc2V0CiMgQ09ORklHX1NDU0lfQUlDNzlYWCBpcyBub3Qgc2V0CiMgQ09O
RklHX1NDU0lfQUlDOTRYWCBpcyBub3Qgc2V0CkNPTkZJR19TQ1NJX0hJU0lfU0FTPXkKQ09ORklH
X1NDU0lfSElTSV9TQVNfUENJPXkKIyBDT05GSUdfU0NTSV9NVlNBUyBpcyBub3Qgc2V0CiMgQ09O
RklHX1NDU0lfTVZVTUkgaXMgbm90IHNldAojIENPTkZJR19TQ1NJX0FEVkFOU1lTIGlzIG5vdCBz
ZXQKIyBDT05GSUdfU0NTSV9BUkNNU1IgaXMgbm90IHNldAojIENPTkZJR19TQ1NJX0VTQVMyUiBp
cyBub3Qgc2V0CiMgQ09ORklHX01FR0FSQUlEX05FV0dFTiBpcyBub3Qgc2V0CiMgQ09ORklHX01F
R0FSQUlEX0xFR0FDWSBpcyBub3Qgc2V0CiMgQ09ORklHX01FR0FSQUlEX1NBUyBpcyBub3Qgc2V0
CkNPTkZJR19TQ1NJX01QVDNTQVM9bQpDT05GSUdfU0NTSV9NUFQyU0FTX01BWF9TR0U9MTI4CkNP
TkZJR19TQ1NJX01QVDNTQVNfTUFYX1NHRT0xMjgKIyBDT05GSUdfU0NTSV9NUFQyU0FTIGlzIG5v
dCBzZXQKIyBDT05GSUdfU0NTSV9TTUFSVFBRSSBpcyBub3Qgc2V0CkNPTkZJR19TQ1NJX1VGU0hD
RD15CiMgQ09ORklHX1NDU0lfVUZTSENEX1BDSSBpcyBub3Qgc2V0CkNPTkZJR19TQ1NJX1VGU0hD
RF9QTEFURk9STT15CiMgQ09ORklHX1NDU0lfVUZTX0NETlNfUExBVEZPUk0gaXMgbm90IHNldAoj
IENPTkZJR19TQ1NJX1VGU19EV0NfVENfUExBVEZPUk0gaXMgbm90IHNldAojIENPTkZJR19TQ1NJ
X1VGU19CU0cgaXMgbm90IHNldAojIENPTkZJR19TQ1NJX0hQVElPUCBpcyBub3Qgc2V0CiMgQ09O
RklHX1NDU0lfTVlSQiBpcyBub3Qgc2V0CiMgQ09ORklHX1NDU0lfTVlSUyBpcyBub3Qgc2V0CiMg
Q09ORklHX1hFTl9TQ1NJX0ZST05URU5EIGlzIG5vdCBzZXQKIyBDT05GSUdfU0NTSV9TTklDIGlz
IG5vdCBzZXQKIyBDT05GSUdfU0NTSV9ETVgzMTkxRCBpcyBub3Qgc2V0CiMgQ09ORklHX1NDU0lf
RkRPTUFJTl9QQ0kgaXMgbm90IHNldAojIENPTkZJR19TQ1NJX0dEVEggaXMgbm90IHNldAojIENP
TkZJR19TQ1NJX0lQUyBpcyBub3Qgc2V0CiMgQ09ORklHX1NDU0lfSU5JVElPIGlzIG5vdCBzZXQK
IyBDT05GSUdfU0NTSV9JTklBMTAwIGlzIG5vdCBzZXQKIyBDT05GSUdfU0NTSV9TVEVYIGlzIG5v
dCBzZXQKIyBDT05GSUdfU0NTSV9TWU01M0M4WFhfMiBpcyBub3Qgc2V0CiMgQ09ORklHX1NDU0lf
SVBSIGlzIG5vdCBzZXQKIyBDT05GSUdfU0NTSV9RTE9HSUNfMTI4MCBpcyBub3Qgc2V0CiMgQ09O
RklHX1NDU0lfUUxBX0lTQ1NJIGlzIG5vdCBzZXQKIyBDT05GSUdfU0NTSV9EQzM5NXggaXMgbm90
IHNldAojIENPTkZJR19TQ1NJX0FNNTNDOTc0IGlzIG5vdCBzZXQKIyBDT05GSUdfU0NTSV9XRDcx
OVggaXMgbm90IHNldAojIENPTkZJR19TQ1NJX0RFQlVHIGlzIG5vdCBzZXQKIyBDT05GSUdfU0NT
SV9QTUNSQUlEIGlzIG5vdCBzZXQKIyBDT05GSUdfU0NTSV9QTTgwMDEgaXMgbm90IHNldAojIENP
TkZJR19TQ1NJX1ZJUlRJTyBpcyBub3Qgc2V0CiMgQ09ORklHX1NDU0lfREggaXMgbm90IHNldAoj
IGVuZCBvZiBTQ1NJIGRldmljZSBzdXBwb3J0CgpDT05GSUdfSEFWRV9QQVRBX1BMQVRGT1JNPXkK
Q09ORklHX0FUQT15CkNPTkZJR19BVEFfVkVSQk9TRV9FUlJPUj15CkNPTkZJR19BVEFfQUNQST15
CiMgQ09ORklHX1NBVEFfWlBPREQgaXMgbm90IHNldApDT05GSUdfU0FUQV9QTVA9eQoKIwojIENv
bnRyb2xsZXJzIHdpdGggbm9uLVNGRiBuYXRpdmUgaW50ZXJmYWNlCiMKQ09ORklHX1NBVEFfQUhD
ST15CkNPTkZJR19TQVRBX01PQklMRV9MUE1fUE9MSUNZPTAKQ09ORklHX1NBVEFfQUhDSV9QTEFU
Rk9STT15CkNPTkZJR19BSENJX0lNWD15CkNPTkZJR19BSENJX0NFVkE9eQpDT05GSUdfQUhDSV9Y
R0VORT15CkNPTkZJR19BSENJX1FPUklRPXkKIyBDT05GSUdfU0FUQV9JTklDMTYyWCBpcyBub3Qg
c2V0CiMgQ09ORklHX1NBVEFfQUNBUkRfQUhDSSBpcyBub3Qgc2V0CkNPTkZJR19TQVRBX1NJTDI0
PXkKQ09ORklHX0FUQV9TRkY9eQoKIwojIFNGRiBjb250cm9sbGVycyB3aXRoIGN1c3RvbSBETUEg
aW50ZXJmYWNlCiMKIyBDT05GSUdfUERDX0FETUEgaXMgbm90IHNldAojIENPTkZJR19TQVRBX1FT
VE9SIGlzIG5vdCBzZXQKIyBDT05GSUdfU0FUQV9TWDQgaXMgbm90IHNldApDT05GSUdfQVRBX0JN
RE1BPXkKCiMKIyBTQVRBIFNGRiBjb250cm9sbGVycyB3aXRoIEJNRE1BCiMKIyBDT05GSUdfQVRB
X1BJSVggaXMgbm90IHNldAojIENPTkZJR19TQVRBX0RXQyBpcyBub3Qgc2V0CiMgQ09ORklHX1NB
VEFfTVYgaXMgbm90IHNldAojIENPTkZJR19TQVRBX05WIGlzIG5vdCBzZXQKIyBDT05GSUdfU0FU
QV9QUk9NSVNFIGlzIG5vdCBzZXQKIyBDT05GSUdfU0FUQV9TSUwgaXMgbm90IHNldAojIENPTkZJ
R19TQVRBX1NJUyBpcyBub3Qgc2V0CiMgQ09ORklHX1NBVEFfU1ZXIGlzIG5vdCBzZXQKIyBDT05G
SUdfU0FUQV9VTEkgaXMgbm90IHNldAojIENPTkZJR19TQVRBX1ZJQSBpcyBub3Qgc2V0CiMgQ09O
RklHX1NBVEFfVklURVNTRSBpcyBub3Qgc2V0CgojCiMgUEFUQSBTRkYgY29udHJvbGxlcnMgd2l0
aCBCTURNQQojCiMgQ09ORklHX1BBVEFfQUxJIGlzIG5vdCBzZXQKIyBDT05GSUdfUEFUQV9BTUQg
aXMgbm90IHNldAojIENPTkZJR19QQVRBX0FSVE9QIGlzIG5vdCBzZXQKIyBDT05GSUdfUEFUQV9B
VElJWFAgaXMgbm90IHNldAojIENPTkZJR19QQVRBX0FUUDg2N1ggaXMgbm90IHNldAojIENPTkZJ
R19QQVRBX0NNRDY0WCBpcyBub3Qgc2V0CiMgQ09ORklHX1BBVEFfQ1lQUkVTUyBpcyBub3Qgc2V0
CiMgQ09ORklHX1BBVEFfRUZBUiBpcyBub3Qgc2V0CiMgQ09ORklHX1BBVEFfSFBUMzY2IGlzIG5v
dCBzZXQKIyBDT05GSUdfUEFUQV9IUFQzN1ggaXMgbm90IHNldAojIENPTkZJR19QQVRBX0hQVDNY
Mk4gaXMgbm90IHNldAojIENPTkZJR19QQVRBX0hQVDNYMyBpcyBub3Qgc2V0CiMgQ09ORklHX1BB
VEFfSU1YIGlzIG5vdCBzZXQKIyBDT05GSUdfUEFUQV9JVDgyMTMgaXMgbm90IHNldAojIENPTkZJ
R19QQVRBX0lUODIxWCBpcyBub3Qgc2V0CiMgQ09ORklHX1BBVEFfSk1JQ1JPTiBpcyBub3Qgc2V0
CiMgQ09ORklHX1BBVEFfTUFSVkVMTCBpcyBub3Qgc2V0CiMgQ09ORklHX1BBVEFfTkVUQ0VMTCBp
cyBub3Qgc2V0CiMgQ09ORklHX1BBVEFfTklOSkEzMiBpcyBub3Qgc2V0CiMgQ09ORklHX1BBVEFf
TlM4NzQxNSBpcyBub3Qgc2V0CiMgQ09ORklHX1BBVEFfT0xEUElJWCBpcyBub3Qgc2V0CiMgQ09O
RklHX1BBVEFfT1BUSURNQSBpcyBub3Qgc2V0CiMgQ09ORklHX1BBVEFfUERDMjAyN1ggaXMgbm90
IHNldAojIENPTkZJR19QQVRBX1BEQ19PTEQgaXMgbm90IHNldAojIENPTkZJR19QQVRBX1JBRElT
WVMgaXMgbm90IHNldAojIENPTkZJR19QQVRBX1JEQyBpcyBub3Qgc2V0CiMgQ09ORklHX1BBVEFf
U0NIIGlzIG5vdCBzZXQKIyBDT05GSUdfUEFUQV9TRVJWRVJXT1JLUyBpcyBub3Qgc2V0CiMgQ09O
RklHX1BBVEFfU0lMNjgwIGlzIG5vdCBzZXQKIyBDT05GSUdfUEFUQV9TSVMgaXMgbm90IHNldAoj
IENPTkZJR19QQVRBX1RPU0hJQkEgaXMgbm90IHNldAojIENPTkZJR19QQVRBX1RSSUZMRVggaXMg
bm90IHNldAojIENPTkZJR19QQVRBX1ZJQSBpcyBub3Qgc2V0CiMgQ09ORklHX1BBVEFfV0lOQk9O
RCBpcyBub3Qgc2V0CgojCiMgUElPLW9ubHkgU0ZGIGNvbnRyb2xsZXJzCiMKIyBDT05GSUdfUEFU
QV9DTUQ2NDBfUENJIGlzIG5vdCBzZXQKIyBDT05GSUdfUEFUQV9NUElJWCBpcyBub3Qgc2V0CiMg
Q09ORklHX1BBVEFfTlM4NzQxMCBpcyBub3Qgc2V0CiMgQ09ORklHX1BBVEFfT1BUSSBpcyBub3Qg
c2V0CkNPTkZJR19QQVRBX1BMQVRGT1JNPXkKQ09ORklHX1BBVEFfT0ZfUExBVEZPUk09eQojIENP
TkZJR19QQVRBX1JaMTAwMCBpcyBub3Qgc2V0CgojCiMgR2VuZXJpYyBmYWxsYmFjayAvIGxlZ2Fj
eSBkcml2ZXJzCiMKIyBDT05GSUdfUEFUQV9BQ1BJIGlzIG5vdCBzZXQKIyBDT05GSUdfQVRBX0dF
TkVSSUMgaXMgbm90IHNldAojIENPTkZJR19QQVRBX0xFR0FDWSBpcyBub3Qgc2V0CkNPTkZJR19N
RD15CkNPTkZJR19CTEtfREVWX01EPW0KIyBDT05GSUdfTURfTElORUFSIGlzIG5vdCBzZXQKIyBD
T05GSUdfTURfUkFJRDAgaXMgbm90IHNldAojIENPTkZJR19NRF9SQUlEMSBpcyBub3Qgc2V0CiMg
Q09ORklHX01EX1JBSUQxMCBpcyBub3Qgc2V0CiMgQ09ORklHX01EX1JBSUQ0NTYgaXMgbm90IHNl
dAojIENPTkZJR19NRF9NVUxUSVBBVEggaXMgbm90IHNldAojIENPTkZJR19NRF9GQVVMVFkgaXMg
bm90IHNldAojIENPTkZJR19CQ0FDSEUgaXMgbm90IHNldApDT05GSUdfQkxLX0RFVl9ETV9CVUlM
VElOPXkKQ09ORklHX0JMS19ERVZfRE09bQojIENPTkZJR19ETV9ERUJVRyBpcyBub3Qgc2V0CiMg
Q09ORklHX0RNX1VOU1RSSVBFRCBpcyBub3Qgc2V0CiMgQ09ORklHX0RNX0NSWVBUIGlzIG5vdCBz
ZXQKIyBDT05GSUdfRE1fU05BUFNIT1QgaXMgbm90IHNldAojIENPTkZJR19ETV9USElOX1BST1ZJ
U0lPTklORyBpcyBub3Qgc2V0CiMgQ09ORklHX0RNX0NBQ0hFIGlzIG5vdCBzZXQKIyBDT05GSUdf
RE1fV1JJVEVDQUNIRSBpcyBub3Qgc2V0CiMgQ09ORklHX0RNX0VSQSBpcyBub3Qgc2V0CiMgQ09O
RklHX0RNX0NMT05FIGlzIG5vdCBzZXQKQ09ORklHX0RNX01JUlJPUj1tCiMgQ09ORklHX0RNX0xP
R19VU0VSU1BBQ0UgaXMgbm90IHNldAojIENPTkZJR19ETV9SQUlEIGlzIG5vdCBzZXQKQ09ORklH
X0RNX1pFUk89bQojIENPTkZJR19ETV9NVUxUSVBBVEggaXMgbm90IHNldAojIENPTkZJR19ETV9E
RUxBWSBpcyBub3Qgc2V0CiMgQ09ORklHX0RNX0RVU1QgaXMgbm90IHNldAojIENPTkZJR19ETV9V
RVZFTlQgaXMgbm90IHNldAojIENPTkZJR19ETV9GTEFLRVkgaXMgbm90IHNldAojIENPTkZJR19E
TV9WRVJJVFkgaXMgbm90IHNldAojIENPTkZJR19ETV9TV0lUQ0ggaXMgbm90IHNldAojIENPTkZJ
R19ETV9MT0dfV1JJVEVTIGlzIG5vdCBzZXQKIyBDT05GSUdfRE1fSU5URUdSSVRZIGlzIG5vdCBz
ZXQKIyBDT05GSUdfVEFSR0VUX0NPUkUgaXMgbm90IHNldAojIENPTkZJR19GVVNJT04gaXMgbm90
IHNldAoKIwojIElFRUUgMTM5NCAoRmlyZVdpcmUpIHN1cHBvcnQKIwojIENPTkZJR19GSVJFV0lS
RSBpcyBub3Qgc2V0CiMgQ09ORklHX0ZJUkVXSVJFX05PU1kgaXMgbm90IHNldAojIGVuZCBvZiBJ
RUVFIDEzOTQgKEZpcmVXaXJlKSBzdXBwb3J0CgpDT05GSUdfTkVUREVWSUNFUz15CkNPTkZJR19N
SUk9eQpDT05GSUdfTkVUX0NPUkU9eQojIENPTkZJR19CT05ESU5HIGlzIG5vdCBzZXQKIyBDT05G
SUdfRFVNTVkgaXMgbm90IHNldAojIENPTkZJR19FUVVBTElaRVIgaXMgbm90IHNldAojIENPTkZJ
R19ORVRfRkMgaXMgbm90IHNldAojIENPTkZJR19ORVRfVEVBTSBpcyBub3Qgc2V0CkNPTkZJR19N
QUNWTEFOPW0KQ09ORklHX01BQ1ZUQVA9bQojIENPTkZJR19JUFZMQU4gaXMgbm90IHNldApDT05G
SUdfVlhMQU49bQojIENPTkZJR19HRU5FVkUgaXMgbm90IHNldAojIENPTkZJR19HVFAgaXMgbm90
IHNldAojIENPTkZJR19NQUNTRUMgaXMgbm90IHNldAojIENPTkZJR19ORVRDT05TT0xFIGlzIG5v
dCBzZXQKQ09ORklHX1RVTj15CkNPTkZJR19UQVA9bQojIENPTkZJR19UVU5fVk5FVF9DUk9TU19M
RSBpcyBub3Qgc2V0CkNPTkZJR19WRVRIPW0KQ09ORklHX1ZJUlRJT19ORVQ9eQojIENPTkZJR19O
TE1PTiBpcyBub3Qgc2V0CiMgQ09ORklHX0FSQ05FVCBpcyBub3Qgc2V0CgojCiMgQ0FJRiB0cmFu
c3BvcnQgZHJpdmVycwojCgojCiMgRGlzdHJpYnV0ZWQgU3dpdGNoIEFyY2hpdGVjdHVyZSBkcml2
ZXJzCiMKIyBlbmQgb2YgRGlzdHJpYnV0ZWQgU3dpdGNoIEFyY2hpdGVjdHVyZSBkcml2ZXJzCgpD
T05GSUdfRVRIRVJORVQ9eQpDT05GSUdfTURJTz1tCkNPTkZJR19ORVRfVkVORE9SXzNDT009eQoj
IENPTkZJR19WT1JURVggaXMgbm90IHNldAojIENPTkZJR19UWVBIT09OIGlzIG5vdCBzZXQKQ09O
RklHX05FVF9WRU5ET1JfQURBUFRFQz15CiMgQ09ORklHX0FEQVBURUNfU1RBUkZJUkUgaXMgbm90
IHNldApDT05GSUdfTkVUX1ZFTkRPUl9BR0VSRT15CiMgQ09ORklHX0VUMTMxWCBpcyBub3Qgc2V0
CkNPTkZJR19ORVRfVkVORE9SX0FMQUNSSVRFQ0g9eQojIENPTkZJR19TTElDT1NTIGlzIG5vdCBz
ZXQKQ09ORklHX05FVF9WRU5ET1JfQUxURU9OPXkKIyBDT05GSUdfQUNFTklDIGlzIG5vdCBzZXQK
IyBDT05GSUdfQUxURVJBX1RTRSBpcyBub3Qgc2V0CkNPTkZJR19ORVRfVkVORE9SX0FNQVpPTj15
CiMgQ09ORklHX0VOQV9FVEhFUk5FVCBpcyBub3Qgc2V0CkNPTkZJR19ORVRfVkVORE9SX0FNRD15
CiMgQ09ORklHX0FNRDgxMTFfRVRIIGlzIG5vdCBzZXQKIyBDT05GSUdfUENORVQzMiBpcyBub3Qg
c2V0CkNPTkZJR19BTURfWEdCRT15CkNPTkZJR19ORVRfVkVORE9SX0FRVUFOVElBPXkKIyBDT05G
SUdfQVFUSU9OIGlzIG5vdCBzZXQKQ09ORklHX05FVF9WRU5ET1JfQVJDPXkKQ09ORklHX05FVF9W
RU5ET1JfQVRIRVJPUz15CiMgQ09ORklHX0FUTDIgaXMgbm90IHNldAojIENPTkZJR19BVEwxIGlz
IG5vdCBzZXQKIyBDT05GSUdfQVRMMUUgaXMgbm90IHNldApDT05GSUdfQVRMMUM9bQojIENPTkZJ
R19BTFggaXMgbm90IHNldApDT05GSUdfTkVUX1ZFTkRPUl9BVVJPUkE9eQojIENPTkZJR19BVVJP
UkFfTkI4ODAwIGlzIG5vdCBzZXQKQ09ORklHX05FVF9WRU5ET1JfQlJPQURDT009eQojIENPTkZJ
R19CNDQgaXMgbm90IHNldAojIENPTkZJR19CQ01HRU5FVCBpcyBub3Qgc2V0CiMgQ09ORklHX0JO
WDIgaXMgbm90IHNldAojIENPTkZJR19DTklDIGlzIG5vdCBzZXQKIyBDT05GSUdfVElHT04zIGlz
IG5vdCBzZXQKQ09ORklHX0JOWDJYPW0KQ09ORklHX0JOWDJYX1NSSU9WPXkKIyBDT05GSUdfU1lT
VEVNUE9SVCBpcyBub3Qgc2V0CiMgQ09ORklHX0JOWFQgaXMgbm90IHNldApDT05GSUdfTkVUX1ZF
TkRPUl9CUk9DQURFPXkKIyBDT05GSUdfQk5BIGlzIG5vdCBzZXQKQ09ORklHX05FVF9WRU5ET1Jf
Q0FERU5DRT15CkNPTkZJR19NQUNCPXkKQ09ORklHX01BQ0JfVVNFX0hXU1RBTVA9eQojIENPTkZJ
R19NQUNCX1BDSSBpcyBub3Qgc2V0CkNPTkZJR19ORVRfVkVORE9SX0NBVklVTT15CkNPTkZJR19U
SFVOREVSX05JQ19QRj15CiMgQ09ORklHX1RIVU5ERVJfTklDX1ZGIGlzIG5vdCBzZXQKQ09ORklH
X1RIVU5ERVJfTklDX0JHWD15CkNPTkZJR19USFVOREVSX05JQ19SR1g9eQojIENPTkZJR19DQVZJ
VU1fUFRQIGlzIG5vdCBzZXQKIyBDT05GSUdfTElRVUlESU8gaXMgbm90IHNldAojIENPTkZJR19M
SVFVSURJT19WRiBpcyBub3Qgc2V0CkNPTkZJR19ORVRfVkVORE9SX0NIRUxTSU89eQojIENPTkZJ
R19DSEVMU0lPX1QxIGlzIG5vdCBzZXQKIyBDT05GSUdfQ0hFTFNJT19UMyBpcyBub3Qgc2V0CiMg
Q09ORklHX0NIRUxTSU9fVDQgaXMgbm90IHNldAojIENPTkZJR19DSEVMU0lPX1Q0VkYgaXMgbm90
IHNldApDT05GSUdfTkVUX1ZFTkRPUl9DSVNDTz15CiMgQ09ORklHX0VOSUMgaXMgbm90IHNldApD
T05GSUdfTkVUX1ZFTkRPUl9DT1JUSU5BPXkKIyBDT05GSUdfR0VNSU5JX0VUSEVSTkVUIGlzIG5v
dCBzZXQKIyBDT05GSUdfRE5FVCBpcyBub3Qgc2V0CkNPTkZJR19ORVRfVkVORE9SX0RFQz15CiMg
Q09ORklHX05FVF9UVUxJUCBpcyBub3Qgc2V0CkNPTkZJR19ORVRfVkVORE9SX0RMSU5LPXkKIyBD
T05GSUdfREwySyBpcyBub3Qgc2V0CiMgQ09ORklHX1NVTkRBTkNFIGlzIG5vdCBzZXQKQ09ORklH
X05FVF9WRU5ET1JfRU1VTEVYPXkKIyBDT05GSUdfQkUyTkVUIGlzIG5vdCBzZXQKQ09ORklHX05F
VF9WRU5ET1JfRVpDSElQPXkKIyBDT05GSUdfRVpDSElQX05QU19NQU5BR0VNRU5UX0VORVQgaXMg
bm90IHNldApDT05GSUdfTkVUX1ZFTkRPUl9GUkVFU0NBTEU9eQpDT05GSUdfRkVDPXkKIyBDT05G
SUdfRlNMX0ZNQU4gaXMgbm90IHNldAojIENPTkZJR19GU0xfUFFfTURJTyBpcyBub3Qgc2V0CkNP
TkZJR19GU0xfWEdNQUNfTURJTz15CiMgQ09ORklHX0dJQU5GQVIgaXMgbm90IHNldAoKIwojIEZy
YW1lIE1hbmFnZXIgc3VwcG9ydAojCkNPTkZJR19GU0xfU0RLX0ZNQU49eQojIENPTkZJR19GU0xf
U0RLX0ZNQU5fVEVTVCBpcyBub3Qgc2V0CgojCiMgRk1BTiBQcm9jZXNzb3Igc3VwcG9ydAojCkNP
TkZJR19GTUFOX0FSTT15CiMgQ09ORklHX0ZNQU5fUDMwNDBfUDQwODBfUDUwMjAgaXMgbm90IHNl
dAojIENPTkZJR19GTUFOX1AxMDIzIGlzIG5vdCBzZXQKIyBDT05GSUdfRk1BTl9WM0ggaXMgbm90
IHNldAojIENPTkZJR19GTUFOX1YzTCBpcyBub3Qgc2V0CiMgZW5kIG9mIEZNQU4gUHJvY2Vzc29y
IHN1cHBvcnQKCiMgQ09ORklHX0ZTTF9TREtfRk1BTl9SVENfQVBJIGlzIG5vdCBzZXQKIyBDT05G
SUdfRk1BTl9NSUJfQ05UX09WRl9JUlFfRU4gaXMgbm90IHNldApDT05GSUdfRlNMX0ZNX01BWF9G
UkFNRV9TSVpFPTE1MjIKQ09ORklHX0ZTTF9GTV9SWF9FWFRSQV9IRUFEUk9PTT02NAojIENPTkZJ
R19GTUFOX1BGQyBpcyBub3Qgc2V0CiMgZW5kIG9mIEZyYW1lIE1hbmFnZXIgc3VwcG9ydAoKQ09O
RklHX0ZTTF9TREtfRFBBQV9FVEg9eQojIENPTkZJR19GU0xfRFBBQV9IT09LUyBpcyBub3Qgc2V0
CiMgQ09ORklHX0ZTTF9EUEFBX0NFRVRNIGlzIG5vdCBzZXQKQ09ORklHX0ZTTF9EUEFBX09GRkxJ
TkVfUE9SVFM9eQpDT05GSUdfRlNMX0RQQUFfQURWQU5DRURfRFJJVkVSUz15CiMgQ09ORklHX0ZT
TF9EUEFBX0VUSF9KVU1CT19GUkFNRSBpcyBub3Qgc2V0CiMgQ09ORklHX0ZTTF9EUEFBX1RTIGlz
IG5vdCBzZXQKIyBDT05GSUdfRlNMX0RQQUFfMTU4OCBpcyBub3Qgc2V0CkNPTkZJR19GU0xfRFBB
QV9FVEhfTUFYX0JVRl9DT1VOVD0xMjgKQ09ORklHX0ZTTF9EUEFBX0VUSF9SRUZJTExfVEhSRVNI
T0xEPTgwCkNPTkZJR19GU0xfRFBBQV9DU19USFJFU0hPTERfMUc9MHgwNjAwMDAwMApDT05GSUdf
RlNMX0RQQUFfQ1NfVEhSRVNIT0xEXzEwRz0weDEwMDAwMDAwCkNPTkZJR19GU0xfRFBBQV9JTkdS
RVNTX0NTX1RIUkVTSE9MRD0weDEwMDAwMDAwCkNPTkZJR19GU0xfRFBBQV9FVEhfREVCVUdGUz15
CiMgQ09ORklHX0ZTTF9EUEFBX0VUSF9ERUJVRyBpcyBub3Qgc2V0CiMgQ09ORklHX0ZTTF9EUEFB
X0RCR19MT09QIGlzIG5vdCBzZXQKQ09ORklHX0ZTTF9EUEFBMl9FVEg9eQojIENPTkZJR19GU0xf
RFBBQTJfRVRIX1VTRV9FUlJfUVVFVUUgaXMgbm90IHNldAojIENPTkZJR19GU0xfRFBBQTJfRVRI
X0NFRVRNIGlzIG5vdCBzZXQKQ09ORklHX0ZTTF9EUEFBMl9QVFBfQ0xPQ0s9eQpDT05GSUdfRlNM
X0VORVRDPXkKQ09ORklHX0ZTTF9FTkVUQ19WRj15CkNPTkZJR19GU0xfRU5FVENfTURJTz15CkNP
TkZJR19GU0xfRU5FVENfUFRQX0NMT0NLPXkKIyBDT05GSUdfRlNMX0VORVRDX0hXX1RJTUVTVEFN
UElORyBpcyBub3Qgc2V0CiMgQ09ORklHX0ZTTF9FTkVUQ19RT1MgaXMgbm90IHNldAojIENPTkZJ
R19FTkVUQ19UU04gaXMgbm90IHNldApDT05GSUdfTkVUX1ZFTkRPUl9HT09HTEU9eQojIENPTkZJ
R19HVkUgaXMgbm90IHNldApDT05GSUdfTkVUX1ZFTkRPUl9ISVNJTElDT049eQpDT05GSUdfSElY
NUhEMl9HTUFDPXkKIyBDT05GSUdfSElTSV9GRU1BQyBpcyBub3Qgc2V0CiMgQ09ORklHX0hJUDA0
X0VUSCBpcyBub3Qgc2V0CkNPTkZJR19ITlNfTURJTz15CkNPTkZJR19ITlM9eQpDT05GSUdfSE5T
X0RTQUY9eQpDT05GSUdfSE5TX0VORVQ9eQpDT05GSUdfSE5TMz15CkNPTkZJR19ITlMzX0hDTEdF
PXkKIyBDT05GSUdfSE5TM19IQ0xHRVZGIGlzIG5vdCBzZXQKQ09ORklHX0hOUzNfRU5FVD15CkNP
TkZJR19ORVRfVkVORE9SX0hQPXkKIyBDT05GSUdfSFAxMDAgaXMgbm90IHNldApDT05GSUdfTkVU
X1ZFTkRPUl9IVUFXRUk9eQojIENPTkZJR19ISU5JQyBpcyBub3Qgc2V0CkNPTkZJR19ORVRfVkVO
RE9SX0k4MjVYWD15CkNPTkZJR19ORVRfVkVORE9SX0lOVEVMPXkKIyBDT05GSUdfRTEwMCBpcyBu
b3Qgc2V0CkNPTkZJR19FMTAwMD15CkNPTkZJR19FMTAwMEU9eQpDT05GSUdfSUdCPXkKQ09ORklH
X0lHQl9IV01PTj15CkNPTkZJR19JR0JWRj15CiMgQ09ORklHX0lYR0IgaXMgbm90IHNldAojIENP
TkZJR19JWEdCRSBpcyBub3Qgc2V0CiMgQ09ORklHX0lYR0JFVkYgaXMgbm90IHNldAojIENPTkZJ
R19JNDBFIGlzIG5vdCBzZXQKIyBDT05GSUdfSTQwRVZGIGlzIG5vdCBzZXQKIyBDT05GSUdfSUNF
IGlzIG5vdCBzZXQKIyBDT05GSUdfRk0xMEsgaXMgbm90IHNldAojIENPTkZJR19JR0MgaXMgbm90
IHNldAojIENPTkZJR19KTUUgaXMgbm90IHNldApDT05GSUdfTkVUX1ZFTkRPUl9NQVJWRUxMPXkK
Q09ORklHX01WTURJTz15CiMgQ09ORklHX1NLR0UgaXMgbm90IHNldApDT05GSUdfU0tZMj15CiMg
Q09ORklHX1NLWTJfREVCVUcgaXMgbm90IHNldAojIENPTkZJR19PQ1RFT05UWDJfQUYgaXMgbm90
IHNldApDT05GSUdfTkVUX1ZFTkRPUl9NRUxMQU5PWD15CkNPTkZJR19NTFg0X0VOPW0KQ09ORklH
X01MWDRfQ09SRT1tCkNPTkZJR19NTFg0X0RFQlVHPXkKQ09ORklHX01MWDRfQ09SRV9HRU4yPXkK
Q09ORklHX01MWDVfQ09SRT1tCiMgQ09ORklHX01MWDVfRlBHQSBpcyBub3Qgc2V0CkNPTkZJR19N
TFg1X0NPUkVfRU49eQpDT05GSUdfTUxYNV9FTl9BUkZTPXkKQ09ORklHX01MWDVfRU5fUlhORkM9
eQpDT05GSUdfTUxYNV9NUEZTPXkKQ09ORklHX01MWDVfRVNXSVRDSD15CiMgQ09ORklHX01MWDVf
Q09SRV9JUE9JQiBpcyBub3Qgc2V0CkNPTkZJR19NTFg1X1NXX1NURUVSSU5HPXkKIyBDT05GSUdf
TUxYU1dfQ09SRSBpcyBub3Qgc2V0CkNPTkZJR19NTFhGVz1tCkNPTkZJR19ORVRfVkVORE9SX01J
Q1JFTD15CiMgQ09ORklHX0tTODg0MiBpcyBub3Qgc2V0CiMgQ09ORklHX0tTODg1MSBpcyBub3Qg
c2V0CiMgQ09ORklHX0tTODg1MV9NTEwgaXMgbm90IHNldAojIENPTkZJR19LU1o4ODRYX1BDSSBp
cyBub3Qgc2V0CkNPTkZJR19ORVRfVkVORE9SX01JQ1JPQ0hJUD15CiMgQ09ORklHX0VOQzI4SjYw
IGlzIG5vdCBzZXQKIyBDT05GSUdfRU5DWDI0SjYwMCBpcyBub3Qgc2V0CiMgQ09ORklHX0xBTjc0
M1ggaXMgbm90IHNldApDT05GSUdfTkVUX1ZFTkRPUl9NSUNST1NFTUk9eQpDT05GSUdfTVNDQ19P
Q0VMT1RfU1dJVENIPXkKIyBDT05GSUdfTVNDQ19PQ0VMT1RfU1dJVENIX09DRUxPVCBpcyBub3Qg
c2V0CkNPTkZJR19ORVRfVkVORE9SX01ZUkk9eQojIENPTkZJR19NWVJJMTBHRSBpcyBub3Qgc2V0
CiMgQ09ORklHX0ZFQUxOWCBpcyBub3Qgc2V0CkNPTkZJR19ORVRfVkVORE9SX05BVFNFTUk9eQoj
IENPTkZJR19OQVRTRU1JIGlzIG5vdCBzZXQKIyBDT05GSUdfTlM4MzgyMCBpcyBub3Qgc2V0CkNP
TkZJR19ORVRfVkVORE9SX05FVEVSSU9OPXkKIyBDT05GSUdfUzJJTyBpcyBub3Qgc2V0CiMgQ09O
RklHX1ZYR0UgaXMgbm90IHNldApDT05GSUdfTkVUX1ZFTkRPUl9ORVRST05PTUU9eQojIENPTkZJ
R19ORlAgaXMgbm90IHNldApDT05GSUdfTkVUX1ZFTkRPUl9OST15CiMgQ09ORklHX05JX1hHRV9N
QU5BR0VNRU5UX0VORVQgaXMgbm90IHNldApDT05GSUdfTkVUX1ZFTkRPUl84MzkwPXkKIyBDT05G
SUdfTkUyS19QQ0kgaXMgbm90IHNldApDT05GSUdfTkVUX1ZFTkRPUl9OVklESUE9eQojIENPTkZJ
R19GT1JDRURFVEggaXMgbm90IHNldApDT05GSUdfTkVUX1ZFTkRPUl9PS0k9eQojIENPTkZJR19F
VEhPQyBpcyBub3Qgc2V0CkNPTkZJR19ORVRfVkVORE9SX1BBQ0tFVF9FTkdJTkVTPXkKIyBDT05G
SUdfSEFNQUNISSBpcyBub3Qgc2V0CiMgQ09ORklHX1lFTExPV0ZJTiBpcyBub3Qgc2V0CkNPTkZJ
R19ORVRfVkVORE9SX1BFTlNBTkRPPXkKIyBDT05GSUdfSU9OSUMgaXMgbm90IHNldApDT05GSUdf
TkVUX1ZFTkRPUl9RTE9HSUM9eQojIENPTkZJR19RTEEzWFhYIGlzIG5vdCBzZXQKIyBDT05GSUdf
UUxDTklDIGlzIG5vdCBzZXQKIyBDT05GSUdfTkVUWEVOX05JQyBpcyBub3Qgc2V0CiMgQ09ORklH
X1FFRCBpcyBub3Qgc2V0CkNPTkZJR19ORVRfVkVORE9SX1FVQUxDT01NPXkKIyBDT05GSUdfUUNB
NzAwMF9TUEkgaXMgbm90IHNldAojIENPTkZJR19RQ0E3MDAwX1VBUlQgaXMgbm90IHNldApDT05G
SUdfUUNPTV9FTUFDPW0KIyBDT05GSUdfUk1ORVQgaXMgbm90IHNldApDT05GSUdfTkVUX1ZFTkRP
Ul9SREM9eQojIENPTkZJR19SNjA0MCBpcyBub3Qgc2V0CkNPTkZJR19ORVRfVkVORE9SX1JFQUxU
RUs9eQojIENPTkZJR184MTM5Q1AgaXMgbm90IHNldAojIENPTkZJR184MTM5VE9PIGlzIG5vdCBz
ZXQKIyBDT05GSUdfUjgxNjkgaXMgbm90IHNldApDT05GSUdfTkVUX1ZFTkRPUl9SRU5FU0FTPXkK
Q09ORklHX05FVF9WRU5ET1JfUk9DS0VSPXkKIyBDT05GSUdfUk9DS0VSIGlzIG5vdCBzZXQKQ09O
RklHX05FVF9WRU5ET1JfU0FNU1VORz15CiMgQ09ORklHX1NYR0JFX0VUSCBpcyBub3Qgc2V0CkNP
TkZJR19ORVRfVkVORE9SX1NFRVE9eQpDT05GSUdfTkVUX1ZFTkRPUl9TT0xBUkZMQVJFPXkKIyBD
T05GSUdfU0ZDIGlzIG5vdCBzZXQKIyBDT05GSUdfU0ZDX0ZBTENPTiBpcyBub3Qgc2V0CkNPTkZJ
R19ORVRfVkVORE9SX1NJTEFOPXkKIyBDT05GSUdfU0M5MjAzMSBpcyBub3Qgc2V0CkNPTkZJR19O
RVRfVkVORE9SX1NJUz15CiMgQ09ORklHX1NJUzkwMCBpcyBub3Qgc2V0CiMgQ09ORklHX1NJUzE5
MCBpcyBub3Qgc2V0CkNPTkZJR19ORVRfVkVORE9SX1NNU0M9eQpDT05GSUdfU01DOTFYPXkKIyBD
T05GSUdfRVBJQzEwMCBpcyBub3Qgc2V0CkNPTkZJR19TTVNDOTExWD15CiMgQ09ORklHX1NNU0M5
NDIwIGlzIG5vdCBzZXQKQ09ORklHX05FVF9WRU5ET1JfU09DSU9ORVhUPXkKQ09ORklHX05FVF9W
RU5ET1JfU1RNSUNSTz15CkNPTkZJR19TVE1NQUNfRVRIPXkKIyBDT05GSUdfU1RNTUFDX1NFTEZU
RVNUUyBpcyBub3Qgc2V0CkNPTkZJR19TVE1NQUNfUExBVEZPUk09eQojIENPTkZJR19EV01BQ19E
V0NfUU9TX0VUSCBpcyBub3Qgc2V0CkNPTkZJR19EV01BQ19HRU5FUklDPXkKQ09ORklHX0RXTUFD
X0lNWDg9eQojIENPTkZJR19TVE1NQUNfUENJIGlzIG5vdCBzZXQKQ09ORklHX05FVF9WRU5ET1Jf
U1VOPXkKIyBDT05GSUdfSEFQUFlNRUFMIGlzIG5vdCBzZXQKIyBDT05GSUdfU1VOR0VNIGlzIG5v
dCBzZXQKIyBDT05GSUdfQ0FTU0lOSSBpcyBub3Qgc2V0CiMgQ09ORklHX05JVSBpcyBub3Qgc2V0
CkNPTkZJR19ORVRfVkVORE9SX1NZTk9QU1lTPXkKIyBDT05GSUdfRFdDX1hMR01BQyBpcyBub3Qg
c2V0CkNPTkZJR19ORVRfVkVORE9SX1RFSFVUST15CiMgQ09ORklHX1RFSFVUSSBpcyBub3Qgc2V0
CkNPTkZJR19ORVRfVkVORE9SX1RJPXkKIyBDT05GSUdfVElfQ1BTV19QSFlfU0VMIGlzIG5vdCBz
ZXQKIyBDT05GSUdfVExBTiBpcyBub3Qgc2V0CkNPTkZJR19ORVRfVkVORE9SX1ZJQT15CiMgQ09O
RklHX1ZJQV9SSElORSBpcyBub3Qgc2V0CiMgQ09ORklHX1ZJQV9WRUxPQ0lUWSBpcyBub3Qgc2V0
CkNPTkZJR19ORVRfVkVORE9SX1dJWk5FVD15CiMgQ09ORklHX1dJWk5FVF9XNTEwMCBpcyBub3Qg
c2V0CiMgQ09ORklHX1dJWk5FVF9XNTMwMCBpcyBub3Qgc2V0CiMgQ09ORklHX0ZEREkgaXMgbm90
IHNldAojIENPTkZJR19ISVBQSSBpcyBub3Qgc2V0CiMgQ09ORklHX05FVF9TQjEwMDAgaXMgbm90
IHNldApDT05GSUdfTURJT19ERVZJQ0U9eQpDT05GSUdfTURJT19CVVM9eQojIENPTkZJR19NRElP
X0JDTV9VTklNQUMgaXMgbm90IHNldApDT05GSUdfTURJT19CSVRCQU5HPXkKQ09ORklHX01ESU9f
QlVTX01VWD15CiMgQ09ORklHX01ESU9fQlVTX01VWF9HUElPIGlzIG5vdCBzZXQKQ09ORklHX01E
SU9fQlVTX01VWF9NTUlPUkVHPXkKQ09ORklHX01ESU9fQlVTX01VWF9NVUxUSVBMRVhFUj15CkNP
TkZJR19NRElPX0NBVklVTT15CiMgQ09ORklHX01ESU9fR1BJTyBpcyBub3Qgc2V0CiMgQ09ORklH
X01ESU9fSElTSV9GRU1BQyBpcyBub3Qgc2V0CiMgQ09ORklHX01ESU9fTVNDQ19NSUlNIGlzIG5v
dCBzZXQKIyBDT05GSUdfTURJT19PQ1RFT04gaXMgbm90IHNldApDT05GSUdfTURJT19USFVOREVS
PXkKQ09ORklHX1BIWUxJTks9eQpDT05GSUdfUEhZTElCPXkKQ09ORklHX1NXUEhZPXkKIyBDT05G
SUdfTEVEX1RSSUdHRVJfUEhZIGlzIG5vdCBzZXQKCiMKIyBNSUkgUEhZIGRldmljZSBkcml2ZXJz
CiMKIyBDT05GSUdfU0ZQIGlzIG5vdCBzZXQKIyBDT05GSUdfQURJTl9QSFkgaXMgbm90IHNldAoj
IENPTkZJR19BTURfUEhZIGlzIG5vdCBzZXQKQ09ORklHX0FRVUFOVElBX1BIWT15CiMgQ09ORklH
X0FYODg3OTZCX1BIWSBpcyBub3Qgc2V0CkNPTkZJR19BVDgwM1hfUEhZPXkKIyBDT05GSUdfQVQ4
MDNYX1BIWV9TTUFSVF9FRUUgaXMgbm90IHNldAojIENPTkZJR19CQ003WFhYX1BIWSBpcyBub3Qg
c2V0CiMgQ09ORklHX0JDTTg3WFhfUEhZIGlzIG5vdCBzZXQKIyBDT05GSUdfQlJPQURDT01fUEhZ
IGlzIG5vdCBzZXQKIyBDT05GSUdfQ0lDQURBX1BIWSBpcyBub3Qgc2V0CiMgQ09ORklHX0NPUlRJ
TkFfUEhZIGlzIG5vdCBzZXQKIyBDT05GSUdfREFWSUNPTV9QSFkgaXMgbm90IHNldAojIENPTkZJ
R19EUDgzODIyX1BIWSBpcyBub3Qgc2V0CiMgQ09ORklHX0RQODNUQzgxMV9QSFkgaXMgbm90IHNl
dAojIENPTkZJR19EUDgzODQ4X1BIWSBpcyBub3Qgc2V0CiMgQ09ORklHX0RQODM4NjdfUEhZIGlz
IG5vdCBzZXQKQ09ORklHX0ZJWEVEX1BIWT15CiMgQ09ORklHX0lDUExVU19QSFkgaXMgbm90IHNl
dApDT05GSUdfSU5QSElfUEhZPXkKIyBDT05GSUdfSU5URUxfWFdBWV9QSFkgaXMgbm90IHNldAoj
IENPTkZJR19MU0lfRVQxMDExQ19QSFkgaXMgbm90IHNldAojIENPTkZJR19MWFRfUEhZIGlzIG5v
dCBzZXQKQ09ORklHX01BUlZFTExfUEhZPW0KQ09ORklHX01BUlZFTExfMTBHX1BIWT1tCkNPTkZJ
R19NSUNSRUxfUEhZPXkKQ09ORklHX01JQ1JPQ0hJUF9QSFk9bQojIENPTkZJR19NSUNST0NISVBf
VDFfUEhZIGlzIG5vdCBzZXQKQ09ORklHX01JQ1JPU0VNSV9QSFk9eQojIENPTkZJR19OQVRJT05B
TF9QSFkgaXMgbm90IHNldApDT05GSUdfTlhQX1RKQTExWFhfUEhZPXkKIyBDT05GSUdfUVNFTUlf
UEhZIGlzIG5vdCBzZXQKQ09ORklHX1JFQUxURUtfUEhZPXkKIyBDT05GSUdfUkVORVNBU19QSFkg
aXMgbm90IHNldApDT05GSUdfUk9DS0NISVBfUEhZPXkKIyBDT05GSUdfU01TQ19QSFkgaXMgbm90
IHNldAojIENPTkZJR19TVEUxMFhQIGlzIG5vdCBzZXQKIyBDT05GSUdfVEVSQU5FVElDU19QSFkg
aXMgbm90IHNldApDT05GSUdfVklURVNTRV9QSFk9eQojIENPTkZJR19YSUxJTlhfR01JSTJSR01J
SSBpcyBub3Qgc2V0CiMgQ09ORklHX01JQ1JFTF9LUzg5OTVNQSBpcyBub3Qgc2V0CiMgQ09ORklH
X1BQUCBpcyBub3Qgc2V0CiMgQ09ORklHX1NMSVAgaXMgbm90IHNldApDT05GSUdfVVNCX05FVF9E
UklWRVJTPXkKIyBDT05GSUdfVVNCX0NBVEMgaXMgbm90IHNldAojIENPTkZJR19VU0JfS0FXRVRI
IGlzIG5vdCBzZXQKQ09ORklHX1VTQl9QRUdBU1VTPW0KQ09ORklHX1VTQl9SVEw4MTUwPW0KQ09O
RklHX1VTQl9SVEw4MTUyPW0KQ09ORklHX1VTQl9MQU43OFhYPW0KQ09ORklHX1VTQl9VU0JORVQ9
bQpDT05GSUdfVVNCX05FVF9BWDg4MTdYPW0KQ09ORklHX1VTQl9ORVRfQVg4ODE3OV8xNzhBPW0K
Q09ORklHX1VTQl9ORVRfQ0RDRVRIRVI9bQojIENPTkZJR19VU0JfTkVUX0NEQ19FRU0gaXMgbm90
IHNldApDT05GSUdfVVNCX05FVF9DRENfTkNNPW0KIyBDT05GSUdfVVNCX05FVF9IVUFXRUlfQ0RD
X05DTSBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9ORVRfQ0RDX01CSU0gaXMgbm90IHNldApDT05G
SUdfVVNCX05FVF9ETTk2MDE9bQojIENPTkZJR19VU0JfTkVUX1NSOTcwMCBpcyBub3Qgc2V0CkNP
TkZJR19VU0JfTkVUX1NSOTgwMD1tCkNPTkZJR19VU0JfTkVUX1NNU0M3NVhYPW0KQ09ORklHX1VT
Ql9ORVRfU01TQzk1WFg9bQojIENPTkZJR19VU0JfTkVUX0dMNjIwQSBpcyBub3Qgc2V0CkNPTkZJ
R19VU0JfTkVUX05FVDEwODA9bQpDT05GSUdfVVNCX05FVF9QTFVTQj1tCkNPTkZJR19VU0JfTkVU
X01DUzc4MzA9bQojIENPTkZJR19VU0JfTkVUX1JORElTX0hPU1QgaXMgbm90IHNldApDT05GSUdf
VVNCX05FVF9DRENfU1VCU0VUX0VOQUJMRT1tCkNPTkZJR19VU0JfTkVUX0NEQ19TVUJTRVQ9bQoj
IENPTkZJR19VU0JfQUxJX001NjMyIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX0FOMjcyMCBpcyBu
b3Qgc2V0CkNPTkZJR19VU0JfQkVMS0lOPXkKQ09ORklHX1VTQl9BUk1MSU5VWD15CiMgQ09ORklH
X1VTQl9FUFNPTjI4ODggaXMgbm90IHNldAojIENPTkZJR19VU0JfS0MyMTkwIGlzIG5vdCBzZXQK
Q09ORklHX1VTQl9ORVRfWkFVUlVTPW0KIyBDT05GSUdfVVNCX05FVF9DWDgyMzEwX0VUSCBpcyBu
b3Qgc2V0CiMgQ09ORklHX1VTQl9ORVRfS0FMTUlBIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX05F
VF9RTUlfV1dBTiBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9ORVRfSU5UNTFYMSBpcyBub3Qgc2V0
CiMgQ09ORklHX1VTQl9JUEhFVEggaXMgbm90IHNldAojIENPTkZJR19VU0JfU0lFUlJBX05FVCBp
cyBub3Qgc2V0CiMgQ09ORklHX1VTQl9WTDYwMCBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9ORVRf
Q0g5MjAwIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX05FVF9BUUMxMTEgaXMgbm90IHNldApDT05G
SUdfV0xBTj15CkNPTkZJR19XTEFOX1ZFTkRPUl9BRE1URUs9eQojIENPTkZJR19BRE04MjExIGlz
IG5vdCBzZXQKQ09ORklHX1dMQU5fVkVORE9SX0FUSD15CiMgQ09ORklHX0FUSF9ERUJVRyBpcyBu
b3Qgc2V0CiMgQ09ORklHX0FUSDVLIGlzIG5vdCBzZXQKIyBDT05GSUdfQVRINUtfUENJIGlzIG5v
dCBzZXQKIyBDT05GSUdfQVRIOUsgaXMgbm90IHNldAojIENPTkZJR19BVEg5S19IVEMgaXMgbm90
IHNldAojIENPTkZJR19DQVJMOTE3MCBpcyBub3Qgc2V0CiMgQ09ORklHX0FUSDZLTCBpcyBub3Qg
c2V0CiMgQ09ORklHX0FSNTUyMyBpcyBub3Qgc2V0CiMgQ09ORklHX1dJTDYyMTAgaXMgbm90IHNl
dAojIENPTkZJR19BVEgxMEsgaXMgbm90IHNldAojIENPTkZJR19XQ04zNlhYIGlzIG5vdCBzZXQK
Q09ORklHX1dMQU5fVkVORE9SX0FUTUVMPXkKIyBDT05GSUdfQVRNRUwgaXMgbm90IHNldAojIENP
TkZJR19BVDc2QzUwWF9VU0IgaXMgbm90IHNldApDT05GSUdfV0xBTl9WRU5ET1JfQlJPQURDT009
eQojIENPTkZJR19CNDMgaXMgbm90IHNldAojIENPTkZJR19CNDNMRUdBQ1kgaXMgbm90IHNldApD
T05GSUdfQlJDTVVUSUw9bQojIENPTkZJR19CUkNNU01BQyBpcyBub3Qgc2V0CkNPTkZJR19CUkNN
Rk1BQz1tCkNPTkZJR19CUkNNRk1BQ19QUk9UT19CQ0RDPXkKQ09ORklHX0JSQ01GTUFDX1BST1RP
X01TR0JVRj15CkNPTkZJR19CUkNNRk1BQ19TRElPPXkKIyBDT05GSUdfQlJDTUZNQUNfVVNCIGlz
IG5vdCBzZXQKQ09ORklHX0JSQ01GTUFDX1BDSUU9eQojIENPTkZJR19CUkNNX1RSQUNJTkcgaXMg
bm90IHNldAojIENPTkZJR19CUkNNREJHIGlzIG5vdCBzZXQKQ09ORklHX1dMQU5fVkVORE9SX0NJ
U0NPPXkKQ09ORklHX1dMQU5fVkVORE9SX0lOVEVMPXkKIyBDT05GSUdfSVBXMjEwMCBpcyBub3Qg
c2V0CiMgQ09ORklHX0lQVzIyMDAgaXMgbm90IHNldAojIENPTkZJR19JV0w0OTY1IGlzIG5vdCBz
ZXQKIyBDT05GSUdfSVdMMzk0NSBpcyBub3Qgc2V0CiMgQ09ORklHX0lXTFdJRkkgaXMgbm90IHNl
dApDT05GSUdfV0xBTl9WRU5ET1JfSU5URVJTSUw9eQpDT05GSUdfSE9TVEFQPXkKIyBDT05GSUdf
SE9TVEFQX0ZJUk1XQVJFIGlzIG5vdCBzZXQKIyBDT05GSUdfSE9TVEFQX1BMWCBpcyBub3Qgc2V0
CiMgQ09ORklHX0hPU1RBUF9QQ0kgaXMgbm90IHNldAojIENPTkZJR19IRVJNRVMgaXMgbm90IHNl
dAojIENPTkZJR19QNTRfQ09NTU9OIGlzIG5vdCBzZXQKIyBDT05GSUdfUFJJU001NCBpcyBub3Qg
c2V0CkNPTkZJR19XTEFOX1ZFTkRPUl9NQVJWRUxMPXkKIyBDT05GSUdfTElCRVJUQVMgaXMgbm90
IHNldAojIENPTkZJR19MSUJFUlRBU19USElORklSTSBpcyBub3Qgc2V0CiMgQ09ORklHX01XSUZJ
RVggaXMgbm90IHNldAojIENPTkZJR19NV0w4SyBpcyBub3Qgc2V0CkNPTkZJR19XTEFOX1ZFTkRP
Ul9NRURJQVRFSz15CiMgQ09ORklHX01UNzYwMVUgaXMgbm90IHNldAojIENPTkZJR19NVDc2eDBV
IGlzIG5vdCBzZXQKIyBDT05GSUdfTVQ3NngwRSBpcyBub3Qgc2V0CiMgQ09ORklHX01UNzZ4MkUg
aXMgbm90IHNldAojIENPTkZJR19NVDc2eDJVIGlzIG5vdCBzZXQKIyBDT05GSUdfTVQ3NjAzRSBp
cyBub3Qgc2V0CiMgQ09ORklHX01UNzYxNUUgaXMgbm90IHNldApDT05GSUdfV0xBTl9WRU5ET1Jf
TlhQPXkKQ09ORklHX01YTVdJRklFWD1tCkNPTkZJR19XTEFOX1ZFTkRPUl9SQUxJTks9eQojIENP
TkZJR19SVDJYMDAgaXMgbm90IHNldApDT05GSUdfV0xBTl9WRU5ET1JfUkVBTFRFSz15CiMgQ09O
RklHX1JUTDgxODAgaXMgbm90IHNldAojIENPTkZJR19SVEw4MTg3IGlzIG5vdCBzZXQKQ09ORklH
X1JUTF9DQVJEUz15CiMgQ09ORklHX1JUTDgxOTJDRSBpcyBub3Qgc2V0CiMgQ09ORklHX1JUTDgx
OTJTRSBpcyBub3Qgc2V0CiMgQ09ORklHX1JUTDgxOTJERSBpcyBub3Qgc2V0CiMgQ09ORklHX1JU
TDg3MjNBRSBpcyBub3Qgc2V0CiMgQ09ORklHX1JUTDg3MjNCRSBpcyBub3Qgc2V0CiMgQ09ORklH
X1JUTDgxODhFRSBpcyBub3Qgc2V0CiMgQ09ORklHX1JUTDgxOTJFRSBpcyBub3Qgc2V0CiMgQ09O
RklHX1JUTDg4MjFBRSBpcyBub3Qgc2V0CiMgQ09ORklHX1JUTDgxOTJDVSBpcyBub3Qgc2V0CiMg
Q09ORklHX1JUTDhYWFhVIGlzIG5vdCBzZXQKIyBDT05GSUdfUlRXODggaXMgbm90IHNldApDT05G
SUdfV0xBTl9WRU5ET1JfUlNJPXkKIyBDT05GSUdfUlNJXzkxWCBpcyBub3Qgc2V0CkNPTkZJR19X
TEFOX1ZFTkRPUl9TVD15CiMgQ09ORklHX0NXMTIwMCBpcyBub3Qgc2V0CkNPTkZJR19XTEFOX1ZF
TkRPUl9UST15CiMgQ09ORklHX1dMMTI1MSBpcyBub3Qgc2V0CiMgQ09ORklHX1dMMTJYWCBpcyBu
b3Qgc2V0CkNPTkZJR19XTDE4WFg9bQpDT05GSUdfV0xDT1JFPW0KIyBDT05GSUdfV0xDT1JFX1NQ
SSBpcyBub3Qgc2V0CkNPTkZJR19XTENPUkVfU0RJTz1tCkNPTkZJR19XSUxJTktfUExBVEZPUk1f
REFUQT15CkNPTkZJR19XTEFOX1ZFTkRPUl9aWURBUz15CiMgQ09ORklHX1VTQl9aRDEyMDEgaXMg
bm90IHNldAojIENPTkZJR19aRDEyMTFSVyBpcyBub3Qgc2V0CkNPTkZJR19XTEFOX1ZFTkRPUl9R
VUFOVEVOTkE9eQojIENPTkZJR19RVE5GTUFDX1BDSUUgaXMgbm90IHNldAojIENPTkZJR19NQUM4
MDIxMV9IV1NJTSBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9ORVRfUk5ESVNfV0xBTiBpcyBub3Qg
c2V0CiMgQ09ORklHX1ZJUlRfV0lGSSBpcyBub3Qgc2V0CgojCiMgRW5hYmxlIFdpTUFYIChOZXR3
b3JraW5nIG9wdGlvbnMpIHRvIHNlZSB0aGUgV2lNQVggZHJpdmVycwojCiMgQ09ORklHX1dBTiBp
cyBub3Qgc2V0CkNPTkZJR19YRU5fTkVUREVWX0ZST05URU5EPXkKIyBDT05GSUdfWEVOX05FVERF
Vl9CQUNLRU5EIGlzIG5vdCBzZXQKIyBDT05GSUdfVk1YTkVUMyBpcyBub3Qgc2V0CiMgQ09ORklH
X0ZVSklUU1VfRVMgaXMgbm90IHNldAojIENPTkZJR19ORVRERVZTSU0gaXMgbm90IHNldApDT05G
SUdfTkVUX0ZBSUxPVkVSPXkKQ09ORklHX0lWU0hNRU1fTkVUPXkKIyBDT05GSUdfSVNETiBpcyBu
b3Qgc2V0CiMgQ09ORklHX05WTSBpcyBub3Qgc2V0CgojCiMgSW5wdXQgZGV2aWNlIHN1cHBvcnQK
IwpDT05GSUdfSU5QVVQ9eQpDT05GSUdfSU5QVVRfTEVEUz15CkNPTkZJR19JTlBVVF9GRl9NRU1M
RVNTPXkKQ09ORklHX0lOUFVUX1BPTExERVY9eQojIENPTkZJR19JTlBVVF9TUEFSU0VLTUFQIGlz
IG5vdCBzZXQKQ09ORklHX0lOUFVUX01BVFJJWEtNQVA9eQoKIwojIFVzZXJsYW5kIGludGVyZmFj
ZXMKIwojIENPTkZJR19JTlBVVF9NT1VTRURFViBpcyBub3Qgc2V0CiMgQ09ORklHX0lOUFVUX0pP
WURFViBpcyBub3Qgc2V0CkNPTkZJR19JTlBVVF9FVkRFVj15CiMgQ09ORklHX0lOUFVUX0VWQlVH
IGlzIG5vdCBzZXQKCiMKIyBJbnB1dCBEZXZpY2UgRHJpdmVycwojCkNPTkZJR19JTlBVVF9LRVlC
T0FSRD15CkNPTkZJR19LRVlCT0FSRF9BREM9bQojIENPTkZJR19LRVlCT0FSRF9BRFA1NTg4IGlz
IG5vdCBzZXQKIyBDT05GSUdfS0VZQk9BUkRfQURQNTU4OSBpcyBub3Qgc2V0CkNPTkZJR19LRVlC
T0FSRF9BVEtCRD15CiMgQ09ORklHX0tFWUJPQVJEX1FUMTA1MCBpcyBub3Qgc2V0CiMgQ09ORklH
X0tFWUJPQVJEX1FUMTA3MCBpcyBub3Qgc2V0CiMgQ09ORklHX0tFWUJPQVJEX1FUMjE2MCBpcyBu
b3Qgc2V0CiMgQ09ORklHX0tFWUJPQVJEX0RMSU5LX0RJUjY4NSBpcyBub3Qgc2V0CiMgQ09ORklH
X0tFWUJPQVJEX0xLS0JEIGlzIG5vdCBzZXQKQ09ORklHX0tFWUJPQVJEX0dQSU89eQojIENPTkZJ
R19LRVlCT0FSRF9HUElPX1BPTExFRCBpcyBub3Qgc2V0CiMgQ09ORklHX0tFWUJPQVJEX1RDQTY0
MTYgaXMgbm90IHNldAojIENPTkZJR19LRVlCT0FSRF9UQ0E4NDE4IGlzIG5vdCBzZXQKIyBDT05G
SUdfS0VZQk9BUkRfTUFUUklYIGlzIG5vdCBzZXQKIyBDT05GSUdfS0VZQk9BUkRfTE04MzIzIGlz
IG5vdCBzZXQKIyBDT05GSUdfS0VZQk9BUkRfTE04MzMzIGlzIG5vdCBzZXQKIyBDT05GSUdfS0VZ
Qk9BUkRfTUFYNzM1OSBpcyBub3Qgc2V0CiMgQ09ORklHX0tFWUJPQVJEX01DUyBpcyBub3Qgc2V0
CiMgQ09ORklHX0tFWUJPQVJEX01QUjEyMSBpcyBub3Qgc2V0CkNPTkZJR19LRVlCT0FSRF9TTlZT
X1BXUktFWT15CkNPTkZJR19LRVlCT0FSRF9JTVhfU0NfUFdSS0VZPXkKIyBDT05GSUdfS0VZQk9B
UkRfSU1YIGlzIG5vdCBzZXQKIyBDT05GSUdfS0VZQk9BUkRfTkVXVE9OIGlzIG5vdCBzZXQKIyBD
T05GSUdfS0VZQk9BUkRfT1BFTkNPUkVTIGlzIG5vdCBzZXQKIyBDT05GSUdfS0VZQk9BUkRfU0FN
U1VORyBpcyBub3Qgc2V0CiMgQ09ORklHX0tFWUJPQVJEX1NUT1dBV0FZIGlzIG5vdCBzZXQKIyBD
T05GSUdfS0VZQk9BUkRfU1VOS0JEIGlzIG5vdCBzZXQKIyBDT05GSUdfS0VZQk9BUkRfT01BUDQg
aXMgbm90IHNldAojIENPTkZJR19LRVlCT0FSRF9UTTJfVE9VQ0hLRVkgaXMgbm90IHNldAojIENP
TkZJR19LRVlCT0FSRF9YVEtCRCBpcyBub3Qgc2V0CkNPTkZJR19LRVlCT0FSRF9DUk9TX0VDPXkK
IyBDT05GSUdfS0VZQk9BUkRfQ0FQMTFYWCBpcyBub3Qgc2V0CiMgQ09ORklHX0tFWUJPQVJEX0JD
TSBpcyBub3Qgc2V0CkNPTkZJR19JTlBVVF9NT1VTRT15CkNPTkZJR19NT1VTRV9QUzI9eQpDT05G
SUdfTU9VU0VfUFMyX0FMUFM9eQpDT05GSUdfTU9VU0VfUFMyX0JZRD15CkNPTkZJR19NT1VTRV9Q
UzJfTE9HSVBTMlBQPXkKQ09ORklHX01PVVNFX1BTMl9TWU5BUFRJQ1M9eQpDT05GSUdfTU9VU0Vf
UFMyX1NZTkFQVElDU19TTUJVUz15CkNPTkZJR19NT1VTRV9QUzJfQ1lQUkVTUz15CkNPTkZJR19N
T1VTRV9QUzJfVFJBQ0tQT0lOVD15CiMgQ09ORklHX01PVVNFX1BTMl9FTEFOVEVDSCBpcyBub3Qg
c2V0CiMgQ09ORklHX01PVVNFX1BTMl9TRU5URUxJQyBpcyBub3Qgc2V0CiMgQ09ORklHX01PVVNF
X1BTMl9UT1VDSEtJVCBpcyBub3Qgc2V0CkNPTkZJR19NT1VTRV9QUzJfRk9DQUxURUNIPXkKQ09O
RklHX01PVVNFX1BTMl9TTUJVUz15CiMgQ09ORklHX01PVVNFX1NFUklBTCBpcyBub3Qgc2V0CiMg
Q09ORklHX01PVVNFX0FQUExFVE9VQ0ggaXMgbm90IHNldAojIENPTkZJR19NT1VTRV9CQ001OTc0
IGlzIG5vdCBzZXQKIyBDT05GSUdfTU9VU0VfQ1lBUEEgaXMgbm90IHNldAojIENPTkZJR19NT1VT
RV9FTEFOX0kyQyBpcyBub3Qgc2V0CiMgQ09ORklHX01PVVNFX1ZTWFhYQUEgaXMgbm90IHNldAoj
IENPTkZJR19NT1VTRV9HUElPIGlzIG5vdCBzZXQKIyBDT05GSUdfTU9VU0VfU1lOQVBUSUNTX0ky
QyBpcyBub3Qgc2V0CiMgQ09ORklHX01PVVNFX1NZTkFQVElDU19VU0IgaXMgbm90IHNldAojIENP
TkZJR19JTlBVVF9KT1lTVElDSyBpcyBub3Qgc2V0CiMgQ09ORklHX0lOUFVUX1RBQkxFVCBpcyBu
b3Qgc2V0CkNPTkZJR19JTlBVVF9UT1VDSFNDUkVFTj15CkNPTkZJR19UT1VDSFNDUkVFTl9QUk9Q
RVJUSUVTPXkKIyBDT05GSUdfVE9VQ0hTQ1JFRU5fQURTNzg0NiBpcyBub3Qgc2V0CkNPTkZJR19U
T1VDSFNDUkVFTl9DVDM2WF9XTEQ9eQojIENPTkZJR19UT1VDSFNDUkVFTl9BRDc4NzcgaXMgbm90
IHNldAojIENPTkZJR19UT1VDSFNDUkVFTl9BRDc4NzkgaXMgbm90IHNldAojIENPTkZJR19UT1VD
SFNDUkVFTl9BREMgaXMgbm90IHNldAojIENPTkZJR19UT1VDSFNDUkVFTl9BUjEwMjFfSTJDIGlz
IG5vdCBzZXQKQ09ORklHX1RPVUNIU0NSRUVOX0FUTUVMX01YVD1tCiMgQ09ORklHX1RPVUNIU0NS
RUVOX0FUTUVMX01YVF9UMzcgaXMgbm90IHNldAojIENPTkZJR19UT1VDSFNDUkVFTl9BVU9fUElY
Q0lSIGlzIG5vdCBzZXQKIyBDT05GSUdfVE9VQ0hTQ1JFRU5fQlUyMTAxMyBpcyBub3Qgc2V0CiMg
Q09ORklHX1RPVUNIU0NSRUVOX0JVMjEwMjkgaXMgbm90IHNldAojIENPTkZJR19UT1VDSFNDUkVF
Tl9DSElQT05FX0lDTjgzMTggaXMgbm90IHNldAojIENPTkZJR19UT1VDSFNDUkVFTl9DSElQT05F
X0lDTjg1MDUgaXMgbm90IHNldAojIENPTkZJR19UT1VDSFNDUkVFTl9DWThDVE1HMTEwIGlzIG5v
dCBzZXQKIyBDT05GSUdfVE9VQ0hTQ1JFRU5fQ1lUVFNQX0NPUkUgaXMgbm90IHNldAojIENPTkZJ
R19UT1VDSFNDUkVFTl9DWVRUU1A0X0NPUkUgaXMgbm90IHNldAojIENPTkZJR19UT1VDSFNDUkVF
Tl9EWU5BUFJPIGlzIG5vdCBzZXQKIyBDT05GSUdfVE9VQ0hTQ1JFRU5fSEFNUFNISVJFIGlzIG5v
dCBzZXQKIyBDT05GSUdfVE9VQ0hTQ1JFRU5fRUVUSSBpcyBub3Qgc2V0CiMgQ09ORklHX1RPVUNI
U0NSRUVOX0VHQUxBWCBpcyBub3Qgc2V0CiMgQ09ORklHX1RPVUNIU0NSRUVOX0VHQUxBWF9TRVJJ
QUwgaXMgbm90IHNldAojIENPTkZJR19UT1VDSFNDUkVFTl9FWEMzMDAwIGlzIG5vdCBzZXQKIyBD
T05GSUdfVE9VQ0hTQ1JFRU5fRUxBTl9UUyBpcyBub3Qgc2V0CiMgQ09ORklHX1RPVUNIU0NSRUVO
X0ZVSklUU1UgaXMgbm90IHNldAojIENPTkZJR19UT1VDSFNDUkVFTl9HT09ESVggaXMgbm90IHNl
dAojIENPTkZJR19UT1VDSFNDUkVFTl9ISURFRVAgaXMgbm90IHNldAojIENPTkZJR19UT1VDSFND
UkVFTl9JTEkyMTBYIGlzIG5vdCBzZXQKIyBDT05GSUdfVE9VQ0hTQ1JFRU5fUzZTWTc2MSBpcyBu
b3Qgc2V0CiMgQ09ORklHX1RPVUNIU0NSRUVOX0dVTlpFIGlzIG5vdCBzZXQKIyBDT05GSUdfVE9V
Q0hTQ1JFRU5fRUtURjIxMjcgaXMgbm90IHNldAojIENPTkZJR19UT1VDSFNDUkVFTl9FTEFOIGlz
IG5vdCBzZXQKIyBDT05GSUdfVE9VQ0hTQ1JFRU5fRUxPIGlzIG5vdCBzZXQKIyBDT05GSUdfVE9V
Q0hTQ1JFRU5fV0FDT01fVzgwMDEgaXMgbm90IHNldAojIENPTkZJR19UT1VDSFNDUkVFTl9XQUNP
TV9JMkMgaXMgbm90IHNldAojIENPTkZJR19UT1VDSFNDUkVFTl9NQVgxMTgwMSBpcyBub3Qgc2V0
CiMgQ09ORklHX1RPVUNIU0NSRUVOX01DUzUwMDAgaXMgbm90IHNldAojIENPTkZJR19UT1VDSFND
UkVFTl9NTVMxMTQgaXMgbm90IHNldAojIENPTkZJR19UT1VDSFNDUkVFTl9NRUxGQVNfTUlQNCBp
cyBub3Qgc2V0CiMgQ09ORklHX1RPVUNIU0NSRUVOX01UT1VDSCBpcyBub3Qgc2V0CiMgQ09ORklH
X1RPVUNIU0NSRUVOX0lNWDZVTF9UU0MgaXMgbm90IHNldAojIENPTkZJR19UT1VDSFNDUkVFTl9J
TkVYSU8gaXMgbm90IHNldAojIENPTkZJR19UT1VDSFNDUkVFTl9NSzcxMiBpcyBub3Qgc2V0CiMg
Q09ORklHX1RPVUNIU0NSRUVOX1BFTk1PVU5UIGlzIG5vdCBzZXQKIyBDT05GSUdfVE9VQ0hTQ1JF
RU5fRURUX0ZUNVgwNiBpcyBub3Qgc2V0CiMgQ09ORklHX1RPVUNIU0NSRUVOX1RPVUNIUklHSFQg
aXMgbm90IHNldAojIENPTkZJR19UT1VDSFNDUkVFTl9UT1VDSFdJTiBpcyBub3Qgc2V0CiMgQ09O
RklHX1RPVUNIU0NSRUVOX1BJWENJUiBpcyBub3Qgc2V0CiMgQ09ORklHX1RPVUNIU0NSRUVOX1dE
VDg3WFhfSTJDIGlzIG5vdCBzZXQKIyBDT05GSUdfVE9VQ0hTQ1JFRU5fVVNCX0NPTVBPU0lURSBp
cyBub3Qgc2V0CiMgQ09ORklHX1RPVUNIU0NSRUVOX1RPVUNISVQyMTMgaXMgbm90IHNldAojIENP
TkZJR19UT1VDSFNDUkVFTl9UU0NfU0VSSU8gaXMgbm90IHNldAojIENPTkZJR19UT1VDSFNDUkVF
Tl9UU0MyMDA0IGlzIG5vdCBzZXQKIyBDT05GSUdfVE9VQ0hTQ1JFRU5fVFNDMjAwNSBpcyBub3Qg
c2V0CiMgQ09ORklHX1RPVUNIU0NSRUVOX1RTQzIwMDcgaXMgbm90IHNldAojIENPTkZJR19UT1VD
SFNDUkVFTl9STV9UUyBpcyBub3Qgc2V0CiMgQ09ORklHX1RPVUNIU0NSRUVOX1NJTEVBRCBpcyBu
b3Qgc2V0CiMgQ09ORklHX1RPVUNIU0NSRUVOX1NJU19JMkMgaXMgbm90IHNldAojIENPTkZJR19U
T1VDSFNDUkVFTl9TVDEyMzIgaXMgbm90IHNldAojIENPTkZJR19UT1VDSFNDUkVFTl9TVE1GVFMg
aXMgbm90IHNldAojIENPTkZJR19UT1VDSFNDUkVFTl9TVVI0MCBpcyBub3Qgc2V0CiMgQ09ORklH
X1RPVUNIU0NSRUVOX1NVUkZBQ0UzX1NQSSBpcyBub3Qgc2V0CiMgQ09ORklHX1RPVUNIU0NSRUVO
X1NYODY1NCBpcyBub3Qgc2V0CiMgQ09ORklHX1RPVUNIU0NSRUVOX1RQUzY1MDdYIGlzIG5vdCBz
ZXQKIyBDT05GSUdfVE9VQ0hTQ1JFRU5fWkVUNjIyMyBpcyBub3Qgc2V0CiMgQ09ORklHX1RPVUNI
U0NSRUVOX1pGT1JDRSBpcyBub3Qgc2V0CiMgQ09ORklHX1RPVUNIU0NSRUVOX1JPSE1fQlUyMTAy
MyBpcyBub3Qgc2V0CiMgQ09ORklHX1RPVUNIU0NSRUVOX0lRUzVYWCBpcyBub3Qgc2V0CkNPTkZJ
R19UT1VDSFNDUkVFTl9TWU5BUFRJQ1NfRFNYPXkKQ09ORklHX1RPVUNIU0NSRUVOX1NZTkFQVElD
U19EU1hfSTJDPW0KIyBDT05GSUdfVE9VQ0hTQ1JFRU5fRlRTIGlzIG5vdCBzZXQKQ09ORklHX0lO
UFVUX01JU0M9eQojIENPTkZJR19JTlBVVF9BRDcxNFggaXMgbm90IHNldAojIENPTkZJR19JTlBV
VF9BVE1FTF9DQVBUT1VDSCBpcyBub3Qgc2V0CiMgQ09ORklHX0lOUFVUX0JNQTE1MCBpcyBub3Qg
c2V0CiMgQ09ORklHX0lOUFVUX0UzWDBfQlVUVE9OIGlzIG5vdCBzZXQKIyBDT05GSUdfSU5QVVRf
TVNNX1ZJQlJBVE9SIGlzIG5vdCBzZXQKIyBDT05GSUdfSU5QVVRfTU1BODQ1MCBpcyBub3Qgc2V0
CiMgQ09ORklHX0lOUFVUX0dQMkEgaXMgbm90IHNldAojIENPTkZJR19JTlBVVF9HUElPX0JFRVBF
UiBpcyBub3Qgc2V0CiMgQ09ORklHX0lOUFVUX0dQSU9fREVDT0RFUiBpcyBub3Qgc2V0CiMgQ09O
RklHX0lOUFVUX0dQSU9fVklCUkEgaXMgbm90IHNldAojIENPTkZJR19JTlBVVF9BVElfUkVNT1RF
MiBpcyBub3Qgc2V0CiMgQ09ORklHX0lOUFVUX0tFWVNQQU5fUkVNT1RFIGlzIG5vdCBzZXQKIyBD
T05GSUdfSU5QVVRfS1hUSjkgaXMgbm90IHNldAojIENPTkZJR19JTlBVVF9QT1dFUk1BVEUgaXMg
bm90IHNldAojIENPTkZJR19JTlBVVF9ZRUFMSU5LIGlzIG5vdCBzZXQKIyBDT05GSUdfSU5QVVRf
Q00xMDkgaXMgbm90IHNldAojIENPTkZJR19JTlBVVF9SRUdVTEFUT1JfSEFQVElDIGlzIG5vdCBz
ZXQKIyBDT05GSUdfSU5QVVRfQVhQMjBYX1BFSyBpcyBub3Qgc2V0CiMgQ09ORklHX0lOUFVUX1VJ
TlBVVCBpcyBub3Qgc2V0CiMgQ09ORklHX0lOUFVUX1BDRjg1NzQgaXMgbm90IHNldAojIENPTkZJ
R19JTlBVVF9QV01fQkVFUEVSIGlzIG5vdCBzZXQKIyBDT05GSUdfSU5QVVRfUFdNX1ZJQlJBIGlz
IG5vdCBzZXQKIyBDT05GSUdfSU5QVVRfUks4MDVfUFdSS0VZIGlzIG5vdCBzZXQKIyBDT05GSUdf
SU5QVVRfR1BJT19ST1RBUllfRU5DT0RFUiBpcyBub3Qgc2V0CiMgQ09ORklHX0lOUFVUX0FEWEwz
NFggaXMgbm90IHNldAojIENPTkZJR19JTlBVVF9JTVNfUENVIGlzIG5vdCBzZXQKIyBDT05GSUdf
SU5QVVRfQ01BMzAwMCBpcyBub3Qgc2V0CkNPTkZJR19JTlBVVF9YRU5fS0JEREVWX0ZST05URU5E
PXkKIyBDT05GSUdfSU5QVVRfU09DX0JVVFRPTl9BUlJBWSBpcyBub3Qgc2V0CiMgQ09ORklHX0lO
UFVUX0RSVjI2MFhfSEFQVElDUyBpcyBub3Qgc2V0CiMgQ09ORklHX0lOUFVUX0RSVjI2NjVfSEFQ
VElDUyBpcyBub3Qgc2V0CiMgQ09ORklHX0lOUFVUX0RSVjI2NjdfSEFQVElDUyBpcyBub3Qgc2V0
CkNPTkZJR19JTlBVVF9NUEwzMTE1PXkKIyBDT05GSUdfU0VOU09SX0ZYTFM4NDcxIGlzIG5vdCBz
ZXQKQ09ORklHX0lOUFVUX0lTTDI5MDIzPXkKIyBDT05GSUdfUk1JNF9DT1JFIGlzIG5vdCBzZXQK
CiMKIyBIYXJkd2FyZSBJL08gcG9ydHMKIwpDT05GSUdfU0VSSU89eQojIENPTkZJR19TRVJJT19T
RVJQT1JUIGlzIG5vdCBzZXQKQ09ORklHX1NFUklPX0FNQkFLTUk9eQojIENPTkZJR19TRVJJT19Q
Q0lQUzIgaXMgbm90IHNldApDT05GSUdfU0VSSU9fTElCUFMyPXkKIyBDT05GSUdfU0VSSU9fUkFX
IGlzIG5vdCBzZXQKIyBDT05GSUdfU0VSSU9fQUxURVJBX1BTMiBpcyBub3Qgc2V0CiMgQ09ORklH
X1NFUklPX1BTMk1VTFQgaXMgbm90IHNldAojIENPTkZJR19TRVJJT19BUkNfUFMyIGlzIG5vdCBz
ZXQKIyBDT05GSUdfU0VSSU9fQVBCUFMyIGlzIG5vdCBzZXQKIyBDT05GSUdfU0VSSU9fR1BJT19Q
UzIgaXMgbm90IHNldAojIENPTkZJR19VU0VSSU8gaXMgbm90IHNldAojIENPTkZJR19HQU1FUE9S
VCBpcyBub3Qgc2V0CiMgZW5kIG9mIEhhcmR3YXJlIEkvTyBwb3J0cwojIGVuZCBvZiBJbnB1dCBk
ZXZpY2Ugc3VwcG9ydAoKIwojIENoYXJhY3RlciBkZXZpY2VzCiMKQ09ORklHX1RUWT15CkNPTkZJ
R19WVD15CkNPTkZJR19DT05TT0xFX1RSQU5TTEFUSU9OUz15CkNPTkZJR19WVF9DT05TT0xFPXkK
Q09ORklHX1ZUX0NPTlNPTEVfU0xFRVA9eQpDT05GSUdfSFdfQ09OU09MRT15CkNPTkZJR19WVF9I
V19DT05TT0xFX0JJTkRJTkc9eQpDT05GSUdfVU5JWDk4X1BUWVM9eQpDT05GSUdfTEVHQUNZX1BU
WVM9eQpDT05GSUdfTEVHQUNZX1BUWV9DT1VOVD0xNgojIENPTkZJR19TRVJJQUxfTk9OU1RBTkRB
UkQgaXMgbm90IHNldAojIENPTkZJR19OT1pPTUkgaXMgbm90IHNldAojIENPTkZJR19OX0dTTSBp
cyBub3Qgc2V0CiMgQ09ORklHX1RSQUNFX1NJTksgaXMgbm90IHNldAojIENPTkZJR19OVUxMX1RU
WSBpcyBub3Qgc2V0CkNPTkZJR19MRElTQ19BVVRPTE9BRD15CkNPTkZJR19ERVZNRU09eQoKIwoj
IFNlcmlhbCBkcml2ZXJzCiMKQ09ORklHX1NFUklBTF9FQVJMWUNPTj15CkNPTkZJR19TRVJJQUxf
ODI1MD15CkNPTkZJR19TRVJJQUxfODI1MF9ERVBSRUNBVEVEX09QVElPTlM9eQpDT05GSUdfU0VS
SUFMXzgyNTBfUE5QPXkKIyBDT05GSUdfU0VSSUFMXzgyNTBfRklOVEVLIGlzIG5vdCBzZXQKQ09O
RklHX1NFUklBTF84MjUwX0NPTlNPTEU9eQpDT05GSUdfU0VSSUFMXzgyNTBfRE1BPXkKQ09ORklH
X1NFUklBTF84MjUwX1BDST15CkNPTkZJR19TRVJJQUxfODI1MF9FWEFSPXkKQ09ORklHX1NFUklB
TF84MjUwX05SX1VBUlRTPTQKQ09ORklHX1NFUklBTF84MjUwX1JVTlRJTUVfVUFSVFM9NApDT05G
SUdfU0VSSUFMXzgyNTBfRVhURU5ERUQ9eQojIENPTkZJR19TRVJJQUxfODI1MF9NQU5ZX1BPUlRT
IGlzIG5vdCBzZXQKIyBDT05GSUdfU0VSSUFMXzgyNTBfQVNQRUVEX1ZVQVJUIGlzIG5vdCBzZXQK
Q09ORklHX1NFUklBTF84MjUwX1NIQVJFX0lSUT15CiMgQ09ORklHX1NFUklBTF84MjUwX0RFVEVD
VF9JUlEgaXMgbm90IHNldAojIENPTkZJR19TRVJJQUxfODI1MF9SU0EgaXMgbm90IHNldApDT05G
SUdfU0VSSUFMXzgyNTBfRFdMSUI9eQpDT05GSUdfU0VSSUFMXzgyNTBfRlNMPXkKQ09ORklHX1NF
UklBTF84MjUwX0RXPXkKIyBDT05GSUdfU0VSSUFMXzgyNTBfUlQyODhYIGlzIG5vdCBzZXQKQ09O
RklHX1NFUklBTF9PRl9QTEFURk9STT15CgojCiMgTm9uLTgyNTAgc2VyaWFsIHBvcnQgc3VwcG9y
dAojCiMgQ09ORklHX1NFUklBTF9BTUJBX1BMMDEwIGlzIG5vdCBzZXQKQ09ORklHX1NFUklBTF9B
TUJBX1BMMDExPXkKQ09ORklHX1NFUklBTF9BTUJBX1BMMDExX0NPTlNPTEU9eQojIENPTkZJR19T
RVJJQUxfRUFSTFlDT05fQVJNX1NFTUlIT1NUIGlzIG5vdCBzZXQKIyBDT05GSUdfU0VSSUFMX01B
WDMxMDAgaXMgbm90IHNldAojIENPTkZJR19TRVJJQUxfTUFYMzEwWCBpcyBub3Qgc2V0CkNPTkZJ
R19TRVJJQUxfSU1YPXkKQ09ORklHX1NFUklBTF9JTVhfQ09OU09MRT15CiMgQ09ORklHX1NFUklB
TF9VQVJUTElURSBpcyBub3Qgc2V0CkNPTkZJR19TRVJJQUxfQ09SRT15CkNPTkZJR19TRVJJQUxf
Q09SRV9DT05TT0xFPXkKIyBDT05GSUdfU0VSSUFMX0pTTSBpcyBub3Qgc2V0CiMgQ09ORklHX1NF
UklBTF9TSUZJVkUgaXMgbm90IHNldAojIENPTkZJR19TRVJJQUxfU0NDTlhQIGlzIG5vdCBzZXQK
IyBDT05GSUdfU0VSSUFMX1NDMTZJUzdYWCBpcyBub3Qgc2V0CiMgQ09ORklHX1NFUklBTF9BTFRF
UkFfSlRBR1VBUlQgaXMgbm90IHNldAojIENPTkZJR19TRVJJQUxfQUxURVJBX1VBUlQgaXMgbm90
IHNldAojIENPTkZJR19TRVJJQUxfSUZYNlg2MCBpcyBub3Qgc2V0CkNPTkZJR19TRVJJQUxfWElM
SU5YX1BTX1VBUlQ9eQpDT05GSUdfU0VSSUFMX1hJTElOWF9QU19VQVJUX0NPTlNPTEU9eQojIENP
TkZJR19TRVJJQUxfQVJDIGlzIG5vdCBzZXQKIyBDT05GSUdfU0VSSUFMX1JQMiBpcyBub3Qgc2V0
CkNPTkZJR19TRVJJQUxfRlNMX0xQVUFSVD15CkNPTkZJR19TRVJJQUxfRlNMX0xQVUFSVF9DT05T
T0xFPXkKQ09ORklHX1NFUklBTF9GU0xfTElORkxFWFVBUlQ9eQpDT05GSUdfU0VSSUFMX0ZTTF9M
SU5GTEVYVUFSVF9DT05TT0xFPXkKIyBDT05GSUdfU0VSSUFMX0NPTkVYQU5UX0RJR0lDT0xPUiBp
cyBub3Qgc2V0CiMgZW5kIG9mIFNlcmlhbCBkcml2ZXJzCgpDT05GSUdfU0VSSUFMX01DVFJMX0dQ
SU89eQpDT05GSUdfU0VSSUFMX0RFVl9CVVM9eQpDT05GSUdfU0VSSUFMX0RFVl9DVFJMX1RUWVBP
UlQ9eQpDT05GSUdfSFZDX0RSSVZFUj15CkNPTkZJR19IVkNfSVJRPXkKQ09ORklHX0hWQ19YRU49
eQpDT05GSUdfSFZDX1hFTl9GUk9OVEVORD15CiMgQ09ORklHX0hWQ19EQ0MgaXMgbm90IHNldApD
T05GSUdfVklSVElPX0NPTlNPTEU9eQpDT05GSUdfSVBNSV9IQU5ETEVSPW0KQ09ORklHX0lQTUlf
RE1JX0RFQ09ERT15CkNPTkZJR19JUE1JX1BMQVRfREFUQT15CiMgQ09ORklHX0lQTUlfUEFOSUNf
RVZFTlQgaXMgbm90IHNldApDT05GSUdfSVBNSV9ERVZJQ0VfSU5URVJGQUNFPW0KQ09ORklHX0lQ
TUlfU0k9bQojIENPTkZJR19JUE1JX1NTSUYgaXMgbm90IHNldAojIENPTkZJR19JUE1JX1dBVENI
RE9HIGlzIG5vdCBzZXQKIyBDT05GSUdfSVBNSV9QT1dFUk9GRiBpcyBub3Qgc2V0CiMgQ09ORklH
X0lQTUJfREVWSUNFX0lOVEVSRkFDRSBpcyBub3Qgc2V0CkNPTkZJR19IV19SQU5ET009eQojIENP
TkZJR19IV19SQU5ET01fVElNRVJJT01FTSBpcyBub3Qgc2V0CiMgQ09ORklHX0hXX1JBTkRPTV9W
SVJUSU8gaXMgbm90IHNldApDT05GSUdfSFdfUkFORE9NX0lNWF9STkdDPXkKQ09ORklHX0hXX1JB
TkRPTV9DQVZJVU09eQpDT05GSUdfSFdfUkFORE9NX09QVEVFPXkKIyBDT05GSUdfQVBQTElDT00g
aXMgbm90IHNldAojIENPTkZJR19SQVdfRFJJVkVSIGlzIG5vdCBzZXQKQ09ORklHX1RDR19UUE09
eQpDT05GSUdfSFdfUkFORE9NX1RQTT15CiMgQ09ORklHX1RDR19USVMgaXMgbm90IHNldAojIENP
TkZJR19UQ0dfVElTX1NQSSBpcyBub3Qgc2V0CiMgQ09ORklHX1RDR19USVNfSTJDX0FUTUVMIGlz
IG5vdCBzZXQKQ09ORklHX1RDR19USVNfSTJDX0lORklORU9OPXkKIyBDT05GSUdfVENHX1RJU19J
MkNfTlVWT1RPTiBpcyBub3Qgc2V0CiMgQ09ORklHX1RDR19BVE1FTCBpcyBub3Qgc2V0CiMgQ09O
RklHX1RDR19JTkZJTkVPTiBpcyBub3Qgc2V0CiMgQ09ORklHX1RDR19YRU4gaXMgbm90IHNldAoj
IENPTkZJR19UQ0dfQ1JCIGlzIG5vdCBzZXQKIyBDT05GSUdfVENHX1ZUUE1fUFJPWFkgaXMgbm90
IHNldAojIENPTkZJR19UQ0dfRlRQTV9URUUgaXMgbm90IHNldAojIENPTkZJR19UQ0dfVElTX1NU
MzNaUDI0X0kyQyBpcyBub3Qgc2V0CiMgQ09ORklHX1RDR19USVNfU1QzM1pQMjRfU1BJIGlzIG5v
dCBzZXQKQ09ORklHX0RFVlBPUlQ9eQojIENPTkZJR19YSUxMWUJVUyBpcyBub3Qgc2V0CiMgZW5k
IG9mIENoYXJhY3RlciBkZXZpY2VzCgojIENPTkZJR19SQU5ET01fVFJVU1RfQk9PVExPQURFUiBp
cyBub3Qgc2V0CgojCiMgSTJDIHN1cHBvcnQKIwpDT05GSUdfSTJDPXkKQ09ORklHX0FDUElfSTJD
X09QUkVHSU9OPXkKQ09ORklHX0kyQ19CT0FSRElORk89eQpDT05GSUdfSTJDX0NPTVBBVD15CkNP
TkZJR19JMkNfQ0hBUkRFVj15CkNPTkZJR19JMkNfTVVYPXkKCiMKIyBNdWx0aXBsZXhlciBJMkMg
Q2hpcCBzdXBwb3J0CiMKIyBDT05GSUdfSTJDX0FSQl9HUElPX0NIQUxMRU5HRSBpcyBub3Qgc2V0
CiMgQ09ORklHX0kyQ19NVVhfR1BJTyBpcyBub3Qgc2V0CiMgQ09ORklHX0kyQ19NVVhfR1BNVVgg
aXMgbm90IHNldAojIENPTkZJR19JMkNfTVVYX0xUQzQzMDYgaXMgbm90IHNldAojIENPTkZJR19J
MkNfTVVYX1BDQTk1NDEgaXMgbm90IHNldApDT05GSUdfSTJDX01VWF9QQ0E5NTR4PXkKIyBDT05G
SUdfSTJDX01VWF9QSU5DVFJMIGlzIG5vdCBzZXQKIyBDT05GSUdfSTJDX01VWF9SRUcgaXMgbm90
IHNldAojIENPTkZJR19JMkNfREVNVVhfUElOQ1RSTCBpcyBub3Qgc2V0CiMgQ09ORklHX0kyQ19N
VVhfTUxYQ1BMRCBpcyBub3Qgc2V0CiMgZW5kIG9mIE11bHRpcGxleGVyIEkyQyBDaGlwIHN1cHBv
cnQKCkNPTkZJR19JMkNfSEVMUEVSX0FVVE89eQpDT05GSUdfSTJDX0FMR09CSVQ9eQoKIwojIEky
QyBIYXJkd2FyZSBCdXMgc3VwcG9ydAojCgojCiMgUEMgU01CdXMgaG9zdCBjb250cm9sbGVyIGRy
aXZlcnMKIwojIENPTkZJR19JMkNfQUxJMTUzNSBpcyBub3Qgc2V0CiMgQ09ORklHX0kyQ19BTEkx
NTYzIGlzIG5vdCBzZXQKIyBDT05GSUdfSTJDX0FMSTE1WDMgaXMgbm90IHNldAojIENPTkZJR19J
MkNfQU1ENzU2IGlzIG5vdCBzZXQKIyBDT05GSUdfSTJDX0FNRDgxMTEgaXMgbm90IHNldAojIENP
TkZJR19JMkNfQU1EX01QMiBpcyBub3Qgc2V0CiMgQ09ORklHX0kyQ19JODAxIGlzIG5vdCBzZXQK
IyBDT05GSUdfSTJDX0lTQ0ggaXMgbm90IHNldAojIENPTkZJR19JMkNfUElJWDQgaXMgbm90IHNl
dAojIENPTkZJR19JMkNfTkZPUkNFMiBpcyBub3Qgc2V0CiMgQ09ORklHX0kyQ19OVklESUFfR1BV
IGlzIG5vdCBzZXQKIyBDT05GSUdfSTJDX1NJUzU1OTUgaXMgbm90IHNldAojIENPTkZJR19JMkNf
U0lTNjMwIGlzIG5vdCBzZXQKIyBDT05GSUdfSTJDX1NJUzk2WCBpcyBub3Qgc2V0CiMgQ09ORklH
X0kyQ19WSUEgaXMgbm90IHNldAojIENPTkZJR19JMkNfVklBUFJPIGlzIG5vdCBzZXQKCiMKIyBB
Q1BJIGRyaXZlcnMKIwojIENPTkZJR19JMkNfU0NNSSBpcyBub3Qgc2V0CgojCiMgSTJDIHN5c3Rl
bSBidXMgZHJpdmVycyAobW9zdGx5IGVtYmVkZGVkIC8gc3lzdGVtLW9uLWNoaXApCiMKIyBDT05G
SUdfSTJDX0NBREVOQ0UgaXMgbm90IHNldAojIENPTkZJR19JMkNfQ0JVU19HUElPIGlzIG5vdCBz
ZXQKQ09ORklHX0kyQ19ERVNJR05XQVJFX0NPUkU9eQpDT05GSUdfSTJDX0RFU0lHTldBUkVfUExB
VEZPUk09eQojIENPTkZJR19JMkNfREVTSUdOV0FSRV9TTEFWRSBpcyBub3Qgc2V0CiMgQ09ORklH
X0kyQ19ERVNJR05XQVJFX1BDSSBpcyBub3Qgc2V0CiMgQ09ORklHX0kyQ19FTUVWMiBpcyBub3Qg
c2V0CkNPTkZJR19JMkNfR1BJTz1tCiMgQ09ORklHX0kyQ19HUElPX0ZBVUxUX0lOSkVDVE9SIGlz
IG5vdCBzZXQKQ09ORklHX0kyQ19JTVg9eQpDT05GSUdfSTJDX0lNWF9MUEkyQz15CiMgQ09ORklH
X0kyQ19OT01BRElLIGlzIG5vdCBzZXQKIyBDT05GSUdfSTJDX09DT1JFUyBpcyBub3Qgc2V0CiMg
Q09ORklHX0kyQ19QQ0FfUExBVEZPUk0gaXMgbm90IHNldApDT05GSUdfSTJDX1JLM1g9eQpDT05G
SUdfSTJDX1JQQlVTPXkKIyBDT05GSUdfSTJDX1NJTVRFQyBpcyBub3Qgc2V0CiMgQ09ORklHX0ky
Q19USFVOREVSWCBpcyBub3Qgc2V0CiMgQ09ORklHX0kyQ19YSUxJTlggaXMgbm90IHNldAoKIwoj
IEV4dGVybmFsIEkyQy9TTUJ1cyBhZGFwdGVyIGRyaXZlcnMKIwojIENPTkZJR19JMkNfRElPTEFO
X1UyQyBpcyBub3Qgc2V0CiMgQ09ORklHX0kyQ19QQVJQT1JUX0xJR0hUIGlzIG5vdCBzZXQKIyBD
T05GSUdfSTJDX1JPQk9URlVaWl9PU0lGIGlzIG5vdCBzZXQKIyBDT05GSUdfSTJDX1RBT1NfRVZN
IGlzIG5vdCBzZXQKIyBDT05GSUdfSTJDX1RJTllfVVNCIGlzIG5vdCBzZXQKCiMKIyBPdGhlciBJ
MkMvU01CdXMgYnVzIGRyaXZlcnMKIwpDT05GSUdfSTJDX0NST1NfRUNfVFVOTkVMPXkKQ09ORklH
X1hFTl9JMkNfRlJPTlRFTkQ9eQpDT05GSUdfWEVOX0kyQ19CQUNLRU5EPXkKIyBlbmQgb2YgSTJD
IEhhcmR3YXJlIEJ1cyBzdXBwb3J0CgojIENPTkZJR19JMkNfU1RVQiBpcyBub3Qgc2V0CkNPTkZJ
R19JMkNfU0xBVkU9eQojIENPTkZJR19JMkNfU0xBVkVfRUVQUk9NIGlzIG5vdCBzZXQKIyBDT05G
SUdfSTJDX0RFQlVHX0NPUkUgaXMgbm90IHNldAojIENPTkZJR19JMkNfREVCVUdfQUxHTyBpcyBu
b3Qgc2V0CiMgQ09ORklHX0kyQ19ERUJVR19CVVMgaXMgbm90IHNldAojIGVuZCBvZiBJMkMgc3Vw
cG9ydAoKIyBDT05GSUdfSTNDIGlzIG5vdCBzZXQKQ09ORklHX1NQST15CiMgQ09ORklHX1NQSV9E
RUJVRyBpcyBub3Qgc2V0CkNPTkZJR19TUElfTUFTVEVSPXkKQ09ORklHX1NQSV9NRU09eQoKIwoj
IFNQSSBNYXN0ZXIgQ29udHJvbGxlciBEcml2ZXJzCiMKIyBDT05GSUdfU1BJX0FMVEVSQSBpcyBu
b3Qgc2V0CiMgQ09ORklHX1NQSV9BWElfU1BJX0VOR0lORSBpcyBub3Qgc2V0CkNPTkZJR19TUElf
QklUQkFORz15CiMgQ09ORklHX1NQSV9DQURFTkNFIGlzIG5vdCBzZXQKIyBDT05GSUdfU1BJX0RF
U0lHTldBUkUgaXMgbm90IHNldApDT05GSUdfU1BJX0ZTTF9MUFNQST15CkNPTkZJR19TUElfRlNM
X1FVQURTUEk9eQpDT05GSUdfU1BJX05YUF9GTEVYU1BJPXkKIyBDT05GSUdfU1BJX0dQSU8gaXMg
bm90IHNldApDT05GSUdfU1BJX0lNWD15CiMgQ09ORklHX1NQSV9GU0xfU1BJIGlzIG5vdCBzZXQK
Q09ORklHX1NQSV9GU0xfRFNQST15CiMgQ09ORklHX1NQSV9PQ19USU5ZIGlzIG5vdCBzZXQKQ09O
RklHX1NQSV9QTDAyMj15CiMgQ09ORklHX1NQSV9QWEEyWFggaXMgbm90IHNldApDT05GSUdfU1BJ
X1JPQ0tDSElQPXkKIyBDT05GSUdfU1BJX1NDMThJUzYwMiBpcyBub3Qgc2V0CiMgQ09ORklHX1NQ
SV9TSUZJVkUgaXMgbm90IHNldAojIENPTkZJR19TUElfTVhJQyBpcyBub3Qgc2V0CiMgQ09ORklH
X1NQSV9USFVOREVSWCBpcyBub3Qgc2V0CiMgQ09ORklHX1NQSV9YQ09NTSBpcyBub3Qgc2V0CiMg
Q09ORklHX1NQSV9YSUxJTlggaXMgbm90IHNldAojIENPTkZJR19TUElfWllOUU1QX0dRU1BJIGlz
IG5vdCBzZXQKCiMKIyBTUEkgUHJvdG9jb2wgTWFzdGVycwojCkNPTkZJR19TUElfU1BJREVWPXkK
IyBDT05GSUdfU1BJX0xPT1BCQUNLX1RFU1QgaXMgbm90IHNldAojIENPTkZJR19TUElfVExFNjJY
MCBpcyBub3Qgc2V0CkNPTkZJR19TUElfU0xBVkU9eQpDT05GSUdfU1BJX1NMQVZFX1RJTUU9eQpD
T05GSUdfU1BJX1NMQVZFX1NZU1RFTV9DT05UUk9MPXkKQ09ORklHX1NQSV9EWU5BTUlDPXkKQ09O
RklHX1NQTUk9eQojIENPTkZJR19IU0kgaXMgbm90IHNldApDT05GSUdfUFBTPXkKIyBDT05GSUdf
UFBTX0RFQlVHIGlzIG5vdCBzZXQKCiMKIyBQUFMgY2xpZW50cyBzdXBwb3J0CiMKIyBDT05GSUdf
UFBTX0NMSUVOVF9LVElNRVIgaXMgbm90IHNldAojIENPTkZJR19QUFNfQ0xJRU5UX0xESVNDIGlz
IG5vdCBzZXQKIyBDT05GSUdfUFBTX0NMSUVOVF9HUElPIGlzIG5vdCBzZXQKCiMKIyBQUFMgZ2Vu
ZXJhdG9ycyBzdXBwb3J0CiMKCiMKIyBQVFAgY2xvY2sgc3VwcG9ydAojCkNPTkZJR19QVFBfMTU4
OF9DTE9DSz15CkNPTkZJR19QVFBfMTU4OF9DTE9DS19RT1JJUT15CgojCiMgRW5hYmxlIFBIWUxJ
QiBhbmQgTkVUV09SS19QSFlfVElNRVNUQU1QSU5HIHRvIHNlZSB0aGUgYWRkaXRpb25hbCBjbG9j
a3MuCiMKIyBlbmQgb2YgUFRQIGNsb2NrIHN1cHBvcnQKCkNPTkZJR19QSU5DVFJMPXkKQ09ORklH
X0dFTkVSSUNfUElOQ1RSTF9HUk9VUFM9eQpDT05GSUdfUElOTVVYPXkKQ09ORklHX0dFTkVSSUNf
UElOTVVYX0ZVTkNUSU9OUz15CkNPTkZJR19QSU5DT05GPXkKQ09ORklHX0dFTkVSSUNfUElOQ09O
Rj15CiMgQ09ORklHX0RFQlVHX1BJTkNUUkwgaXMgbm90IHNldAojIENPTkZJR19QSU5DVFJMX0FY
UDIwOSBpcyBub3Qgc2V0CiMgQ09ORklHX1BJTkNUUkxfQU1EIGlzIG5vdCBzZXQKIyBDT05GSUdf
UElOQ1RSTF9NQ1AyM1MwOCBpcyBub3Qgc2V0CkNPTkZJR19QSU5DVFJMX1NJTkdMRT15CiMgQ09O
RklHX1BJTkNUUkxfU1gxNTBYIGlzIG5vdCBzZXQKIyBDT05GSUdfUElOQ1RSTF9TVE1GWCBpcyBu
b3Qgc2V0CkNPTkZJR19QSU5DVFJMX01BWDc3NjIwPXkKIyBDT05GSUdfUElOQ1RSTF9SSzgwNSBp
cyBub3Qgc2V0CiMgQ09ORklHX1BJTkNUUkxfT0NFTE9UIGlzIG5vdCBzZXQKQ09ORklHX1BJTkNU
UkxfSU1YPXkKQ09ORklHX1BJTkNUUkxfSU1YX1NDVT15CkNPTkZJR19QSU5DVFJMX0lNWDhNTT15
CkNPTkZJR19QSU5DVFJMX0lNWDhNTj15CkNPTkZJR19QSU5DVFJMX0lNWDhNUD15CkNPTkZJR19Q
SU5DVFJMX0lNWDhNUT15CkNPTkZJR19QSU5DVFJMX0lNWDhRTT15CkNPTkZJR19QSU5DVFJMX0lN
WDhRWFA9eQpDT05GSUdfUElOQ1RSTF9JTVg4RFhMPXkKQ09ORklHX1BJTkNUUkxfUzMyVl9DT1JF
PXkKQ09ORklHX1BJTkNUUkxfUzMyVjIzND15CkNPTkZJR19HUElPTElCPXkKQ09ORklHX0dQSU9M
SUJfRkFTVFBBVEhfTElNSVQ9NTEyCkNPTkZJR19PRl9HUElPPXkKQ09ORklHX0dQSU9fQUNQST15
CkNPTkZJR19HUElPTElCX0lSUUNISVA9eQojIENPTkZJR19ERUJVR19HUElPIGlzIG5vdCBzZXQK
Q09ORklHX0dQSU9fU1lTRlM9eQpDT05GSUdfR1BJT19HRU5FUklDPXkKCiMKIyBNZW1vcnkgbWFw
cGVkIEdQSU8gZHJpdmVycwojCiMgQ09ORklHX0dQSU9fNzRYWF9NTUlPIGlzIG5vdCBzZXQKIyBD
T05GSUdfR1BJT19BTFRFUkEgaXMgbm90IHNldAojIENPTkZJR19HUElPX0FNRFBUIGlzIG5vdCBz
ZXQKIyBDT05GSUdfR1BJT19DQURFTkNFIGlzIG5vdCBzZXQKQ09ORklHX0dQSU9fRFdBUEI9eQoj
IENPTkZJR19HUElPX0VYQVIgaXMgbm90IHNldAojIENPTkZJR19HUElPX0ZUR1BJTzAxMCBpcyBu
b3Qgc2V0CkNPTkZJR19HUElPX0dFTkVSSUNfUExBVEZPUk09eQojIENPTkZJR19HUElPX0dSR1BJ
TyBpcyBub3Qgc2V0CiMgQ09ORklHX0dQSU9fSExXRCBpcyBub3Qgc2V0CkNPTkZJR19HUElPX01C
ODZTN1g9eQpDT05GSUdfR1BJT19NUEM4WFhYPXkKQ09ORklHX0dQSU9fTVhDPXkKQ09ORklHX0dQ
SU9fTVhDX1BBRF9XQUtFVVA9eQpDT05GSUdfR1BJT19QTDA2MT15CiMgQ09ORklHX0dQSU9fU0FN
QTVEMl9QSU9CVSBpcyBub3Qgc2V0CiMgQ09ORklHX0dQSU9fU1lTQ09OIGlzIG5vdCBzZXQKIyBD
T05GSUdfR1BJT19JTVhfUlBNU0cgaXMgbm90IHNldApDT05GSUdfR1BJT19YR0VORT15CiMgQ09O
RklHX0dQSU9fWElMSU5YIGlzIG5vdCBzZXQKIyBDT05GSUdfR1BJT19BTURfRkNIIGlzIG5vdCBz
ZXQKIyBlbmQgb2YgTWVtb3J5IG1hcHBlZCBHUElPIGRyaXZlcnMKCiMKIyBJMkMgR1BJTyBleHBh
bmRlcnMKIwojIENPTkZJR19HUElPX0FEUDU1ODggaXMgbm90IHNldAojIENPTkZJR19HUElPX0FE
TlAgaXMgbm90IHNldAojIENPTkZJR19HUElPX0dXX1BMRCBpcyBub3Qgc2V0CiMgQ09ORklHX0dQ
SU9fTUFYNzMwMCBpcyBub3Qgc2V0CkNPTkZJR19HUElPX01BWDczMlg9eQojIENPTkZJR19HUElP
X01BWDczMlhfSVJRIGlzIG5vdCBzZXQKQ09ORklHX0dQSU9fUENBOTUzWD15CkNPTkZJR19HUElP
X1BDQTk1M1hfSVJRPXkKIyBDT05GSUdfR1BJT19QQ0Y4NTdYIGlzIG5vdCBzZXQKIyBDT05GSUdf
R1BJT19UUElDMjgxMCBpcyBub3Qgc2V0CiMgZW5kIG9mIEkyQyBHUElPIGV4cGFuZGVycwoKIwoj
IE1GRCBHUElPIGV4cGFuZGVycwojCiMgQ09ORklHX0dQSU9fQkQ5NTcxTVdWIGlzIG5vdCBzZXQK
Q09ORklHX0dQSU9fTUFYNzc2MjA9eQojIGVuZCBvZiBNRkQgR1BJTyBleHBhbmRlcnMKCiMKIyBQ
Q0kgR1BJTyBleHBhbmRlcnMKIwojIENPTkZJR19HUElPX0JUOFhYIGlzIG5vdCBzZXQKIyBDT05G
SUdfR1BJT19QQ0lfSURJT18xNiBpcyBub3Qgc2V0CiMgQ09ORklHX0dQSU9fUENJRV9JRElPXzI0
IGlzIG5vdCBzZXQKIyBDT05GSUdfR1BJT19SREMzMjFYIGlzIG5vdCBzZXQKIyBlbmQgb2YgUENJ
IEdQSU8gZXhwYW5kZXJzCgojCiMgU1BJIEdQSU8gZXhwYW5kZXJzCiMKIyBDT05GSUdfR1BJT183
NFgxNjQgaXMgbm90IHNldAojIENPTkZJR19HUElPX01BWDMxOTFYIGlzIG5vdCBzZXQKIyBDT05G
SUdfR1BJT19NQVg3MzAxIGlzIG5vdCBzZXQKIyBDT05GSUdfR1BJT19NQzMzODgwIGlzIG5vdCBz
ZXQKIyBDT05GSUdfR1BJT19QSVNPU1IgaXMgbm90IHNldAojIENPTkZJR19HUElPX1hSQTE0MDMg
aXMgbm90IHNldAojIGVuZCBvZiBTUEkgR1BJTyBleHBhbmRlcnMKCiMKIyBVU0IgR1BJTyBleHBh
bmRlcnMKIwojIGVuZCBvZiBVU0IgR1BJTyBleHBhbmRlcnMKCiMgQ09ORklHX0dQSU9fTU9DS1VQ
IGlzIG5vdCBzZXQKIyBDT05GSUdfVzEgaXMgbm90IHNldApDT05GSUdfUE9XRVJfQVZTPXkKQ09O
RklHX1BPV0VSX1JFU0VUPXkKQ09ORklHX1BPV0VSX1JFU0VUX0JSQ01TVEI9eQojIENPTkZJR19Q
T1dFUl9SRVNFVF9HUElPIGlzIG5vdCBzZXQKIyBDT05GSUdfUE9XRVJfUkVTRVRfR1BJT19SRVNU
QVJUIGlzIG5vdCBzZXQKIyBDT05GSUdfUE9XRVJfUkVTRVRfTFRDMjk1MiBpcyBub3Qgc2V0CiMg
Q09ORklHX1BPV0VSX1JFU0VUX1JFU1RBUlQgaXMgbm90IHNldApDT05GSUdfUE9XRVJfUkVTRVRf
VkVYUFJFU1M9eQpDT05GSUdfUE9XRVJfUkVTRVRfWEdFTkU9eQpDT05GSUdfUE9XRVJfUkVTRVRf
U1lTQ09OPXkKIyBDT05GSUdfUE9XRVJfUkVTRVRfU1lTQ09OX1BPV0VST0ZGIGlzIG5vdCBzZXQK
Q09ORklHX1JFQk9PVF9NT0RFPXkKQ09ORklHX1NZU0NPTl9SRUJPT1RfTU9ERT15CiMgQ09ORklH
X05WTUVNX1JFQk9PVF9NT0RFIGlzIG5vdCBzZXQKQ09ORklHX1BPV0VSX1NVUFBMWT15CiMgQ09O
RklHX1BPV0VSX1NVUFBMWV9ERUJVRyBpcyBub3Qgc2V0CkNPTkZJR19QT1dFUl9TVVBQTFlfSFdN
T049eQojIENPTkZJR19QREFfUE9XRVIgaXMgbm90IHNldAojIENPTkZJR19HRU5FUklDX0FEQ19C
QVRURVJZIGlzIG5vdCBzZXQKIyBDT05GSUdfVEVTVF9QT1dFUiBpcyBub3Qgc2V0CiMgQ09ORklH
X0NIQVJHRVJfQURQNTA2MSBpcyBub3Qgc2V0CiMgQ09ORklHX0JBVFRFUllfRFMyNzgwIGlzIG5v
dCBzZXQKIyBDT05GSUdfQkFUVEVSWV9EUzI3ODEgaXMgbm90IHNldAojIENPTkZJR19CQVRURVJZ
X0RTMjc4MiBpcyBub3Qgc2V0CiMgQ09ORklHX0JBVFRFUllfTEVHT19FVjMgaXMgbm90IHNldApD
T05GSUdfQkFUVEVSWV9TQlM9bQojIENPTkZJR19DSEFSR0VSX1NCUyBpcyBub3Qgc2V0CiMgQ09O
RklHX01BTkFHRVJfU0JTIGlzIG5vdCBzZXQKQ09ORklHX0JBVFRFUllfQlEyN1hYWD15CkNPTkZJ
R19CQVRURVJZX0JRMjdYWFhfSTJDPXkKIyBDT05GSUdfQkFUVEVSWV9CUTI3WFhYX0RUX1VQREFU
RVNfTlZNIGlzIG5vdCBzZXQKIyBDT05GSUdfQVhQMjBYX1BPV0VSIGlzIG5vdCBzZXQKIyBDT05G
SUdfQVhQMjg4X0ZVRUxfR0FVR0UgaXMgbm90IHNldAojIENPTkZJR19CQVRURVJZX01BWDE3MDQw
IGlzIG5vdCBzZXQKIyBDT05GSUdfQkFUVEVSWV9NQVgxNzA0MiBpcyBub3Qgc2V0CiMgQ09ORklH
X0NIQVJHRVJfSVNQMTcwNCBpcyBub3Qgc2V0CiMgQ09ORklHX0NIQVJHRVJfTUFYODkwMyBpcyBu
b3Qgc2V0CiMgQ09ORklHX0NIQVJHRVJfTFA4NzI3IGlzIG5vdCBzZXQKIyBDT05GSUdfQ0hBUkdF
Ul9HUElPIGlzIG5vdCBzZXQKIyBDT05GSUdfQ0hBUkdFUl9NQU5BR0VSIGlzIG5vdCBzZXQKIyBD
T05GSUdfQ0hBUkdFUl9MVDM2NTEgaXMgbm90IHNldAojIENPTkZJR19DSEFSR0VSX0RFVEVDVE9S
X01BWDE0NjU2IGlzIG5vdCBzZXQKIyBDT05GSUdfQ0hBUkdFUl9CUTI0MTVYIGlzIG5vdCBzZXQK
IyBDT05GSUdfQ0hBUkdFUl9CUTI0MTkwIGlzIG5vdCBzZXQKIyBDT05GSUdfQ0hBUkdFUl9CUTI0
MjU3IGlzIG5vdCBzZXQKIyBDT05GSUdfQ0hBUkdFUl9CUTI0NzM1IGlzIG5vdCBzZXQKIyBDT05G
SUdfQ0hBUkdFUl9CUTI1ODkwIGlzIG5vdCBzZXQKIyBDT05GSUdfQ0hBUkdFUl9TTUIzNDcgaXMg
bm90IHNldAojIENPTkZJR19CQVRURVJZX0dBVUdFX0xUQzI5NDEgaXMgbm90IHNldAojIENPTkZJ
R19DSEFSR0VSX1JUOTQ1NSBpcyBub3Qgc2V0CiMgQ09ORklHX0NIQVJHRVJfQ1JPU19VU0JQRCBp
cyBub3Qgc2V0CiMgQ09ORklHX0NIQVJHRVJfVUNTMTAwMiBpcyBub3Qgc2V0CkNPTkZJR19IV01P
Tj15CiMgQ09ORklHX0hXTU9OX0RFQlVHX0NISVAgaXMgbm90IHNldAoKIwojIE5hdGl2ZSBkcml2
ZXJzCiMKIyBDT05GSUdfU0VOU09SU19BRDczMTQgaXMgbm90IHNldAojIENPTkZJR19TRU5TT1JT
X0FENzQxNCBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfQUQ3NDE4IGlzIG5vdCBzZXQKIyBD
T05GSUdfU0VOU09SU19BRE0xMDIxIGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU09SU19BRE0xMDI1
IGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU09SU19BRE0xMDI2IGlzIG5vdCBzZXQKIyBDT05GSUdf
U0VOU09SU19BRE0xMDI5IGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU09SU19BRE0xMDMxIGlzIG5v
dCBzZXQKIyBDT05GSUdfU0VOU09SU19BRE05MjQwIGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU09S
U19BRFQ3MzEwIGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU09SU19BRFQ3NDEwIGlzIG5vdCBzZXQK
IyBDT05GSUdfU0VOU09SU19BRFQ3NDExIGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU09SU19BRFQ3
NDYyIGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU09SU19BRFQ3NDcwIGlzIG5vdCBzZXQKIyBDT05G
SUdfU0VOU09SU19BRFQ3NDc1IGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU09SU19BUzM3MCBpcyBu
b3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfQVNDNzYyMSBpcyBub3Qgc2V0CkNPTkZJR19TRU5TT1JT
X0FSTV9TQ1BJPXkKIyBDT05GSUdfU0VOU09SU19BU1BFRUQgaXMgbm90IHNldAojIENPTkZJR19T
RU5TT1JTX0FUWFAxIGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU09SU19EUzYyMCBpcyBub3Qgc2V0
CiMgQ09ORklHX1NFTlNPUlNfRFMxNjIxIGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU09SU19JNUtf
QU1CIGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU09SU19GNzE4MDVGIGlzIG5vdCBzZXQKIyBDT05G
SUdfU0VOU09SU19GNzE4ODJGRyBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfRjc1Mzc1UyBp
cyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfRlRTVEVVVEFURVMgaXMgbm90IHNldAojIENPTkZJ
R19TRU5TT1JTX0dMNTE4U00gaXMgbm90IHNldAojIENPTkZJR19TRU5TT1JTX0dMNTIwU00gaXMg
bm90IHNldAojIENPTkZJR19TRU5TT1JTX0c3NjBBIGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU09S
U19HNzYyIGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU09SU19HUElPX0ZBTiBpcyBub3Qgc2V0CiMg
Q09ORklHX1NFTlNPUlNfSElINjEzMCBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfSUJNQUVN
IGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU09SU19JQk1QRVggaXMgbm90IHNldAojIENPTkZJR19T
RU5TT1JTX0lJT19IV01PTiBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfSVQ4NyBpcyBub3Qg
c2V0CiMgQ09ORklHX1NFTlNPUlNfSkM0MiBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfUE9X
UjEyMjAgaXMgbm90IHNldAojIENPTkZJR19TRU5TT1JTX0xJTkVBR0UgaXMgbm90IHNldAojIENP
TkZJR19TRU5TT1JTX0xUQzI5NDUgaXMgbm90IHNldAojIENPTkZJR19TRU5TT1JTX0xUQzI5OTAg
aXMgbm90IHNldAojIENPTkZJR19TRU5TT1JTX0xUQzQxNTEgaXMgbm90IHNldAojIENPTkZJR19T
RU5TT1JTX0xUQzQyMTUgaXMgbm90IHNldAojIENPTkZJR19TRU5TT1JTX0xUQzQyMjIgaXMgbm90
IHNldAojIENPTkZJR19TRU5TT1JTX0xUQzQyNDUgaXMgbm90IHNldAojIENPTkZJR19TRU5TT1JT
X0xUQzQyNjAgaXMgbm90IHNldAojIENPTkZJR19TRU5TT1JTX0xUQzQyNjEgaXMgbm90IHNldAoj
IENPTkZJR19TRU5TT1JTX01BWDExMTEgaXMgbm90IHNldAojIENPTkZJR19TRU5TT1JTX01BWDE2
MDY1IGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU09SU19NQVgxNjE5IGlzIG5vdCBzZXQKIyBDT05G
SUdfU0VOU09SU19NQVgxNjY4IGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU09SU19NQVgxNzEzNSBp
cyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfTUFYMTk3IGlzIG5vdCBzZXQKIyBDT05GSUdfU0VO
U09SU19NQVgzMTcyMiBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfTUFYNjYyMSBpcyBub3Qg
c2V0CiMgQ09ORklHX1NFTlNPUlNfTUFYNjYzOSBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNf
TUFYNjY0MiBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfTUFYNjY1MCBpcyBub3Qgc2V0CiMg
Q09ORklHX1NFTlNPUlNfTUFYNjY5NyBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfTUFYMzE3
OTAgaXMgbm90IHNldAojIENPTkZJR19TRU5TT1JTX01DUDMwMjEgaXMgbm90IHNldAojIENPTkZJ
R19TRU5TT1JTX1RDNjU0IGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU09SU19BRENYWCBpcyBub3Qg
c2V0CiMgQ09ORklHX1NFTlNPUlNfTE02MyBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfTE03
MCBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfTE03MyBpcyBub3Qgc2V0CiMgQ09ORklHX1NF
TlNPUlNfTE03NSBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfTE03NyBpcyBub3Qgc2V0CiMg
Q09ORklHX1NFTlNPUlNfTE03OCBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfTE04MCBpcyBu
b3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfTE04MyBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNf
TE04NSBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfTE04NyBpcyBub3Qgc2V0CkNPTkZJR19T
RU5TT1JTX0xNOTA9bQojIENPTkZJR19TRU5TT1JTX0xNOTIgaXMgbm90IHNldAojIENPTkZJR19T
RU5TT1JTX0xNOTMgaXMgbm90IHNldAojIENPTkZJR19TRU5TT1JTX0xNOTUyMzQgaXMgbm90IHNl
dAojIENPTkZJR19TRU5TT1JTX0xNOTUyNDEgaXMgbm90IHNldAojIENPTkZJR19TRU5TT1JTX0xN
OTUyNDUgaXMgbm90IHNldAojIENPTkZJR19TRU5TT1JTX1BDODczNjAgaXMgbm90IHNldAojIENP
TkZJR19TRU5TT1JTX1BDODc0MjcgaXMgbm90IHNldAojIENPTkZJR19TRU5TT1JTX05UQ19USEVS
TUlTVE9SIGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU09SU19OQ1Q2NjgzIGlzIG5vdCBzZXQKIyBD
T05GSUdfU0VOU09SU19OQ1Q2Nzc1IGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU09SU19OQ1Q3ODAy
IGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU09SU19OQ1Q3OTA0IGlzIG5vdCBzZXQKIyBDT05GSUdf
U0VOU09SU19OUENNN1hYIGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU09SU19PQ0NfUDhfSTJDIGlz
IG5vdCBzZXQKIyBDT05GSUdfU0VOU09SU19QQ0Y4NTkxIGlzIG5vdCBzZXQKIyBDT05GSUdfUE1C
VVMgaXMgbm90IHNldApDT05GSUdfU0VOU09SU19QV01fRkFOPW0KIyBDT05GSUdfU0VOU09SU19T
SFQxNSBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfU0hUMjEgaXMgbm90IHNldAojIENPTkZJ
R19TRU5TT1JTX1NIVDN4IGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU09SU19TSFRDMSBpcyBub3Qg
c2V0CiMgQ09ORklHX1NFTlNPUlNfU0lTNTU5NSBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNf
RE1FMTczNyBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfRU1DMTQwMyBpcyBub3Qgc2V0CiMg
Q09ORklHX1NFTlNPUlNfRU1DMjEwMyBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfRU1DNlcy
MDEgaXMgbm90IHNldAojIENPTkZJR19TRU5TT1JTX1NNU0M0N00xIGlzIG5vdCBzZXQKIyBDT05G
SUdfU0VOU09SU19TTVNDNDdNMTkyIGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU09SU19TTVNDNDdC
Mzk3IGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU09SU19TQ0g1NjI3IGlzIG5vdCBzZXQKIyBDT05G
SUdfU0VOU09SU19TQ0g1NjM2IGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU09SU19TVFRTNzUxIGlz
IG5vdCBzZXQKIyBDT05GSUdfU0VOU09SU19TTU02NjUgaXMgbm90IHNldAojIENPTkZJR19TRU5T
T1JTX0FEQzEyOEQ4MTggaXMgbm90IHNldAojIENPTkZJR19TRU5TT1JTX0FEUzc4MjggaXMgbm90
IHNldAojIENPTkZJR19TRU5TT1JTX0FEUzc4NzEgaXMgbm90IHNldAojIENPTkZJR19TRU5TT1JT
X0FNQzY4MjEgaXMgbm90IHNldAojIENPTkZJR19TRU5TT1JTX0lOQTIwOSBpcyBub3Qgc2V0CkNP
TkZJR19TRU5TT1JTX0lOQTJYWD1tCkNPTkZJR19TRU5TT1JTX0lOQTMyMjE9bQojIENPTkZJR19T
RU5TT1JTX1RDNzQgaXMgbm90IHNldAojIENPTkZJR19TRU5TT1JTX1RITUM1MCBpcyBub3Qgc2V0
CiMgQ09ORklHX1NFTlNPUlNfVE1QMTAyIGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU09SU19UTVAx
MDMgaXMgbm90IHNldAojIENPTkZJR19TRU5TT1JTX1RNUDEwOCBpcyBub3Qgc2V0CiMgQ09ORklH
X1NFTlNPUlNfVE1QNDAxIGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU09SU19UTVA0MjEgaXMgbm90
IHNldAojIENPTkZJR19TRU5TT1JTX1ZFWFBSRVNTIGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU09S
U19WSUE2ODZBIGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU09SU19WVDEyMTEgaXMgbm90IHNldAoj
IENPTkZJR19TRU5TT1JTX1ZUODIzMSBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfVzgzNzcz
RyBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfVzgzNzgxRCBpcyBub3Qgc2V0CiMgQ09ORklH
X1NFTlNPUlNfVzgzNzkxRCBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfVzgzNzkyRCBpcyBu
b3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfVzgzNzkzIGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU09S
U19XODM3OTUgaXMgbm90IHNldAojIENPTkZJR19TRU5TT1JTX1c4M0w3ODVUUyBpcyBub3Qgc2V0
CiMgQ09ORklHX1NFTlNPUlNfVzgzTDc4Nk5HIGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU09SU19X
ODM2MjdIRiBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfVzgzNjI3RUhGIGlzIG5vdCBzZXQK
IyBDT05GSUdfU0VOU09SU19YR0VORSBpcyBub3Qgc2V0CgojCiMgQUNQSSBkcml2ZXJzCiMKIyBD
T05GSUdfU0VOU09SU19BQ1BJX1BPV0VSIGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU09SU19NQUcz
MTEwIGlzIG5vdCBzZXQKQ09ORklHX01YQ19NTUE4NDUxPXkKQ09ORklHX1RIRVJNQUw9eQojIENP
TkZJR19USEVSTUFMX1NUQVRJU1RJQ1MgaXMgbm90IHNldApDT05GSUdfVEhFUk1BTF9FTUVSR0VO
Q1lfUE9XRVJPRkZfREVMQVlfTVM9MApDT05GSUdfVEhFUk1BTF9IV01PTj15CkNPTkZJR19USEVS
TUFMX09GPXkKQ09ORklHX1RIRVJNQUxfV1JJVEFCTEVfVFJJUFM9eQpDT05GSUdfVEhFUk1BTF9E
RUZBVUxUX0dPVl9TVEVQX1dJU0U9eQojIENPTkZJR19USEVSTUFMX0RFRkFVTFRfR09WX0ZBSVJf
U0hBUkUgaXMgbm90IHNldAojIENPTkZJR19USEVSTUFMX0RFRkFVTFRfR09WX1VTRVJfU1BBQ0Ug
aXMgbm90IHNldAojIENPTkZJR19USEVSTUFMX0RFRkFVTFRfR09WX1BPV0VSX0FMTE9DQVRPUiBp
cyBub3Qgc2V0CiMgQ09ORklHX1RIRVJNQUxfR09WX0ZBSVJfU0hBUkUgaXMgbm90IHNldApDT05G
SUdfVEhFUk1BTF9HT1ZfU1RFUF9XSVNFPXkKIyBDT05GSUdfVEhFUk1BTF9HT1ZfQkFOR19CQU5H
IGlzIG5vdCBzZXQKIyBDT05GSUdfVEhFUk1BTF9HT1ZfVVNFUl9TUEFDRSBpcyBub3Qgc2V0CkNP
TkZJR19USEVSTUFMX0dPVl9QT1dFUl9BTExPQ0FUT1I9eQpDT05GSUdfQ1BVX1RIRVJNQUw9eQoj
IENPTkZJR19DTE9DS19USEVSTUFMIGlzIG5vdCBzZXQKIyBDT05GSUdfREVWRlJFUV9USEVSTUFM
IGlzIG5vdCBzZXQKQ09ORklHX1RIRVJNQUxfRU1VTEFUSU9OPXkKIyBDT05GSUdfVEhFUk1BTF9N
TUlPIGlzIG5vdCBzZXQKIyBDT05GSUdfSU1YX1RIRVJNQUwgaXMgbm90IHNldApDT05GSUdfSU1Y
X1NDX1RIRVJNQUw9eQpDT05GSUdfREVWSUNFX1RIRVJNQUw9eQpDT05GSUdfSU1YOE1NX1RIRVJN
QUw9eQojIENPTkZJR19NQVg3NzYyMF9USEVSTUFMIGlzIG5vdCBzZXQKQ09ORklHX1FPUklRX1RI
RVJNQUw9eQojIENPTkZJR19HRU5FUklDX0FEQ19USEVSTUFMIGlzIG5vdCBzZXQKQ09ORklHX1dB
VENIRE9HPXkKQ09ORklHX1dBVENIRE9HX0NPUkU9eQojIENPTkZJR19XQVRDSERPR19OT1dBWU9V
VCBpcyBub3Qgc2V0CkNPTkZJR19XQVRDSERPR19IQU5ETEVfQk9PVF9FTkFCTEVEPXkKQ09ORklH
X1dBVENIRE9HX09QRU5fVElNRU9VVD0wCiMgQ09ORklHX1dBVENIRE9HX1NZU0ZTIGlzIG5vdCBz
ZXQKCiMKIyBXYXRjaGRvZyBQcmV0aW1lb3V0IEdvdmVybm9ycwojCiMgQ09ORklHX1dBVENIRE9H
X1BSRVRJTUVPVVRfR09WIGlzIG5vdCBzZXQKCiMKIyBXYXRjaGRvZyBEZXZpY2UgRHJpdmVycwoj
CiMgQ09ORklHX1NPRlRfV0FUQ0hET0cgaXMgbm90IHNldAojIENPTkZJR19HUElPX1dBVENIRE9H
IGlzIG5vdCBzZXQKIyBDT05GSUdfV0RBVF9XRFQgaXMgbm90IHNldAojIENPTkZJR19YSUxJTlhf
V0FUQ0hET0cgaXMgbm90IHNldAojIENPTkZJR19aSUlSQVZFX1dBVENIRE9HIGlzIG5vdCBzZXQK
Q09ORklHX0FSTV9TUDgwNV9XQVRDSERPRz15CkNPTkZJR19BUk1fU0JTQV9XQVRDSERPRz15CiMg
Q09ORklHX0NBREVOQ0VfV0FUQ0hET0cgaXMgbm90IHNldApDT05GSUdfRFdfV0FUQ0hET0c9eQoj
IENPTkZJR19NQVg2M1hYX1dBVENIRE9HIGlzIG5vdCBzZXQKIyBDT05GSUdfTUFYNzc2MjBfV0FU
Q0hET0cgaXMgbm90IHNldApDT05GSUdfSU1YMl9XRFQ9eQpDT05GSUdfSU1YX1NDX1dEVD15CiMg
Q09ORklHX0lNWDdVTFBfV0RUIGlzIG5vdCBzZXQKIyBDT05GSUdfQUxJTTcxMDFfV0RUIGlzIG5v
dCBzZXQKIyBDT05GSUdfSTYzMDBFU0JfV0RUIGlzIG5vdCBzZXQKIyBDT05GSUdfTUVOX0EyMV9X
RFQgaXMgbm90IHNldApDT05GSUdfWEVOX1dEVD15CgojCiMgUENJLWJhc2VkIFdhdGNoZG9nIENh
cmRzCiMKIyBDT05GSUdfUENJUENXQVRDSERPRyBpcyBub3Qgc2V0CiMgQ09ORklHX1dEVFBDSSBp
cyBub3Qgc2V0CgojCiMgVVNCLWJhc2VkIFdhdGNoZG9nIENhcmRzCiMKIyBDT05GSUdfVVNCUENX
QVRDSERPRyBpcyBub3Qgc2V0CkNPTkZJR19TU0JfUE9TU0lCTEU9eQojIENPTkZJR19TU0IgaXMg
bm90IHNldApDT05GSUdfQkNNQV9QT1NTSUJMRT15CiMgQ09ORklHX0JDTUEgaXMgbm90IHNldAoK
IwojIE11bHRpZnVuY3Rpb24gZGV2aWNlIGRyaXZlcnMKIwpDT05GSUdfTUZEX0NPUkU9eQojIENP
TkZJR19NRkRfQUNUODk0NUEgaXMgbm90IHNldAojIENPTkZJR19NRkRfQVMzNzExIGlzIG5vdCBz
ZXQKIyBDT05GSUdfTUZEX0FTMzcyMiBpcyBub3Qgc2V0CiMgQ09ORklHX1BNSUNfQURQNTUyMCBp
cyBub3Qgc2V0CiMgQ09ORklHX01GRF9BQVQyODcwX0NPUkUgaXMgbm90IHNldAojIENPTkZJR19N
RkRfQVRNRUxfRkxFWENPTSBpcyBub3Qgc2V0CiMgQ09ORklHX01GRF9BVE1FTF9ITENEQyBpcyBu
b3Qgc2V0CiMgQ09ORklHX01GRF9CQ001OTBYWCBpcyBub3Qgc2V0CkNPTkZJR19NRkRfQkQ5NTcx
TVdWPXkKQ09ORklHX01GRF9BWFAyMFg9eQpDT05GSUdfTUZEX0FYUDIwWF9JMkM9eQpDT05GSUdf
TUZEX0NST1NfRUNfREVWPXkKIyBDT05GSUdfTUZEX01BREVSQSBpcyBub3Qgc2V0CiMgQ09ORklH
X1BNSUNfREE5MDNYIGlzIG5vdCBzZXQKIyBDT05GSUdfTUZEX0RBOTA1Ml9TUEkgaXMgbm90IHNl
dAojIENPTkZJR19NRkRfREE5MDUyX0kyQyBpcyBub3Qgc2V0CiMgQ09ORklHX01GRF9EQTkwNTUg
aXMgbm90IHNldAojIENPTkZJR19NRkRfREE5MDYyIGlzIG5vdCBzZXQKIyBDT05GSUdfTUZEX0RB
OTA2MyBpcyBub3Qgc2V0CiMgQ09ORklHX01GRF9EQTkxNTAgaXMgbm90IHNldAojIENPTkZJR19N
RkRfRExOMiBpcyBub3Qgc2V0CiMgQ09ORklHX01GRF9NQzEzWFhYX1NQSSBpcyBub3Qgc2V0CiMg
Q09ORklHX01GRF9NQzEzWFhYX0kyQyBpcyBub3Qgc2V0CiMgQ09ORklHX01GRF9NWENfSERNSSBp
cyBub3Qgc2V0CkNPTkZJR19NRkRfSU1YX0FVRElPTUlYPXkKQ09ORklHX01GRF9ISTY0MjFfUE1J
Qz15CiMgQ09ORklHX0hUQ19QQVNJQzMgaXMgbm90IHNldAojIENPTkZJR19IVENfSTJDUExEIGlz
IG5vdCBzZXQKIyBDT05GSUdfTFBDX0lDSCBpcyBub3Qgc2V0CiMgQ09ORklHX0xQQ19TQ0ggaXMg
bm90IHNldAojIENPTkZJR19NRkRfSkFOWl9DTU9ESU8gaXMgbm90IHNldAojIENPTkZJR19NRkRf
S0VNUExEIGlzIG5vdCBzZXQKIyBDT05GSUdfTUZEXzg4UE04MDAgaXMgbm90IHNldAojIENPTkZJ
R19NRkRfODhQTTgwNSBpcyBub3Qgc2V0CiMgQ09ORklHX01GRF84OFBNODYwWCBpcyBub3Qgc2V0
CiMgQ09ORklHX01GRF9NQVgxNDU3NyBpcyBub3Qgc2V0CiMgQ09ORklHX01GRF9NQVgxNzEzNSBp
cyBub3Qgc2V0CkNPTkZJR19NRkRfTUFYNzc2MjA9eQojIENPTkZJR19NRkRfTUFYNzc2NTAgaXMg
bm90IHNldAojIENPTkZJR19NRkRfTUFYNzc2ODYgaXMgbm90IHNldAojIENPTkZJR19NRkRfTUFY
Nzc2OTMgaXMgbm90IHNldAojIENPTkZJR19NRkRfTUFYNzc4NDMgaXMgbm90IHNldAojIENPTkZJ
R19NRkRfTUFYODkwNyBpcyBub3Qgc2V0CiMgQ09ORklHX01GRF9NQVg4OTI1IGlzIG5vdCBzZXQK
IyBDT05GSUdfTUZEX01BWDg5OTcgaXMgbm90IHNldAojIENPTkZJR19NRkRfTUFYODk5OCBpcyBu
b3Qgc2V0CiMgQ09ORklHX01GRF9NVDYzOTcgaXMgbm90IHNldAojIENPTkZJR19NRkRfTUVORjIx
Qk1DIGlzIG5vdCBzZXQKIyBDT05GSUdfRVpYX1BDQVAgaXMgbm90IHNldAojIENPTkZJR19NRkRf
Q1BDQVAgaXMgbm90IHNldAojIENPTkZJR19NRkRfVklQRVJCT0FSRCBpcyBub3Qgc2V0CiMgQ09O
RklHX01GRF9SRVRVIGlzIG5vdCBzZXQKIyBDT05GSUdfTUZEX1BDRjUwNjMzIGlzIG5vdCBzZXQK
IyBDT05GSUdfTUZEX1JEQzMyMVggaXMgbm90IHNldAojIENPTkZJR19NRkRfUlQ1MDMzIGlzIG5v
dCBzZXQKIyBDT05GSUdfTUZEX1JDNVQ1ODMgaXMgbm90IHNldApDT05GSUdfTUZEX1JLODA4PXkK
IyBDT05GSUdfTUZEX1JONVQ2MTggaXMgbm90IHNldApDT05GSUdfTUZEX1NFQ19DT1JFPXkKIyBD
T05GSUdfTUZEX1NJNDc2WF9DT1JFIGlzIG5vdCBzZXQKIyBDT05GSUdfTUZEX1NNNTAxIGlzIG5v
dCBzZXQKIyBDT05GSUdfTUZEX1NLWTgxNDUyIGlzIG5vdCBzZXQKIyBDT05GSUdfTUZEX1NNU0Mg
aXMgbm90IHNldAojIENPTkZJR19BQlg1MDBfQ09SRSBpcyBub3Qgc2V0CiMgQ09ORklHX01GRF9T
VE1QRSBpcyBub3Qgc2V0CkNPTkZJR19NRkRfU1lTQ09OPXkKIyBDT05GSUdfTUZEX1RJX0FNMzM1
WF9UU0NBREMgaXMgbm90IHNldAojIENPTkZJR19NRkRfTFAzOTQzIGlzIG5vdCBzZXQKIyBDT05G
SUdfTUZEX0xQODc4OCBpcyBub3Qgc2V0CiMgQ09ORklHX01GRF9USV9MTVUgaXMgbm90IHNldAoj
IENPTkZJR19NRkRfUEFMTUFTIGlzIG5vdCBzZXQKIyBDT05GSUdfVFBTNjEwNVggaXMgbm90IHNl
dAojIENPTkZJR19UUFM2NTAxMCBpcyBub3Qgc2V0CiMgQ09ORklHX1RQUzY1MDdYIGlzIG5vdCBz
ZXQKIyBDT05GSUdfTUZEX1RQUzY1MDg2IGlzIG5vdCBzZXQKIyBDT05GSUdfTUZEX1RQUzY1MDkw
IGlzIG5vdCBzZXQKIyBDT05GSUdfTUZEX1RQUzY1MjE3IGlzIG5vdCBzZXQKIyBDT05GSUdfTUZE
X1RQUzY4NDcwIGlzIG5vdCBzZXQKIyBDT05GSUdfTUZEX1RJX0xQODczWCBpcyBub3Qgc2V0CiMg
Q09ORklHX01GRF9USV9MUDg3NTY1IGlzIG5vdCBzZXQKIyBDT05GSUdfTUZEX1RQUzY1MjE4IGlz
IG5vdCBzZXQKIyBDT05GSUdfTUZEX1RQUzY1ODZYIGlzIG5vdCBzZXQKIyBDT05GSUdfTUZEX1RQ
UzY1OTEwIGlzIG5vdCBzZXQKIyBDT05GSUdfTUZEX1RQUzY1OTEyX0kyQyBpcyBub3Qgc2V0CiMg
Q09ORklHX01GRF9UUFM2NTkxMl9TUEkgaXMgbm90IHNldAojIENPTkZJR19NRkRfVFBTODAwMzEg
aXMgbm90IHNldAojIENPTkZJR19UV0w0MDMwX0NPUkUgaXMgbm90IHNldAojIENPTkZJR19UV0w2
MDQwX0NPUkUgaXMgbm90IHNldAojIENPTkZJR19NRkRfV0wxMjczX0NPUkUgaXMgbm90IHNldAoj
IENPTkZJR19NRkRfTE0zNTMzIGlzIG5vdCBzZXQKIyBDT05GSUdfTUZEX1RDMzU4OVggaXMgbm90
IHNldAojIENPTkZJR19NRkRfVFFNWDg2IGlzIG5vdCBzZXQKIyBDT05GSUdfTUZEX1ZYODU1IGlz
IG5vdCBzZXQKIyBDT05GSUdfTUZEX0xPQ0hOQUdBUiBpcyBub3Qgc2V0CiMgQ09ORklHX01GRF9B
UklaT05BX0kyQyBpcyBub3Qgc2V0CiMgQ09ORklHX01GRF9BUklaT05BX1NQSSBpcyBub3Qgc2V0
CiMgQ09ORklHX01GRF9XTTg0MDAgaXMgbm90IHNldAojIENPTkZJR19NRkRfV004MzFYX0kyQyBp
cyBub3Qgc2V0CiMgQ09ORklHX01GRF9XTTgzMVhfU1BJIGlzIG5vdCBzZXQKIyBDT05GSUdfTUZE
X1dNODM1MF9JMkMgaXMgbm90IHNldAojIENPTkZJR19NRkRfV004OTk0IGlzIG5vdCBzZXQKQ09O
RklHX01GRF9ST0hNX0JENzE4WFg9eQojIENPTkZJR19NRkRfUk9ITV9CRDcwNTI4IGlzIG5vdCBz
ZXQKIyBDT05GSUdfTUZEX1NUUE1JQzEgaXMgbm90IHNldAojIENPTkZJR19NRkRfU1RNRlggaXMg
bm90IHNldApDT05GSUdfTUZEX1BDQTk0NTA9eQpDT05GSUdfTUZEX1ZFWFBSRVNTX1NZU1JFRz15
CiMgQ09ORklHX1JBVkVfU1BfQ09SRSBpcyBub3Qgc2V0CiMgZW5kIG9mIE11bHRpZnVuY3Rpb24g
ZGV2aWNlIGRyaXZlcnMKCkNPTkZJR19SRUdVTEFUT1I9eQojIENPTkZJR19SRUdVTEFUT1JfREVC
VUcgaXMgbm90IHNldApDT05GSUdfUkVHVUxBVE9SX0ZJWEVEX1ZPTFRBR0U9eQojIENPTkZJR19S
RUdVTEFUT1JfVklSVFVBTF9DT05TVU1FUiBpcyBub3Qgc2V0CiMgQ09ORklHX1JFR1VMQVRPUl9V
U0VSU1BBQ0VfQ09OU1VNRVIgaXMgbm90IHNldAojIENPTkZJR19SRUdVTEFUT1JfODhQRzg2WCBp
cyBub3Qgc2V0CiMgQ09ORklHX1JFR1VMQVRPUl9BQ1Q4ODY1IGlzIG5vdCBzZXQKIyBDT05GSUdf
UkVHVUxBVE9SX0FENTM5OCBpcyBub3Qgc2V0CiMgQ09ORklHX1JFR1VMQVRPUl9BTkFUT1AgaXMg
bm90IHNldApDT05GSUdfUkVHVUxBVE9SX0FYUDIwWD15CkNPTkZJR19SRUdVTEFUT1JfQkQ3MThY
WD15CkNPTkZJR19SRUdVTEFUT1JfQkQ5NTcxTVdWPXkKIyBDT05GSUdfUkVHVUxBVE9SX0RBOTIx
MCBpcyBub3Qgc2V0CiMgQ09ORklHX1JFR1VMQVRPUl9EQTkyMTEgaXMgbm90IHNldApDT05GSUdf
UkVHVUxBVE9SX0ZBTjUzNTU1PXkKQ09ORklHX1JFR1VMQVRPUl9HUElPPXkKIyBDT05GSUdfUkVH
VUxBVE9SX0hJNjQyMSBpcyBub3Qgc2V0CkNPTkZJR19SRUdVTEFUT1JfSEk2NDIxVjUzMD15CiMg
Q09ORklHX1JFR1VMQVRPUl9JU0w5MzA1IGlzIG5vdCBzZXQKIyBDT05GSUdfUkVHVUxBVE9SX0lT
TDYyNzFBIGlzIG5vdCBzZXQKIyBDT05GSUdfUkVHVUxBVE9SX0xQMzk3MSBpcyBub3Qgc2V0CiMg
Q09ORklHX1JFR1VMQVRPUl9MUDM5NzIgaXMgbm90IHNldAojIENPTkZJR19SRUdVTEFUT1JfTFA4
NzJYIGlzIG5vdCBzZXQKIyBDT05GSUdfUkVHVUxBVE9SX0xQODc1NSBpcyBub3Qgc2V0CiMgQ09O
RklHX1JFR1VMQVRPUl9MVEMzNTg5IGlzIG5vdCBzZXQKIyBDT05GSUdfUkVHVUxBVE9SX0xUQzM2
NzYgaXMgbm90IHNldAojIENPTkZJR19SRUdVTEFUT1JfTUFYMTU4NiBpcyBub3Qgc2V0CkNPTkZJ
R19SRUdVTEFUT1JfTUFYNzc2MjA9eQojIENPTkZJR19SRUdVTEFUT1JfTUFYODY0OSBpcyBub3Qg
c2V0CiMgQ09ORklHX1JFR1VMQVRPUl9NQVg4NjYwIGlzIG5vdCBzZXQKIyBDT05GSUdfUkVHVUxB
VE9SX01BWDg5NTIgaXMgbm90IHNldApDT05GSUdfUkVHVUxBVE9SX01BWDg5NzM9eQojIENPTkZJ
R19SRUdVTEFUT1JfTUNQMTY1MDIgaXMgbm90IHNldAojIENPTkZJR19SRUdVTEFUT1JfTVQ2MzEx
IGlzIG5vdCBzZXQKQ09ORklHX1JFR1VMQVRPUl9QQ0E5NDUwPXkKIyBDT05GSUdfUkVHVUxBVE9S
X1BGMTU1MF9SUE1TRyBpcyBub3Qgc2V0CkNPTkZJR19SRUdVTEFUT1JfUEZVWkUxMDA9eQojIENP
TkZJR19SRUdVTEFUT1JfUFY4ODA2MCBpcyBub3Qgc2V0CiMgQ09ORklHX1JFR1VMQVRPUl9QVjg4
MDgwIGlzIG5vdCBzZXQKIyBDT05GSUdfUkVHVUxBVE9SX1BWODgwOTAgaXMgbm90IHNldApDT05G
SUdfUkVHVUxBVE9SX1BXTT15CkNPTkZJR19SRUdVTEFUT1JfUUNPTV9TUE1JPXkKQ09ORklHX1JF
R1VMQVRPUl9SSzgwOD15CiMgQ09ORklHX1JFR1VMQVRPUl9TMk1QQTAxIGlzIG5vdCBzZXQKQ09O
RklHX1JFR1VMQVRPUl9TMk1QUzExPXkKIyBDT05GSUdfUkVHVUxBVE9SX1M1TTg3NjcgaXMgbm90
IHNldAojIENPTkZJR19SRUdVTEFUT1JfU0xHNTEwMDAgaXMgbm90IHNldAojIENPTkZJR19SRUdV
TEFUT1JfU1k4MTA2QSBpcyBub3Qgc2V0CiMgQ09ORklHX1JFR1VMQVRPUl9TWTg4MjRYIGlzIG5v
dCBzZXQKIyBDT05GSUdfUkVHVUxBVE9SX1RQUzUxNjMyIGlzIG5vdCBzZXQKIyBDT05GSUdfUkVH
VUxBVE9SX1RQUzYyMzYwIGlzIG5vdCBzZXQKIyBDT05GSUdfUkVHVUxBVE9SX1RQUzY1MDIzIGlz
IG5vdCBzZXQKIyBDT05GSUdfUkVHVUxBVE9SX1RQUzY1MDdYIGlzIG5vdCBzZXQKIyBDT05GSUdf
UkVHVUxBVE9SX1RQUzY1MTMyIGlzIG5vdCBzZXQKIyBDT05GSUdfUkVHVUxBVE9SX1RQUzY1MjRY
IGlzIG5vdCBzZXQKQ09ORklHX1JFR1VMQVRPUl9WQ1RSTD1tCiMgQ09ORklHX1JFR1VMQVRPUl9W
RVhQUkVTUyBpcyBub3Qgc2V0CkNPTkZJR19DRUNfQ09SRT15CkNPTkZJR19DRUNfTk9USUZJRVI9
eQpDT05GSUdfUkNfQ09SRT1tCkNPTkZJR19SQ19NQVA9bQojIENPTkZJR19MSVJDIGlzIG5vdCBz
ZXQKQ09ORklHX1JDX0RFQ09ERVJTPXkKIyBDT05GSUdfSVJfTkVDX0RFQ09ERVIgaXMgbm90IHNl
dAojIENPTkZJR19JUl9SQzVfREVDT0RFUiBpcyBub3Qgc2V0CiMgQ09ORklHX0lSX1JDNl9ERUNP
REVSIGlzIG5vdCBzZXQKIyBDT05GSUdfSVJfSlZDX0RFQ09ERVIgaXMgbm90IHNldAojIENPTkZJ
R19JUl9TT05ZX0RFQ09ERVIgaXMgbm90IHNldAojIENPTkZJR19JUl9TQU5ZT19ERUNPREVSIGlz
IG5vdCBzZXQKIyBDT05GSUdfSVJfU0hBUlBfREVDT0RFUiBpcyBub3Qgc2V0CiMgQ09ORklHX0lS
X01DRV9LQkRfREVDT0RFUiBpcyBub3Qgc2V0CiMgQ09ORklHX0lSX1hNUF9ERUNPREVSIGlzIG5v
dCBzZXQKIyBDT05GSUdfSVJfSU1PTl9ERUNPREVSIGlzIG5vdCBzZXQKIyBDT05GSUdfSVJfUkNN
TV9ERUNPREVSIGlzIG5vdCBzZXQKQ09ORklHX1JDX0RFVklDRVM9eQojIENPTkZJR19SQ19BVElf
UkVNT1RFIGlzIG5vdCBzZXQKIyBDT05GSUdfSVJfRU5FIGlzIG5vdCBzZXQKIyBDT05GSUdfSVJf
SElYNUhEMiBpcyBub3Qgc2V0CiMgQ09ORklHX0lSX0lNT04gaXMgbm90IHNldAojIENPTkZJR19J
Ul9JTU9OX1JBVyBpcyBub3Qgc2V0CiMgQ09ORklHX0lSX01DRVVTQiBpcyBub3Qgc2V0CiMgQ09O
RklHX0lSX0lURV9DSVIgaXMgbm90IHNldAojIENPTkZJR19JUl9GSU5URUsgaXMgbm90IHNldAoj
IENPTkZJR19JUl9OVVZPVE9OIGlzIG5vdCBzZXQKIyBDT05GSUdfSVJfUkVEUkFUMyBpcyBub3Qg
c2V0CiMgQ09ORklHX0lSX1NUUkVBTVpBUCBpcyBub3Qgc2V0CiMgQ09ORklHX0lSX0lHT1JQTFVH
VVNCIGlzIG5vdCBzZXQKIyBDT05GSUdfSVJfSUdVQU5BIGlzIG5vdCBzZXQKIyBDT05GSUdfSVJf
VFRVU0JJUiBpcyBub3Qgc2V0CiMgQ09ORklHX1JDX0xPT1BCQUNLIGlzIG5vdCBzZXQKIyBDT05G
SUdfSVJfR1BJT19DSVIgaXMgbm90IHNldAojIENPTkZJR19JUl9TRVJJQUwgaXMgbm90IHNldAoj
IENPTkZJR19JUl9TSVIgaXMgbm90IHNldAojIENPTkZJR19SQ19YQk9YX0RWRCBpcyBub3Qgc2V0
CkNPTkZJR19NRURJQV9TVVBQT1JUPXkKCiMKIyBNdWx0aW1lZGlhIGNvcmUgc3VwcG9ydAojCkNP
TkZJR19NRURJQV9DQU1FUkFfU1VQUE9SVD15CkNPTkZJR19NRURJQV9BTkFMT0dfVFZfU1VQUE9S
VD15CkNPTkZJR19NRURJQV9ESUdJVEFMX1RWX1NVUFBPUlQ9eQojIENPTkZJR19NRURJQV9SQURJ
T19TVVBQT1JUIGlzIG5vdCBzZXQKIyBDT05GSUdfTUVESUFfU0RSX1NVUFBPUlQgaXMgbm90IHNl
dAojIENPTkZJR19NRURJQV9DRUNfU1VQUE9SVCBpcyBub3Qgc2V0CkNPTkZJR19NRURJQV9DT05U
Uk9MTEVSPXkKIyBDT05GSUdfTUVESUFfQ09OVFJPTExFUl9EVkIgaXMgbm90IHNldAojIENPTkZJ
R19NRURJQV9DT05UUk9MTEVSX1JFUVVFU1RfQVBJIGlzIG5vdCBzZXQKQ09ORklHX1ZJREVPX0RF
Vj15CkNPTkZJR19WSURFT19WNEwyX1NVQkRFVl9BUEk9eQpDT05GSUdfVklERU9fVjRMMj15CkNP
TkZJR19WSURFT19WNEwyX0kyQz15CiMgQ09ORklHX1ZJREVPX0FEVl9ERUJVRyBpcyBub3Qgc2V0
CiMgQ09ORklHX1ZJREVPX0ZJWEVEX01JTk9SX1JBTkdFUyBpcyBub3Qgc2V0CkNPTkZJR19WNEwy
X01FTTJNRU1fREVWPXkKQ09ORklHX1Y0TDJfRldOT0RFPXkKQ09ORklHX0RWQl9DT1JFPXkKIyBD
T05GSUdfRFZCX01NQVAgaXMgbm90IHNldAojIENPTkZJR19EVkJfTkVUIGlzIG5vdCBzZXQKQ09O
RklHX0RWQl9NQVhfQURBUFRFUlM9MTYKIyBDT05GSUdfRFZCX0RZTkFNSUNfTUlOT1JTIGlzIG5v
dCBzZXQKIyBDT05GSUdfRFZCX0RFTVVYX1NFQ1RJT05fTE9TU19MT0cgaXMgbm90IHNldAojIENP
TkZJR19EVkJfVUxFX0RFQlVHIGlzIG5vdCBzZXQKCiMKIyBNZWRpYSBkcml2ZXJzCiMKQ09ORklH
X01FRElBX1VTQl9TVVBQT1JUPXkKCiMKIyBXZWJjYW0gZGV2aWNlcwojCkNPTkZJR19VU0JfVklE
RU9fQ0xBU1M9bQpDT05GSUdfVVNCX1ZJREVPX0NMQVNTX0lOUFVUX0VWREVWPXkKQ09ORklHX1VT
Ql9HU1BDQT1tCiMgQ09ORklHX1VTQl9NNTYwMiBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9TVFYw
NlhYIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX0dMODYwIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNC
X0dTUENBX0JFTlEgaXMgbm90IHNldAojIENPTkZJR19VU0JfR1NQQ0FfQ09ORVggaXMgbm90IHNl
dAojIENPTkZJR19VU0JfR1NQQ0FfQ1BJQTEgaXMgbm90IHNldAojIENPTkZJR19VU0JfR1NQQ0Ff
RFRDUzAzMyBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9HU1BDQV9FVE9NUyBpcyBub3Qgc2V0CiMg
Q09ORklHX1VTQl9HU1BDQV9GSU5FUElYIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX0dTUENBX0pF
SUxJTkogaXMgbm90IHNldAojIENPTkZJR19VU0JfR1NQQ0FfSkwyMDA1QkNEIGlzIG5vdCBzZXQK
IyBDT05GSUdfVVNCX0dTUENBX0tJTkVDVCBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9HU1BDQV9L
T05JQ0EgaXMgbm90IHNldAojIENPTkZJR19VU0JfR1NQQ0FfTUFSUyBpcyBub3Qgc2V0CiMgQ09O
RklHX1VTQl9HU1BDQV9NUjk3MzEwQSBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9HU1BDQV9OVzgw
WCBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9HU1BDQV9PVjUxOSBpcyBub3Qgc2V0CiMgQ09ORklH
X1VTQl9HU1BDQV9PVjUzNCBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9HU1BDQV9PVjUzNF85IGlz
IG5vdCBzZXQKIyBDT05GSUdfVVNCX0dTUENBX1BBQzIwNyBpcyBub3Qgc2V0CiMgQ09ORklHX1VT
Ql9HU1BDQV9QQUM3MzAyIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX0dTUENBX1BBQzczMTEgaXMg
bm90IHNldAojIENPTkZJR19VU0JfR1NQQ0FfU0U0MDEgaXMgbm90IHNldAojIENPTkZJR19VU0Jf
R1NQQ0FfU045QzIwMjggaXMgbm90IHNldAojIENPTkZJR19VU0JfR1NQQ0FfU045QzIwWCBpcyBu
b3Qgc2V0CiMgQ09ORklHX1VTQl9HU1BDQV9TT05JWEIgaXMgbm90IHNldAojIENPTkZJR19VU0Jf
R1NQQ0FfU09OSVhKIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX0dTUENBX1NQQ0E1MDAgaXMgbm90
IHNldAojIENPTkZJR19VU0JfR1NQQ0FfU1BDQTUwMSBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9H
U1BDQV9TUENBNTA1IGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX0dTUENBX1NQQ0E1MDYgaXMgbm90
IHNldAojIENPTkZJR19VU0JfR1NQQ0FfU1BDQTUwOCBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9H
U1BDQV9TUENBNTYxIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX0dTUENBX1NQQ0ExNTI4IGlzIG5v
dCBzZXQKIyBDT05GSUdfVVNCX0dTUENBX1NROTA1IGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX0dT
UENBX1NROTA1QyBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9HU1BDQV9TUTkzMFggaXMgbm90IHNl
dAojIENPTkZJR19VU0JfR1NQQ0FfU1RLMDE0IGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX0dTUENB
X1NUSzExMzUgaXMgbm90IHNldAojIENPTkZJR19VU0JfR1NQQ0FfU1RWMDY4MCBpcyBub3Qgc2V0
CiMgQ09ORklHX1VTQl9HU1BDQV9TVU5QTFVTIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX0dTUENB
X1Q2MTMgaXMgbm90IHNldAojIENPTkZJR19VU0JfR1NQQ0FfVE9QUk8gaXMgbm90IHNldAojIENP
TkZJR19VU0JfR1NQQ0FfVE9VUFRFSyBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9HU1BDQV9UVjg1
MzIgaXMgbm90IHNldAojIENPTkZJR19VU0JfR1NQQ0FfVkMwMzJYIGlzIG5vdCBzZXQKIyBDT05G
SUdfVVNCX0dTUENBX1ZJQ0FNIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX0dTUENBX1hJUkxJTktf
Q0lUIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX0dTUENBX1pDM1hYIGlzIG5vdCBzZXQKIyBDT05G
SUdfVVNCX1BXQyBpcyBub3Qgc2V0CiMgQ09ORklHX1ZJREVPX0NQSUEyIGlzIG5vdCBzZXQKIyBD
T05GSUdfVVNCX1pSMzY0WFggaXMgbm90IHNldAojIENPTkZJR19VU0JfU1RLV0VCQ0FNIGlzIG5v
dCBzZXQKIyBDT05GSUdfVVNCX1MyMjU1IGlzIG5vdCBzZXQKIyBDT05GSUdfVklERU9fVVNCVFYg
aXMgbm90IHNldAoKIwojIEFuYWxvZyBUViBVU0IgZGV2aWNlcwojCiMgQ09ORklHX1ZJREVPX1BW
UlVTQjIgaXMgbm90IHNldAojIENPTkZJR19WSURFT19IRFBWUiBpcyBub3Qgc2V0CiMgQ09ORklH
X1ZJREVPX1VTQlZJU0lPTiBpcyBub3Qgc2V0CiMgQ09ORklHX1ZJREVPX1NUSzExNjBfQ09NTU9O
IGlzIG5vdCBzZXQKIyBDT05GSUdfVklERU9fR083MDA3IGlzIG5vdCBzZXQKCiMKIyBBbmFsb2cv
ZGlnaXRhbCBUViBVU0IgZGV2aWNlcwojCiMgQ09ORklHX1ZJREVPX0FVMDgyOCBpcyBub3Qgc2V0
CiMgQ09ORklHX1ZJREVPX0NYMjMxWFggaXMgbm90IHNldAojIENPTkZJR19WSURFT19UTTYwMDAg
aXMgbm90IHNldAoKIwojIERpZ2l0YWwgVFYgVVNCIGRldmljZXMKIwojIENPTkZJR19EVkJfVVNC
IGlzIG5vdCBzZXQKIyBDT05GSUdfRFZCX1VTQl9WMiBpcyBub3Qgc2V0CiMgQ09ORklHX0RWQl9U
VFVTQl9CVURHRVQgaXMgbm90IHNldAojIENPTkZJR19EVkJfVFRVU0JfREVDIGlzIG5vdCBzZXQK
IyBDT05GSUdfU01TX1VTQl9EUlYgaXMgbm90IHNldAojIENPTkZJR19EVkJfQjJDMl9GTEVYQ09Q
X1VTQiBpcyBub3Qgc2V0CiMgQ09ORklHX0RWQl9BUzEwMiBpcyBub3Qgc2V0CgojCiMgV2ViY2Ft
LCBUViAoYW5hbG9nL2RpZ2l0YWwpIFVTQiBkZXZpY2VzCiMKIyBDT05GSUdfVklERU9fRU0yOFhY
IGlzIG5vdCBzZXQKIyBDT05GSUdfTUVESUFfUENJX1NVUFBPUlQgaXMgbm90IHNldApDT05GSUdf
VjRMX1BMQVRGT1JNX0RSSVZFUlM9eQojIENPTkZJR19WSURFT19DQUZFX0NDSUMgaXMgbm90IHNl
dAojIENPTkZJR19WSURFT19DQURFTkNFIGlzIG5vdCBzZXQKIyBDT05GSUdfVklERU9fQVNQRUVE
IGlzIG5vdCBzZXQKIyBDT05GSUdfVklERU9fTVVYIGlzIG5vdCBzZXQKQ09ORklHX1ZJREVPX01Y
OF9DQVBUVVJFPXkKQ09ORklHX1ZJREVPX01YQ19DQVBUVVJFPXkKIyBDT05GSUdfVklERU9fTVhD
X09VVFBVVCBpcyBub3Qgc2V0CgojCiMgSU1YOCBDYW1lcmEgSVNJL01JUEkgRmVhdHVyZXMgc3Vw
cG9ydAojCkNPTkZJR19JTVg4X01JUElfQ1NJMl9ZQVY9eQpDT05GSUdfSU1YOF9KUEVHPW0KIyBl
bmQgb2YgSU1YOCBDYW1lcmEgSVNJL01JUEkgRmVhdHVyZXMgc3VwcG9ydAoKQ09ORklHX1ZJREVP
X01YQ19DU0lfQ0FNRVJBPXkKIyBDT05GSUdfTVhDX1ZBREMgaXMgbm90IHNldApDT05GSUdfTVhD
X01JUElfQ1NJPXkKCiMKIyBNWEMgQ2FtZXJhL1Y0TDIgUFJQIEZlYXR1cmVzIHN1cHBvcnQKIwoj
IENPTkZJR19NWENfQ0FNRVJBX09WNTY0MF9WMiBpcyBub3Qgc2V0CkNPTkZJR19NWENfQ0FNRVJB
X09WNTY0MF9NSVBJX1YyPXkKIyBDT05GSUdfTVhDX0NBTUVSQV9PVjU2NDdfTUlQSSBpcyBub3Qg
c2V0CiMgZW5kIG9mIE1YQyBDYW1lcmEvVjRMMiBQUlAgRmVhdHVyZXMgc3VwcG9ydAoKIyBDT05G
SUdfVklERU9fTVhDX1BYUF9WNEwyIGlzIG5vdCBzZXQKIyBDT05GSUdfVklERU9fWElMSU5YIGlz
IG5vdCBzZXQKQ09ORklHX1Y0TF9NRU0yTUVNX0RSSVZFUlM9eQojIENPTkZJR19WSURFT19DT0RB
IGlzIG5vdCBzZXQKIyBDT05GSUdfVklERU9fSU1YX1BYUCBpcyBub3Qgc2V0CiMgQ09ORklHX1ZJ
REVPX01FTTJNRU1fREVJTlRFUkxBQ0UgaXMgbm90IHNldAojIENPTkZJR19WSURFT19TSF9WRVUg
aXMgbm90IHNldAojIENPTkZJR19WNExfVEVTVF9EUklWRVJTIGlzIG5vdCBzZXQKIyBDT05GSUdf
RFZCX1BMQVRGT1JNX0RSSVZFUlMgaXMgbm90IHNldAoKIwojIFN1cHBvcnRlZCBNTUMvU0RJTyBh
ZGFwdGVycwojCiMgQ09ORklHX1NNU19TRElPX0RSViBpcyBub3Qgc2V0CiMgQ09ORklHX0NZUFJF
U1NfRklSTVdBUkUgaXMgbm90IHNldApDT05GSUdfVklERU9CVUYyX0NPUkU9eQpDT05GSUdfVklE
RU9CVUYyX1Y0TDI9eQpDT05GSUdfVklERU9CVUYyX01FTU9QUz15CkNPTkZJR19WSURFT0JVRjJf
RE1BX0NPTlRJRz15CkNPTkZJR19WSURFT0JVRjJfVk1BTExPQz15CgojCiMgTWVkaWEgYW5jaWxs
YXJ5IGRyaXZlcnMgKHR1bmVycywgc2Vuc29ycywgaTJjLCBzcGksIGZyb250ZW5kcykKIwojIENP
TkZJR19NRURJQV9TVUJEUlZfQVVUT1NFTEVDVCBpcyBub3Qgc2V0CkNPTkZJR19NRURJQV9BVFRB
Q0g9eQpDT05GSUdfVklERU9fSVJfSTJDPW0KCiMKIyBJMkMgRW5jb2RlcnMsIGRlY29kZXJzLCBz
ZW5zb3JzIGFuZCBvdGhlciBoZWxwZXIgY2hpcHMKIwoKIwojIEF1ZGlvIGRlY29kZXJzLCBwcm9j
ZXNzb3JzIGFuZCBtaXhlcnMKIwojIENPTkZJR19WSURFT19UVkFVRElPIGlzIG5vdCBzZXQKIyBD
T05GSUdfVklERU9fVERBNzQzMiBpcyBub3Qgc2V0CiMgQ09ORklHX1ZJREVPX1REQTk4NDAgaXMg
bm90IHNldAojIENPTkZJR19WSURFT19UREExOTk3WCBpcyBub3Qgc2V0CiMgQ09ORklHX1ZJREVP
X1RFQTY0MTVDIGlzIG5vdCBzZXQKIyBDT05GSUdfVklERU9fVEVBNjQyMCBpcyBub3Qgc2V0CiMg
Q09ORklHX1ZJREVPX01TUDM0MDAgaXMgbm90IHNldAojIENPTkZJR19WSURFT19DUzMzMDggaXMg
bm90IHNldAojIENPTkZJR19WSURFT19DUzUzNDUgaXMgbm90IHNldAojIENPTkZJR19WSURFT19D
UzUzTDMyQSBpcyBub3Qgc2V0CiMgQ09ORklHX1ZJREVPX1RMVjMyMEFJQzIzQiBpcyBub3Qgc2V0
CiMgQ09ORklHX1ZJREVPX1VEQTEzNDIgaXMgbm90IHNldAojIENPTkZJR19WSURFT19XTTg3NzUg
aXMgbm90IHNldAojIENPTkZJR19WSURFT19XTTg3MzkgaXMgbm90IHNldAojIENPTkZJR19WSURF
T19WUDI3U01QWCBpcyBub3Qgc2V0CiMgQ09ORklHX1ZJREVPX1NPTllfQlRGX01QWCBpcyBub3Qg
c2V0CgojCiMgUkRTIGRlY29kZXJzCiMKIyBDT05GSUdfVklERU9fU0FBNjU4OCBpcyBub3Qgc2V0
CgojCiMgVmlkZW8gZGVjb2RlcnMKIwojIENPTkZJR19WSURFT19BRFY3MTgwIGlzIG5vdCBzZXQK
IyBDT05GSUdfVklERU9fQURWNzE4MyBpcyBub3Qgc2V0CiMgQ09ORklHX1ZJREVPX0FEVjc0OFgg
aXMgbm90IHNldAojIENPTkZJR19WSURFT19BRFY3NjA0IGlzIG5vdCBzZXQKIyBDT05GSUdfVklE
RU9fQURWNzg0MiBpcyBub3Qgc2V0CiMgQ09ORklHX1ZJREVPX0JUODE5IGlzIG5vdCBzZXQKIyBD
T05GSUdfVklERU9fQlQ4NTYgaXMgbm90IHNldAojIENPTkZJR19WSURFT19CVDg2NiBpcyBub3Qg
c2V0CiMgQ09ORklHX1ZJREVPX0tTMDEyNyBpcyBub3Qgc2V0CiMgQ09ORklHX1ZJREVPX01MODZW
NzY2NyBpcyBub3Qgc2V0CiMgQ09ORklHX1ZJREVPX1NBQTcxMTAgaXMgbm90IHNldAojIENPTkZJ
R19WSURFT19TQUE3MTFYIGlzIG5vdCBzZXQKIyBDT05GSUdfVklERU9fVEMzNTg3NDMgaXMgbm90
IHNldAojIENPTkZJR19WSURFT19UVlA1MTRYIGlzIG5vdCBzZXQKIyBDT05GSUdfVklERU9fVFZQ
NTE1MCBpcyBub3Qgc2V0CiMgQ09ORklHX1ZJREVPX1RWUDcwMDIgaXMgbm90IHNldAojIENPTkZJ
R19WSURFT19UVzI4MDQgaXMgbm90IHNldAojIENPTkZJR19WSURFT19UVzk5MDMgaXMgbm90IHNl
dAojIENPTkZJR19WSURFT19UVzk5MDYgaXMgbm90IHNldAojIENPTkZJR19WSURFT19UVzk5MTAg
aXMgbm90IHNldAojIENPTkZJR19WSURFT19WUFgzMjIwIGlzIG5vdCBzZXQKCiMKIyBWaWRlbyBh
bmQgYXVkaW8gZGVjb2RlcnMKIwojIENPTkZJR19WSURFT19TQUE3MTdYIGlzIG5vdCBzZXQKIyBD
T05GSUdfVklERU9fQ1gyNTg0MCBpcyBub3Qgc2V0CgojCiMgVmlkZW8gZW5jb2RlcnMKIwojIENP
TkZJR19WSURFT19TQUE3MTI3IGlzIG5vdCBzZXQKIyBDT05GSUdfVklERU9fU0FBNzE4NSBpcyBu
b3Qgc2V0CiMgQ09ORklHX1ZJREVPX0FEVjcxNzAgaXMgbm90IHNldAojIENPTkZJR19WSURFT19B
RFY3MTc1IGlzIG5vdCBzZXQKIyBDT05GSUdfVklERU9fQURWNzM0MyBpcyBub3Qgc2V0CiMgQ09O
RklHX1ZJREVPX0FEVjczOTMgaXMgbm90IHNldAojIENPTkZJR19WSURFT19BRDkzODlCIGlzIG5v
dCBzZXQKIyBDT05GSUdfVklERU9fQUs4ODFYIGlzIG5vdCBzZXQKIyBDT05GSUdfVklERU9fVEhT
ODIwMCBpcyBub3Qgc2V0CgojCiMgQ2FtZXJhIHNlbnNvciBkZXZpY2VzCiMKIyBDT05GSUdfVklE
RU9fSU1YMjE0IGlzIG5vdCBzZXQKIyBDT05GSUdfVklERU9fSU1YMjU4IGlzIG5vdCBzZXQKIyBD
T05GSUdfVklERU9fSU1YMjc0IGlzIG5vdCBzZXQKIyBDT05GSUdfVklERU9fSU1YMzE5IGlzIG5v
dCBzZXQKIyBDT05GSUdfVklERU9fSU1YMzU1IGlzIG5vdCBzZXQKIyBDT05GSUdfVklERU9fT1Yy
NjQwIGlzIG5vdCBzZXQKIyBDT05GSUdfVklERU9fT1YyNjU5IGlzIG5vdCBzZXQKIyBDT05GSUdf
VklERU9fT1YyNjgwIGlzIG5vdCBzZXQKIyBDT05GSUdfVklERU9fT1YyNjg1IGlzIG5vdCBzZXQK
Q09ORklHX1ZJREVPX09WNTY0MD15CiMgQ09ORklHX1ZJREVPX09WNTY0NSBpcyBub3Qgc2V0CiMg
Q09ORklHX1ZJREVPX09WNTY0NyBpcyBub3Qgc2V0CiMgQ09ORklHX1ZJREVPX09WNjY1MCBpcyBu
b3Qgc2V0CiMgQ09ORklHX1ZJREVPX09WNTY3MCBpcyBub3Qgc2V0CiMgQ09ORklHX1ZJREVPX09W
NTY3NSBpcyBub3Qgc2V0CiMgQ09ORklHX1ZJREVPX09WNTY5NSBpcyBub3Qgc2V0CiMgQ09ORklH
X1ZJREVPX09WNzI1MSBpcyBub3Qgc2V0CiMgQ09ORklHX1ZJREVPX09WNzcyWCBpcyBub3Qgc2V0
CiMgQ09ORklHX1ZJREVPX09WNzY0MCBpcyBub3Qgc2V0CiMgQ09ORklHX1ZJREVPX09WNzY3MCBp
cyBub3Qgc2V0CiMgQ09ORklHX1ZJREVPX09WNzc0MCBpcyBub3Qgc2V0CiMgQ09ORklHX1ZJREVP
X09WODg1NiBpcyBub3Qgc2V0CiMgQ09ORklHX1ZJREVPX09WOTY0MCBpcyBub3Qgc2V0CiMgQ09O
RklHX1ZJREVPX09WOTY1MCBpcyBub3Qgc2V0CiMgQ09ORklHX1ZJREVPX09WMTM4NTggaXMgbm90
IHNldAojIENPTkZJR19WSURFT19WUzY2MjQgaXMgbm90IHNldAojIENPTkZJR19WSURFT19NVDlN
MDAxIGlzIG5vdCBzZXQKIyBDT05GSUdfVklERU9fTVQ5TTAzMiBpcyBub3Qgc2V0CiMgQ09ORklH
X1ZJREVPX01UOU0xMTEgaXMgbm90IHNldAojIENPTkZJR19WSURFT19NVDlQMDMxIGlzIG5vdCBz
ZXQKIyBDT05GSUdfVklERU9fTVQ5VDAwMSBpcyBub3Qgc2V0CiMgQ09ORklHX1ZJREVPX01UOVQx
MTIgaXMgbm90IHNldAojIENPTkZJR19WSURFT19NVDlWMDExIGlzIG5vdCBzZXQKIyBDT05GSUdf
VklERU9fTVQ5VjAzMiBpcyBub3Qgc2V0CiMgQ09ORklHX1ZJREVPX01UOVYxMTEgaXMgbm90IHNl
dAojIENPTkZJR19WSURFT19TUjAzMFBDMzAgaXMgbm90IHNldAojIENPTkZJR19WSURFT19OT09O
MDEwUEMzMCBpcyBub3Qgc2V0CiMgQ09ORklHX1ZJREVPX001TU9MUyBpcyBub3Qgc2V0CiMgQ09O
RklHX1ZJREVPX1JKNTROMSBpcyBub3Qgc2V0CiMgQ09ORklHX1ZJREVPX1M1SzZBQSBpcyBub3Qg
c2V0CiMgQ09ORklHX1ZJREVPX1M1SzZBMyBpcyBub3Qgc2V0CiMgQ09ORklHX1ZJREVPX1M1SzRF
Q0dYIGlzIG5vdCBzZXQKIyBDT05GSUdfVklERU9fUzVLNUJBRiBpcyBub3Qgc2V0CiMgQ09ORklH
X1ZJREVPX1NNSUFQUCBpcyBub3Qgc2V0CiMgQ09ORklHX1ZJREVPX0VUOEVLOCBpcyBub3Qgc2V0
CiMgQ09ORklHX1ZJREVPX1M1QzczTTMgaXMgbm90IHNldAoKIwojIExlbnMgZHJpdmVycwojCiMg
Q09ORklHX1ZJREVPX0FENTgyMCBpcyBub3Qgc2V0CiMgQ09ORklHX1ZJREVPX0FLNzM3NSBpcyBu
b3Qgc2V0CiMgQ09ORklHX1ZJREVPX0RXOTcxNCBpcyBub3Qgc2V0CiMgQ09ORklHX1ZJREVPX0RX
OTgwN19WQ00gaXMgbm90IHNldAoKIwojIEZsYXNoIGRldmljZXMKIwojIENPTkZJR19WSURFT19B
RFAxNjUzIGlzIG5vdCBzZXQKIyBDT05GSUdfVklERU9fTE0zNTYwIGlzIG5vdCBzZXQKIyBDT05G
SUdfVklERU9fTE0zNjQ2IGlzIG5vdCBzZXQKCiMKIyBWaWRlbyBpbXByb3ZlbWVudCBjaGlwcwoj
CiMgQ09ORklHX1ZJREVPX1VQRDY0MDMxQSBpcyBub3Qgc2V0CiMgQ09ORklHX1ZJREVPX1VQRDY0
MDgzIGlzIG5vdCBzZXQKCiMKIyBBdWRpby9WaWRlbyBjb21wcmVzc2lvbiBjaGlwcwojCiMgQ09O
RklHX1ZJREVPX1NBQTY3NTJIUyBpcyBub3Qgc2V0CgojCiMgU0RSIHR1bmVyIGNoaXBzCiMKCiMK
IyBNaXNjZWxsYW5lb3VzIGhlbHBlciBjaGlwcwojCiMgQ09ORklHX1ZJREVPX1RIUzczMDMgaXMg
bm90IHNldAojIENPTkZJR19WSURFT19NNTI3OTAgaXMgbm90IHNldAojIENPTkZJR19WSURFT19J
MkMgaXMgbm90IHNldAojIENPTkZJR19WSURFT19TVF9NSVBJRDAyIGlzIG5vdCBzZXQKIyBlbmQg
b2YgSTJDIEVuY29kZXJzLCBkZWNvZGVycywgc2Vuc29ycyBhbmQgb3RoZXIgaGVscGVyIGNoaXBz
CgojCiMgU1BJIGhlbHBlciBjaGlwcwojCiMgQ09ORklHX1ZJREVPX0dTMTY2MiBpcyBub3Qgc2V0
CiMgZW5kIG9mIFNQSSBoZWxwZXIgY2hpcHMKCiMKIyBNZWRpYSBTUEkgQWRhcHRlcnMKIwpDT05G
SUdfQ1hEMjg4MF9TUElfRFJWPW0KIyBlbmQgb2YgTWVkaWEgU1BJIEFkYXB0ZXJzCgpDT05GSUdf
TUVESUFfVFVORVI9eQoKIwojIEN1c3RvbWl6ZSBUViB0dW5lcnMKIwpDT05GSUdfTUVESUFfVFVO
RVJfU0lNUExFPW0KQ09ORklHX01FRElBX1RVTkVSX1REQTE4MjUwPW0KQ09ORklHX01FRElBX1RV
TkVSX1REQTgyOTA9bQpDT05GSUdfTUVESUFfVFVORVJfVERBODI3WD1tCkNPTkZJR19NRURJQV9U
VU5FUl9UREExODI3MT1tCkNPTkZJR19NRURJQV9UVU5FUl9UREE5ODg3PW0KQ09ORklHX01FRElB
X1RVTkVSX1RFQTU3NjE9bQpDT05GSUdfTUVESUFfVFVORVJfVEVBNTc2Nz1tCkNPTkZJR19NRURJ
QV9UVU5FUl9NU0kwMDE9bQpDT05GSUdfTUVESUFfVFVORVJfTVQyMFhYPW0KQ09ORklHX01FRElB
X1RVTkVSX01UMjA2MD1tCkNPTkZJR19NRURJQV9UVU5FUl9NVDIwNjM9bQpDT05GSUdfTUVESUFf
VFVORVJfTVQyMjY2PW0KQ09ORklHX01FRElBX1RVTkVSX01UMjEzMT1tCkNPTkZJR19NRURJQV9U
VU5FUl9RVDEwMTA9bQpDT05GSUdfTUVESUFfVFVORVJfWEMyMDI4PW0KQ09ORklHX01FRElBX1RV
TkVSX1hDNTAwMD1tCkNPTkZJR19NRURJQV9UVU5FUl9YQzQwMDA9bQpDT05GSUdfTUVESUFfVFVO
RVJfTVhMNTAwNVM9bQpDT05GSUdfTUVESUFfVFVORVJfTVhMNTAwN1Q9bQpDT05GSUdfTUVESUFf
VFVORVJfTUM0NFM4MDM9bQpDT05GSUdfTUVESUFfVFVORVJfTUFYMjE2NT1tCkNPTkZJR19NRURJ
QV9UVU5FUl9UREExODIxOD1tCkNPTkZJR19NRURJQV9UVU5FUl9GQzAwMTE9bQpDT05GSUdfTUVE
SUFfVFVORVJfRkMwMDEyPW0KQ09ORklHX01FRElBX1RVTkVSX0ZDMDAxMz1tCkNPTkZJR19NRURJ
QV9UVU5FUl9UREExODIxMj1tCkNPTkZJR19NRURJQV9UVU5FUl9FNDAwMD1tCkNPTkZJR19NRURJ
QV9UVU5FUl9GQzI1ODA9bQpDT05GSUdfTUVESUFfVFVORVJfTTg4UlM2MDAwVD1tCkNPTkZJR19N
RURJQV9UVU5FUl9UVUE5MDAxPW0KQ09ORklHX01FRElBX1RVTkVSX1NJMjE1Nz1tCkNPTkZJR19N
RURJQV9UVU5FUl9JVDkxM1g9bQpDT05GSUdfTUVESUFfVFVORVJfUjgyMFQ9bQpDT05GSUdfTUVE
SUFfVFVORVJfTVhMMzAxUkY9bQpDT05GSUdfTUVESUFfVFVORVJfUU0xRDFDMDA0Mj1tCkNPTkZJ
R19NRURJQV9UVU5FUl9RTTFEMUIwMDA0PW0KIyBlbmQgb2YgQ3VzdG9taXplIFRWIHR1bmVycwoK
IwojIEN1c3RvbWlzZSBEVkIgRnJvbnRlbmRzCiMKCiMKIyBNdWx0aXN0YW5kYXJkIChzYXRlbGxp
dGUpIGZyb250ZW5kcwojCkNPTkZJR19EVkJfU1RCMDg5OT1tCkNPTkZJR19EVkJfU1RCNjEwMD1t
CkNPTkZJR19EVkJfU1RWMDkweD1tCkNPTkZJR19EVkJfU1RWMDkxMD1tCkNPTkZJR19EVkJfU1RW
NjExMHg9bQpDT05GSUdfRFZCX1NUVjYxMTE9bQpDT05GSUdfRFZCX01YTDVYWD1tCkNPTkZJR19E
VkJfTTg4RFMzMTAzPW0KCiMKIyBNdWx0aXN0YW5kYXJkIChjYWJsZSArIHRlcnJlc3RyaWFsKSBm
cm9udGVuZHMKIwpDT05GSUdfRFZCX0RSWEs9bQpDT05GSUdfRFZCX1REQTE4MjcxQzJERD1tCkNP
TkZJR19EVkJfU0kyMTY1PW0KQ09ORklHX0RWQl9NTjg4NDcyPW0KQ09ORklHX0RWQl9NTjg4NDcz
PW0KCiMKIyBEVkItUyAoc2F0ZWxsaXRlKSBmcm9udGVuZHMKIwpDT05GSUdfRFZCX0NYMjQxMTA9
bQpDT05GSUdfRFZCX0NYMjQxMjM9bQpDT05GSUdfRFZCX01UMzEyPW0KQ09ORklHX0RWQl9aTDEw
MDM2PW0KQ09ORklHX0RWQl9aTDEwMDM5PW0KQ09ORklHX0RWQl9TNUgxNDIwPW0KQ09ORklHX0RW
Ql9TVFYwMjg4PW0KQ09ORklHX0RWQl9TVEI2MDAwPW0KQ09ORklHX0RWQl9TVFYwMjk5PW0KQ09O
RklHX0RWQl9TVFY2MTEwPW0KQ09ORklHX0RWQl9TVFYwOTAwPW0KQ09ORklHX0RWQl9UREE4MDgz
PW0KQ09ORklHX0RWQl9UREExMDA4Nj1tCkNPTkZJR19EVkJfVERBODI2MT1tCkNPTkZJR19EVkJf
VkVTMVg5Mz1tCkNPTkZJR19EVkJfVFVORVJfSVREMTAwMD1tCkNPTkZJR19EVkJfVFVORVJfQ1gy
NDExMz1tCkNPTkZJR19EVkJfVERBODI2WD1tCkNPTkZJR19EVkJfVFVBNjEwMD1tCkNPTkZJR19E
VkJfQ1gyNDExNj1tCkNPTkZJR19EVkJfQ1gyNDExNz1tCkNPTkZJR19EVkJfQ1gyNDEyMD1tCkNP
TkZJR19EVkJfU0kyMVhYPW0KQ09ORklHX0RWQl9UUzIwMjA9bQpDT05GSUdfRFZCX0RTMzAwMD1t
CkNPTkZJR19EVkJfTUI4NkExNj1tCkNPTkZJR19EVkJfVERBMTAwNzE9bQoKIwojIERWQi1UICh0
ZXJyZXN0cmlhbCkgZnJvbnRlbmRzCiMKQ09ORklHX0RWQl9TUDg4NzA9bQpDT05GSUdfRFZCX1NQ
ODg3WD1tCkNPTkZJR19EVkJfQ1gyMjcwMD1tCkNPTkZJR19EVkJfQ1gyMjcwMj1tCkNPTkZJR19E
VkJfUzVIMTQzMj1tCkNPTkZJR19EVkJfRFJYRD1tCkNPTkZJR19EVkJfTDY0NzgxPW0KQ09ORklH
X0RWQl9UREExMDA0WD1tCkNPTkZJR19EVkJfTlhUNjAwMD1tCkNPTkZJR19EVkJfTVQzNTI9bQpD
T05GSUdfRFZCX1pMMTAzNTM9bQpDT05GSUdfRFZCX0RJQjMwMDBNQj1tCkNPTkZJR19EVkJfRElC
MzAwME1DPW0KQ09ORklHX0RWQl9ESUI3MDAwTT1tCkNPTkZJR19EVkJfRElCNzAwMFA9bQpDT05G
SUdfRFZCX0RJQjkwMDA9bQpDT05GSUdfRFZCX1REQTEwMDQ4PW0KQ09ORklHX0RWQl9BRjkwMTM9
bQpDT05GSUdfRFZCX0VDMTAwPW0KQ09ORklHX0RWQl9TVFYwMzY3PW0KQ09ORklHX0RWQl9DWEQy
ODIwUj1tCkNPTkZJR19EVkJfQ1hEMjg0MUVSPW0KQ09ORklHX0RWQl9SVEwyODMwPW0KQ09ORklH
X0RWQl9SVEwyODMyPW0KQ09ORklHX0RWQl9TSTIxNjg9bQpDT05GSUdfRFZCX1pEMTMwMV9ERU1P
RD1tCkNPTkZJR19EVkJfQ1hEMjg4MD1tCgojCiMgRFZCLUMgKGNhYmxlKSBmcm9udGVuZHMKIwpD
T05GSUdfRFZCX1ZFUzE4MjA9bQpDT05GSUdfRFZCX1REQTEwMDIxPW0KQ09ORklHX0RWQl9UREEx
MDAyMz1tCkNPTkZJR19EVkJfU1RWMDI5Nz1tCgojCiMgQVRTQyAoTm9ydGggQW1lcmljYW4vS29y
ZWFuIFRlcnJlc3RyaWFsL0NhYmxlIERUVikgZnJvbnRlbmRzCiMKQ09ORklHX0RWQl9OWFQyMDBY
PW0KQ09ORklHX0RWQl9PUjUxMjExPW0KQ09ORklHX0RWQl9PUjUxMTMyPW0KQ09ORklHX0RWQl9C
Q00zNTEwPW0KQ09ORklHX0RWQl9MR0RUMzMwWD1tCkNPTkZJR19EVkJfTEdEVDMzMDU9bQpDT05G
SUdfRFZCX0xHRFQzMzA2QT1tCkNPTkZJR19EVkJfTEcyMTYwPW0KQ09ORklHX0RWQl9TNUgxNDA5
PW0KQ09ORklHX0RWQl9BVTg1MjI9bQpDT05GSUdfRFZCX0FVODUyMl9EVFY9bQpDT05GSUdfRFZC
X0FVODUyMl9WNEw9bQpDT05GSUdfRFZCX1M1SDE0MTE9bQoKIwojIElTREItVCAodGVycmVzdHJp
YWwpIGZyb250ZW5kcwojCkNPTkZJR19EVkJfUzkyMT1tCkNPTkZJR19EVkJfRElCODAwMD1tCkNP
TkZJR19EVkJfTUI4NkEyMFM9bQoKIwojIElTREItUyAoc2F0ZWxsaXRlKSAmIElTREItVCAodGVy
cmVzdHJpYWwpIGZyb250ZW5kcwojCkNPTkZJR19EVkJfVEM5MDUyMj1tCkNPTkZJR19EVkJfTU44
ODQ0M1g9bQoKIwojIERpZ2l0YWwgdGVycmVzdHJpYWwgb25seSB0dW5lcnMvUExMCiMKQ09ORklH
X0RWQl9QTEw9bQpDT05GSUdfRFZCX1RVTkVSX0RJQjAwNzA9bQpDT05GSUdfRFZCX1RVTkVSX0RJ
QjAwOTA9bQoKIwojIFNFQyBjb250cm9sIGRldmljZXMgZm9yIERWQi1TCiMKQ09ORklHX0RWQl9E
UlgzOVhZSj1tCkNPTkZJR19EVkJfTE5CSDI1PW0KQ09ORklHX0RWQl9MTkJIMjk9bQpDT05GSUdf
RFZCX0xOQlAyMT1tCkNPTkZJR19EVkJfTE5CUDIyPW0KQ09ORklHX0RWQl9JU0w2NDA1PW0KQ09O
RklHX0RWQl9JU0w2NDIxPW0KQ09ORklHX0RWQl9JU0w2NDIzPW0KQ09ORklHX0RWQl9BODI5Mz1t
CkNPTkZJR19EVkJfTEdTOEdMNT1tCkNPTkZJR19EVkJfTEdTOEdYWD1tCkNPTkZJR19EVkJfQVRC
TTg4MzA9bQpDT05GSUdfRFZCX1REQTY2NXg9bQpDT05GSUdfRFZCX0lYMjUwNVY9bQpDT05GSUdf
RFZCX004OFJTMjAwMD1tCkNPTkZJR19EVkJfQUY5MDMzPW0KQ09ORklHX0RWQl9IT1JVUzNBPW0K
Q09ORklHX0RWQl9BU0NPVDJFPW0KQ09ORklHX0RWQl9IRUxFTkU9bQoKIwojIENvbW1vbiBJbnRl
cmZhY2UgKEVONTAyMjEpIGNvbnRyb2xsZXIgZHJpdmVycwojCkNPTkZJR19EVkJfQ1hEMjA5OT1t
CkNPTkZJR19EVkJfU1AyPW0KCiMKIyBUb29scyB0byBkZXZlbG9wIG5ldyBmcm9udGVuZHMKIwoj
IENPTkZJR19EVkJfRFVNTVlfRkUgaXMgbm90IHNldAojIGVuZCBvZiBDdXN0b21pc2UgRFZCIEZy
b250ZW5kcwoKIwojIEdyYXBoaWNzIHN1cHBvcnQKIwpDT05GSUdfVkdBX0FSQj15CkNPTkZJR19W
R0FfQVJCX01BWF9HUFVTPTE2CkNPTkZJR19JTVg4X1BDPXkKQ09ORklHX0lNWDhfUFJHPXkKQ09O
RklHX0lNWDhfRFBSQz15CkNPTkZJR19JTVhfRFBVX0NPUkU9eQpDT05GSUdfSU1YX0RQVV9CTElU
PXkKQ09ORklHX0lNWF9MQ0RJRl9DT1JFPXkKQ09ORklHX0lNWF9MQ0RJRlYzX0NPUkU9eQpDT05G
SUdfRFJNPXkKQ09ORklHX0RSTV9NSVBJX0RTST15CiMgQ09ORklHX0RSTV9EUF9BVVhfQ0hBUkRF
ViBpcyBub3Qgc2V0CiMgQ09ORklHX0RSTV9ERUJVR19NTSBpcyBub3Qgc2V0CiMgQ09ORklHX0RS
TV9ERUJVR19TRUxGVEVTVCBpcyBub3Qgc2V0CkNPTkZJR19EUk1fS01TX0hFTFBFUj15CkNPTkZJ
R19EUk1fS01TX0ZCX0hFTFBFUj15CkNPTkZJR19EUk1fRkJERVZfRU1VTEFUSU9OPXkKQ09ORklH
X0RSTV9GQkRFVl9PVkVSQUxMT0M9MTAwCiMgQ09ORklHX0RSTV9MT0FEX0VESURfRklSTVdBUkUg
aXMgbm90IHNldAojIENPTkZJR19EUk1fRFBfQ0VDIGlzIG5vdCBzZXQKQ09ORklHX0RSTV9UVE09
bQpDT05GSUdfRFJNX1ZSQU1fSEVMUEVSPW0KQ09ORklHX0RSTV9HRU1fQ01BX0hFTFBFUj15CkNP
TkZJR19EUk1fS01TX0NNQV9IRUxQRVI9eQpDT05GSUdfRFJNX0dFTV9TSE1FTV9IRUxQRVI9eQpD
T05GSUdfRFJNX1ZNPXkKQ09ORklHX0RSTV9TQ0hFRD1tCgojCiMgSTJDIGVuY29kZXIgb3IgaGVs
cGVyIGNoaXBzCiMKQ09ORklHX0RSTV9JMkNfQ0g3MDA2PW0KQ09ORklHX0RSTV9JMkNfU0lMMTY0
PW0KQ09ORklHX0RSTV9JMkNfTlhQX1REQTk5OFg9bQojIENPTkZJR19EUk1fSTJDX05YUF9UREE5
OTUwIGlzIG5vdCBzZXQKIyBlbmQgb2YgSTJDIGVuY29kZXIgb3IgaGVscGVyIGNoaXBzCgojCiMg
QVJNIGRldmljZXMKIwojIENPTkZJR19EUk1fSERMQ0QgaXMgbm90IHNldApDT05GSUdfRFJNX01B
TElfRElTUExBWT1tCiMgQ09ORklHX0RSTV9LT01FREEgaXMgbm90IHNldAojIGVuZCBvZiBBUk0g
ZGV2aWNlcwoKIyBDT05GSUdfRFJNX1JBREVPTiBpcyBub3Qgc2V0CiMgQ09ORklHX0RSTV9BTURH
UFUgaXMgbm90IHNldAoKIwojIEFDUCAoQXVkaW8gQ29Qcm9jZXNzb3IpIENvbmZpZ3VyYXRpb24K
IwojIGVuZCBvZiBBQ1AgKEF1ZGlvIENvUHJvY2Vzc29yKSBDb25maWd1cmF0aW9uCgpDT05GSUdf
RFJNX05PVVZFQVU9bQpDT05GSUdfTk9VVkVBVV9MRUdBQ1lfQ1RYX1NVUFBPUlQ9eQpDT05GSUdf
Tk9VVkVBVV9ERUJVRz01CkNPTkZJR19OT1VWRUFVX0RFQlVHX0RFRkFVTFQ9MwojIENPTkZJR19O
T1VWRUFVX0RFQlVHX01NVSBpcyBub3Qgc2V0CkNPTkZJR19EUk1fTk9VVkVBVV9CQUNLTElHSFQ9
eQojIENPTkZJR19EUk1fVkdFTSBpcyBub3Qgc2V0CiMgQ09ORklHX0RSTV9WS01TIGlzIG5vdCBz
ZXQKQ09ORklHX0RSTV9BVElfUENJR0FSVD15CiMgQ09ORklHX0RSTV9VREwgaXMgbm90IHNldAoj
IENPTkZJR19EUk1fQVNUIGlzIG5vdCBzZXQKIyBDT05GSUdfRFJNX01HQUcyMDAgaXMgbm90IHNl
dAojIENPTkZJR19EUk1fQ0lSUlVTX1FFTVUgaXMgbm90IHNldAojIENPTkZJR19EUk1fUkNBUl9E
V19IRE1JIGlzIG5vdCBzZXQKQ09ORklHX0RSTV9SQ0FSX0xWRFM9bQpDT05GSUdfRFJNX1JDQVJf
V1JJVEVCQUNLPXkKIyBDT05GSUdfRFJNX1FYTCBpcyBub3Qgc2V0CiMgQ09ORklHX0RSTV9CT0NI
UyBpcyBub3Qgc2V0CiMgQ09ORklHX0RSTV9WSVJUSU9fR1BVIGlzIG5vdCBzZXQKQ09ORklHX0RS
TV9QQU5FTD15CgojCiMgRGlzcGxheSBQYW5lbHMKIwojIENPTkZJR19EUk1fUEFORUxfQVJNX1ZF
UlNBVElMRSBpcyBub3Qgc2V0CiMgQ09ORklHX0RSTV9QQU5FTF9MVkRTIGlzIG5vdCBzZXQKQ09O
RklHX0RSTV9QQU5FTF9TSU1QTEU9eQojIENPTkZJR19EUk1fUEFORUxfRkVJWUFOR19GWTA3MDI0
REkyNkEzMEQgaXMgbm90IHNldAojIENPTkZJR19EUk1fUEFORUxfSUxJVEVLX0lMOTMyMiBpcyBu
b3Qgc2V0CiMgQ09ORklHX0RSTV9QQU5FTF9JTElURUtfSUxJOTg4MUMgaXMgbm90IHNldAojIENP
TkZJR19EUk1fUEFORUxfSU5OT0xVWF9QMDc5WkNBIGlzIG5vdCBzZXQKIyBDT05GSUdfRFJNX1BB
TkVMX0pESV9MVDA3ME1FMDUwMDAgaXMgbm90IHNldAojIENPTkZJR19EUk1fUEFORUxfS0lOR0RJ
U1BMQVlfS0QwOTdEMDQgaXMgbm90IHNldAojIENPTkZJR19EUk1fUEFORUxfU0FNU1VOR19MRDkw
NDAgaXMgbm90IHNldAojIENPTkZJR19EUk1fUEFORUxfTEdfTEIwMzVRMDIgaXMgbm90IHNldAoj
IENPTkZJR19EUk1fUEFORUxfTEdfTEc0NTczIGlzIG5vdCBzZXQKIyBDT05GSUdfRFJNX1BBTkVM
X05FQ19OTDgwNDhITDExIGlzIG5vdCBzZXQKIyBDT05GSUdfRFJNX1BBTkVMX05PVkFURUtfTlQz
OTAxNiBpcyBub3Qgc2V0CiMgQ09ORklHX0RSTV9QQU5FTF9PTElNRVhfTENEX09MSU5VWElOTyBp
cyBub3Qgc2V0CiMgQ09ORklHX0RSTV9QQU5FTF9PUklTRVRFQ0hfT1RNODAwOUEgaXMgbm90IHNl
dAojIENPTkZJR19EUk1fUEFORUxfT1NEX09TRDEwMVQyNTg3XzUzVFMgaXMgbm90IHNldAojIENP
TkZJR19EUk1fUEFORUxfUEFOQVNPTklDX1ZWWDEwRjAzNE4wMCBpcyBub3Qgc2V0CiMgQ09ORklH
X0RSTV9QQU5FTF9SQVNQQkVSUllQSV9UT1VDSFNDUkVFTiBpcyBub3Qgc2V0CkNPTkZJR19EUk1f
UEFORUxfUkFZRElVTV9STTY3MTkxPXkKIyBDT05GSUdfRFJNX1BBTkVMX1JBWURJVU1fUk02ODIw
MCBpcyBub3Qgc2V0CiMgQ09ORklHX0RSTV9QQU5FTF9ST0NLVEVDSF9KSDA1N04wMDkwMCBpcyBu
b3Qgc2V0CiMgQ09ORklHX0RSTV9QQU5FTF9ST05CT19SQjA3MEQzMCBpcyBub3Qgc2V0CiMgQ09O
RklHX0RSTV9QQU5FTF9TQU1TVU5HX1M2RDE2RDAgaXMgbm90IHNldAojIENPTkZJR19EUk1fUEFO
RUxfU0FNU1VOR19TNkUzSEEyIGlzIG5vdCBzZXQKIyBDT05GSUdfRFJNX1BBTkVMX1NBTVNVTkdf
UzZFNjNKMFgwMyBpcyBub3Qgc2V0CiMgQ09ORklHX0RSTV9QQU5FTF9TQU1TVU5HX1M2RTYzTTAg
aXMgbm90IHNldAojIENPTkZJR19EUk1fUEFORUxfU0FNU1VOR19TNkU4QUEwIGlzIG5vdCBzZXQK
Q09ORklHX0RSTV9QQU5FTF9TRUlLT180M1dWRjFHPXkKIyBDT05GSUdfRFJNX1BBTkVMX1NIQVJQ
X0xRMTAxUjFTWDAxIGlzIG5vdCBzZXQKIyBDT05GSUdfRFJNX1BBTkVMX1NIQVJQX0xTMDM3VjdE
VzAxIGlzIG5vdCBzZXQKIyBDT05GSUdfRFJNX1BBTkVMX1NIQVJQX0xTMDQzVDFMRTAxIGlzIG5v
dCBzZXQKIyBDT05GSUdfRFJNX1BBTkVMX1NJVFJPTklYX1NUNzcwMSBpcyBub3Qgc2V0CiMgQ09O
RklHX0RSTV9QQU5FTF9TSVRST05JWF9TVDc3ODlWIGlzIG5vdCBzZXQKIyBDT05GSUdfRFJNX1BB
TkVMX1NPTllfQUNYNTY1QUtNIGlzIG5vdCBzZXQKIyBDT05GSUdfRFJNX1BBTkVMX1RQT19URDAy
OFRURUMxIGlzIG5vdCBzZXQKIyBDT05GSUdfRFJNX1BBTkVMX1RQT19URDA0M01URUExIGlzIG5v
dCBzZXQKIyBDT05GSUdfRFJNX1BBTkVMX1RQT19UUEcxMTAgaXMgbm90IHNldAojIENPTkZJR19E
Uk1fUEFORUxfVFJVTFlfTlQzNTU5N19XUVhHQSBpcyBub3Qgc2V0CiMgZW5kIG9mIERpc3BsYXkg
UGFuZWxzCgpDT05GSUdfRFJNX0JSSURHRT15CkNPTkZJR19EUk1fUEFORUxfQlJJREdFPXkKCiMK
IyBEaXNwbGF5IEludGVyZmFjZSBCcmlkZ2VzCiMKIyBDT05GSUdfRFJNX0FOQUxPR0lYX0FOWDc4
WFggaXMgbm90IHNldAojIENPTkZJR19EUk1fQ0ROU19EU0kgaXMgbm90IHNldAojIENPTkZJR19E
Uk1fRFVNQl9WR0FfREFDIGlzIG5vdCBzZXQKQ09ORklHX0RSTV9GU0xfSU1YX0xWRFNfQlJJREdF
PXkKIyBDT05GSUdfRFJNX0xWRFNfRU5DT0RFUiBpcyBub3Qgc2V0CiMgQ09ORklHX0RSTV9NRUdB
Q0hJUFNfU1REUFhYWFhfR0VfQjg1MFYzX0ZXIGlzIG5vdCBzZXQKQ09ORklHX0RSTV9TRUNfTUlQ
SV9EU0lNPXkKIyBDT05GSUdfRFJNX05YUF9QVE4zNDYwIGlzIG5vdCBzZXQKIyBDT05GSUdfRFJN
X1BBUkFERV9QUzg2MjIgaXMgbm90IHNldAojIENPTkZJR19EUk1fU0lMX1NJSTg2MjAgaXMgbm90
IHNldApDT05GSUdfRFJNX1NJSTkwMlg9bQojIENPTkZJR19EUk1fU0lJOTIzNCBpcyBub3Qgc2V0
CiMgQ09ORklHX0RSTV9USElORV9USEM2M0xWRDEwMjQgaXMgbm90IHNldAojIENPTkZJR19EUk1f
VE9TSElCQV9UQzM1ODc2NCBpcyBub3Qgc2V0CiMgQ09ORklHX0RSTV9UT1NISUJBX1RDMzU4NzY3
IGlzIG5vdCBzZXQKIyBDT05GSUdfRFJNX1RJX1RGUDQxMCBpcyBub3Qgc2V0CiMgQ09ORklHX0RS
TV9USV9TTjY1RFNJODYgaXMgbm90IHNldApDT05GSUdfRFJNX0kyQ19BRFY3NTExPXkKIyBDT05G
SUdfRFJNX0kyQ19BRFY3NTExX0FVRElPIGlzIG5vdCBzZXQKQ09ORklHX0RSTV9JMkNfQURWNzUz
Mz15CkNPTkZJR19EUk1fSTJDX0FEVjc1MTFfQ0VDPXkKQ09ORklHX0RSTV9OV0xfTUlQSV9EU0k9
eQpDT05GSUdfRFJNX0NETlNfTUhEUD15CkNPTkZJR19EUk1fQ0ROU19IRE1JPXkKQ09ORklHX0RS
TV9DRE5TX0RQPXkKQ09ORklHX0RSTV9DRE5TX0FVRElPPXkKQ09ORklHX0RSTV9DRE5TX0hETUlf
Q0VDPXkKQ09ORklHX0RSTV9EV19IRE1JPXkKIyBDT05GSUdfRFJNX0RXX0hETUlfQUhCX0FVRElP
IGlzIG5vdCBzZXQKQ09ORklHX0RSTV9EV19IRE1JX0kyU19BVURJTz1tCkNPTkZJR19EUk1fRFdf
SERNSV9HUF9BVURJTz15CkNPTkZJR19EUk1fRFdfSERNSV9DRUM9eQpDT05GSUdfRFJNX0lURV9J
VDYyNjM9eQojIGVuZCBvZiBEaXNwbGF5IEludGVyZmFjZSBCcmlkZ2VzCgpDT05GSUdfRFJNX0lN
WD15CkNPTkZJR19EUk1fSU1YX0xDRElGX01VWF9ESVNQTEFZPXkKQ09ORklHX0RSTV9JTVhfUEFS
QUxMRUxfRElTUExBWT15CkNPTkZJR19EUk1fSU1YX1RWRT15CkNPTkZJR19EUk1fSU1YX0xEQj15
CkNPTkZJR19EUk1fSU1YOFFNX0xEQj15CkNPTkZJR19EUk1fSU1YOFFYUF9MREI9eQpDT05GSUdf
RFJNX0lNWDhNUF9MREI9eQpDT05GSUdfSU1YOE1QX0hETUlfUEFWST15CkNPTkZJR19EUk1fSU1Y
X0hETUk9eQpDT05GSUdfRFJNX0lNWF9TRUNfRFNJTT15CkNPTkZJR19EUk1fSU1YX0NETlNfTUhE
UD15CkNPTkZJR19EUk1fSU1YX0RQVT15CkNPTkZJR19EUk1fSU1YX0xDRElGPXkKQ09ORklHX0RS
TV9JTVhfTENESUZWMz15CkNPTkZJR19EUk1fSU1YX0RDU1M9eQpDT05GSUdfRFJNX0VUTkFWSVY9
bQpDT05GSUdfRFJNX0VUTkFWSVZfVEhFUk1BTD15CiMgQ09ORklHX0RSTV9BUkNQR1UgaXMgbm90
IHNldApDT05GSUdfRFJNX0hJU0lfSElCTUM9bQpDT05GSUdfRFJNX0hJU0lfS0lSSU49bQpDT05G
SUdfRFJNX01YUz15CkNPTkZJR19EUk1fTVhTRkI9eQojIENPTkZJR19EUk1fR00xMlUzMjAgaXMg
bm90IHNldAojIENPTkZJR19USU5ZRFJNX0hYODM1N0QgaXMgbm90IHNldAojIENPTkZJR19USU5Z
RFJNX0lMSTkyMjUgaXMgbm90IHNldAojIENPTkZJR19USU5ZRFJNX0lMSTkzNDEgaXMgbm90IHNl
dAojIENPTkZJR19USU5ZRFJNX01JMDI4M1FUIGlzIG5vdCBzZXQKIyBDT05GSUdfVElOWURSTV9S
RVBBUEVSIGlzIG5vdCBzZXQKIyBDT05GSUdfVElOWURSTV9TVDc1ODYgaXMgbm90IHNldAojIENP
TkZJR19USU5ZRFJNX1NUNzczNVIgaXMgbm90IHNldApDT05GSUdfRFJNX1BMMTExPW0KIyBDT05G
SUdfRFJNX1hFTiBpcyBub3Qgc2V0CkNPTkZJR19EUk1fTElNQT1tCkNPTkZJR19EUk1fUEFORlJP
U1Q9bQpDT05GSUdfRFJNX0xFR0FDWT15CiMgQ09ORklHX0RSTV9UREZYIGlzIG5vdCBzZXQKIyBD
T05GSUdfRFJNX1IxMjggaXMgbm90IHNldAojIENPTkZJR19EUk1fTUdBIGlzIG5vdCBzZXQKIyBD
T05GSUdfRFJNX1ZJQSBpcyBub3Qgc2V0CiMgQ09ORklHX0RSTV9WSVZBTlRFIGlzIG5vdCBzZXQK
IyBDT05GSUdfRFJNX1NBVkFHRSBpcyBub3Qgc2V0CkNPTkZJR19EUk1fUEFORUxfT1JJRU5UQVRJ
T05fUVVJUktTPXkKCiMKIyBGcmFtZSBidWZmZXIgRGV2aWNlcwojCkNPTkZJR19GQl9DTURMSU5F
PXkKQ09ORklHX0ZCX05PVElGWT15CkNPTkZJR19GQj15CiMgQ09ORklHX0ZJUk1XQVJFX0VESUQg
aXMgbm90IHNldApDT05GSUdfRkJfQ0ZCX0ZJTExSRUNUPXkKQ09ORklHX0ZCX0NGQl9DT1BZQVJF
QT15CkNPTkZJR19GQl9DRkJfSU1BR0VCTElUPXkKQ09ORklHX0ZCX1NZU19GSUxMUkVDVD15CkNP
TkZJR19GQl9TWVNfQ09QWUFSRUE9eQpDT05GSUdfRkJfU1lTX0lNQUdFQkxJVD15CiMgQ09ORklH
X0ZCX0ZPUkVJR05fRU5ESUFOIGlzIG5vdCBzZXQKQ09ORklHX0ZCX1NZU19GT1BTPXkKQ09ORklH
X0ZCX0RFRkVSUkVEX0lPPXkKQ09ORklHX0ZCX01PREVfSEVMUEVSUz15CiMgQ09ORklHX0ZCX1RJ
TEVCTElUVElORyBpcyBub3Qgc2V0CgojCiMgRnJhbWUgYnVmZmVyIGhhcmR3YXJlIGRyaXZlcnMK
IwojIENPTkZJR19GQl9DSVJSVVMgaXMgbm90IHNldAojIENPTkZJR19GQl9QTTIgaXMgbm90IHNl
dApDT05GSUdfRkJfQVJNQ0xDRD15CiMgQ09ORklHX0ZCX0lNWCBpcyBub3Qgc2V0CiMgQ09ORklH
X0ZCX0NZQkVSMjAwMCBpcyBub3Qgc2V0CiMgQ09ORklHX0ZCX0FTSUxJQU5UIGlzIG5vdCBzZXQK
IyBDT05GSUdfRkJfSU1TVFQgaXMgbm90IHNldApDT05GSUdfRkJfRUZJPXkKIyBDT05GSUdfRkJf
T1BFTkNPUkVTIGlzIG5vdCBzZXQKIyBDT05GSUdfRkJfUzFEMTNYWFggaXMgbm90IHNldAojIENP
TkZJR19GQl9OVklESUEgaXMgbm90IHNldAojIENPTkZJR19GQl9SSVZBIGlzIG5vdCBzZXQKIyBD
T05GSUdfRkJfSTc0MCBpcyBub3Qgc2V0CiMgQ09ORklHX0ZCX01BVFJPWCBpcyBub3Qgc2V0CiMg
Q09ORklHX0ZCX1JBREVPTiBpcyBub3Qgc2V0CiMgQ09ORklHX0ZCX0FUWTEyOCBpcyBub3Qgc2V0
CiMgQ09ORklHX0ZCX0FUWSBpcyBub3Qgc2V0CiMgQ09ORklHX0ZCX1MzIGlzIG5vdCBzZXQKIyBD
T05GSUdfRkJfU0FWQUdFIGlzIG5vdCBzZXQKIyBDT05GSUdfRkJfU0lTIGlzIG5vdCBzZXQKIyBD
T05GSUdfRkJfTkVPTUFHSUMgaXMgbm90IHNldAojIENPTkZJR19GQl9LWVJPIGlzIG5vdCBzZXQK
IyBDT05GSUdfRkJfM0RGWCBpcyBub3Qgc2V0CiMgQ09ORklHX0ZCX1ZPT0RPTzEgaXMgbm90IHNl
dAojIENPTkZJR19GQl9WVDg2MjMgaXMgbm90IHNldAojIENPTkZJR19GQl9UUklERU5UIGlzIG5v
dCBzZXQKIyBDT05GSUdfRkJfQVJLIGlzIG5vdCBzZXQKIyBDT05GSUdfRkJfUE0zIGlzIG5vdCBz
ZXQKIyBDT05GSUdfRkJfQ0FSTUlORSBpcyBub3Qgc2V0CiMgQ09ORklHX0ZCX1NNU0NVRlggaXMg
bm90IHNldAojIENPTkZJR19GQl9VREwgaXMgbm90IHNldAojIENPTkZJR19GQl9JQk1fR1hUNDUw
MCBpcyBub3Qgc2V0CiMgQ09ORklHX0ZCX1ZJUlRVQUwgaXMgbm90IHNldApDT05GSUdfWEVOX0ZC
REVWX0ZST05URU5EPXkKIyBDT05GSUdfRkJfTUVUUk9OT01FIGlzIG5vdCBzZXQKIyBDT05GSUdf
RkJfTUI4NjJYWCBpcyBub3Qgc2V0CkNPTkZJR19GQl9NWDM9eQojIENPTkZJR19GQl9NWFMgaXMg
bm90IHNldAojIENPTkZJR19GQl9TSU1QTEUgaXMgbm90IHNldAojIENPTkZJR19GQl9TU0QxMzA3
IGlzIG5vdCBzZXQKIyBDT05GSUdfRkJfU003MTIgaXMgbm90IHNldApDT05GSUdfRkJfTVhDPXkK
IyBDT05GSUdfRkJfTVhDX0RJU1BfRlJBTUVXT1JLIGlzIG5vdCBzZXQKIyBDT05GSUdfRkJfTVhD
X09WRVJMQVkgaXMgbm90IHNldApDT05GSUdfRkJfTVhDX0VESUQ9eQojIENPTkZJR19GQl9NWENf
RUlOS19QQU5FTCBpcyBub3Qgc2V0CiMgQ09ORklHX0ZCX01YQ19FSU5LX1YyX1BBTkVMIGlzIG5v
dCBzZXQKIyBlbmQgb2YgRnJhbWUgYnVmZmVyIERldmljZXMKCiMKIyBCYWNrbGlnaHQgJiBMQ0Qg
ZGV2aWNlIHN1cHBvcnQKIwojIENPTkZJR19MQ0RfQ0xBU1NfREVWSUNFIGlzIG5vdCBzZXQKQ09O
RklHX0JBQ0tMSUdIVF9DTEFTU19ERVZJQ0U9eQpDT05GSUdfQkFDS0xJR0hUX0dFTkVSSUM9bQpD
T05GSUdfQkFDS0xJR0hUX1BXTT15CiMgQ09ORklHX0JBQ0tMSUdIVF9QTTg5NDFfV0xFRCBpcyBu
b3Qgc2V0CiMgQ09ORklHX0JBQ0tMSUdIVF9BRFA4ODYwIGlzIG5vdCBzZXQKIyBDT05GSUdfQkFD
S0xJR0hUX0FEUDg4NzAgaXMgbm90IHNldAojIENPTkZJR19CQUNLTElHSFRfTE0zNjMwQSBpcyBu
b3Qgc2V0CiMgQ09ORklHX0JBQ0tMSUdIVF9MTTM2MzkgaXMgbm90IHNldApDT05GSUdfQkFDS0xJ
R0hUX0xQODU1WD1tCiMgQ09ORklHX0JBQ0tMSUdIVF9HUElPIGlzIG5vdCBzZXQKIyBDT05GSUdf
QkFDS0xJR0hUX0xWNTIwN0xQIGlzIG5vdCBzZXQKIyBDT05GSUdfQkFDS0xJR0hUX0JENjEwNyBp
cyBub3Qgc2V0CiMgQ09ORklHX0JBQ0tMSUdIVF9BUkNYQ05OIGlzIG5vdCBzZXQKIyBlbmQgb2Yg
QmFja2xpZ2h0ICYgTENEIGRldmljZSBzdXBwb3J0CgpDT05GSUdfVklERU9NT0RFX0hFTFBFUlM9
eQpDT05GSUdfSERNST15CgojCiMgQ29uc29sZSBkaXNwbGF5IGRyaXZlciBzdXBwb3J0CiMKQ09O
RklHX0RVTU1ZX0NPTlNPTEU9eQpDT05GSUdfRFVNTVlfQ09OU09MRV9DT0xVTU5TPTgwCkNPTkZJ
R19EVU1NWV9DT05TT0xFX1JPV1M9MjUKQ09ORklHX0ZSQU1FQlVGRkVSX0NPTlNPTEU9eQpDT05G
SUdfRlJBTUVCVUZGRVJfQ09OU09MRV9ERVRFQ1RfUFJJTUFSWT15CiMgQ09ORklHX0ZSQU1FQlVG
RkVSX0NPTlNPTEVfUk9UQVRJT04gaXMgbm90IHNldAojIENPTkZJR19GUkFNRUJVRkZFUl9DT05T
T0xFX0RFRkVSUkVEX1RBS0VPVkVSIGlzIG5vdCBzZXQKIyBlbmQgb2YgQ29uc29sZSBkaXNwbGF5
IGRyaXZlciBzdXBwb3J0CgpDT05GSUdfTE9HTz15CiMgQ09ORklHX0xPR09fTElOVVhfTU9OTyBp
cyBub3Qgc2V0CiMgQ09ORklHX0xPR09fTElOVVhfVkdBMTYgaXMgbm90IHNldApDT05GSUdfTE9H
T19MSU5VWF9DTFVUMjI0PXkKIyBlbmQgb2YgR3JhcGhpY3Mgc3VwcG9ydAoKQ09ORklHX1NPVU5E
PXkKQ09ORklHX1NORD15CkNPTkZJR19TTkRfVElNRVI9eQpDT05GSUdfU05EX1BDTT15CkNPTkZJ
R19TTkRfUENNX0VMRD15CkNPTkZJR19TTkRfUENNX0lFQzk1OD15CkNPTkZJR19TTkRfRE1BRU5H
SU5FX1BDTT15CkNPTkZJR19TTkRfSFdERVA9bQpDT05GSUdfU05EX1JBV01JREk9eQpDT05GSUdf
U05EX0NPTVBSRVNTX09GRkxPQUQ9eQpDT05GSUdfU05EX0pBQ0s9eQpDT05GSUdfU05EX0pBQ0tf
SU5QVVRfREVWPXkKIyBDT05GSUdfU05EX09TU0VNVUwgaXMgbm90IHNldApDT05GSUdfU05EX1BD
TV9USU1FUj15CiMgQ09ORklHX1NORF9IUlRJTUVSIGlzIG5vdCBzZXQKQ09ORklHX1NORF9EWU5B
TUlDX01JTk9SUz15CkNPTkZJR19TTkRfTUFYX0NBUkRTPTMyCkNPTkZJR19TTkRfU1VQUE9SVF9P
TERfQVBJPXkKQ09ORklHX1NORF9QUk9DX0ZTPXkKQ09ORklHX1NORF9WRVJCT1NFX1BST0NGUz15
CiMgQ09ORklHX1NORF9WRVJCT1NFX1BSSU5USyBpcyBub3Qgc2V0CiMgQ09ORklHX1NORF9ERUJV
RyBpcyBub3Qgc2V0CiMgQ09ORklHX1NORF9TRVFVRU5DRVIgaXMgbm90IHNldApDT05GSUdfU05E
X0RSSVZFUlM9eQojIENPTkZJR19TTkRfRFVNTVkgaXMgbm90IHNldAojIENPTkZJR19TTkRfQUxP
T1AgaXMgbm90IHNldAojIENPTkZJR19TTkRfTVRQQVYgaXMgbm90IHNldAojIENPTkZJR19TTkRf
U0VSSUFMX1UxNjU1MCBpcyBub3Qgc2V0CiMgQ09ORklHX1NORF9NUFU0MDEgaXMgbm90IHNldApD
T05GSUdfU05EX1BDST15CiMgQ09ORklHX1NORF9BRDE4ODkgaXMgbm90IHNldAojIENPTkZJR19T
TkRfQVRJSVhQIGlzIG5vdCBzZXQKIyBDT05GSUdfU05EX0FUSUlYUF9NT0RFTSBpcyBub3Qgc2V0
CiMgQ09ORklHX1NORF9BVTg4MTAgaXMgbm90IHNldAojIENPTkZJR19TTkRfQVU4ODIwIGlzIG5v
dCBzZXQKIyBDT05GSUdfU05EX0FVODgzMCBpcyBub3Qgc2V0CiMgQ09ORklHX1NORF9BVzIgaXMg
bm90IHNldAojIENPTkZJR19TTkRfQlQ4N1ggaXMgbm90IHNldAojIENPTkZJR19TTkRfQ0EwMTA2
IGlzIG5vdCBzZXQKIyBDT05GSUdfU05EX0NNSVBDSSBpcyBub3Qgc2V0CiMgQ09ORklHX1NORF9P
WFlHRU4gaXMgbm90IHNldAojIENPTkZJR19TTkRfQ1M0MjgxIGlzIG5vdCBzZXQKIyBDT05GSUdf
U05EX0NTNDZYWCBpcyBub3Qgc2V0CiMgQ09ORklHX1NORF9DVFhGSSBpcyBub3Qgc2V0CiMgQ09O
RklHX1NORF9EQVJMQTIwIGlzIG5vdCBzZXQKIyBDT05GSUdfU05EX0dJTkEyMCBpcyBub3Qgc2V0
CiMgQ09ORklHX1NORF9MQVlMQTIwIGlzIG5vdCBzZXQKIyBDT05GSUdfU05EX0RBUkxBMjQgaXMg
bm90IHNldAojIENPTkZJR19TTkRfR0lOQTI0IGlzIG5vdCBzZXQKIyBDT05GSUdfU05EX0xBWUxB
MjQgaXMgbm90IHNldAojIENPTkZJR19TTkRfTU9OQSBpcyBub3Qgc2V0CiMgQ09ORklHX1NORF9N
SUEgaXMgbm90IHNldAojIENPTkZJR19TTkRfRUNITzNHIGlzIG5vdCBzZXQKIyBDT05GSUdfU05E
X0lORElHTyBpcyBub3Qgc2V0CiMgQ09ORklHX1NORF9JTkRJR09JTyBpcyBub3Qgc2V0CiMgQ09O
RklHX1NORF9JTkRJR09ESiBpcyBub3Qgc2V0CiMgQ09ORklHX1NORF9JTkRJR09JT1ggaXMgbm90
IHNldAojIENPTkZJR19TTkRfSU5ESUdPREpYIGlzIG5vdCBzZXQKIyBDT05GSUdfU05EX0VOUzEz
NzAgaXMgbm90IHNldAojIENPTkZJR19TTkRfRU5TMTM3MSBpcyBub3Qgc2V0CiMgQ09ORklHX1NO
RF9GTTgwMSBpcyBub3Qgc2V0CiMgQ09ORklHX1NORF9IRFNQIGlzIG5vdCBzZXQKIyBDT05GSUdf
U05EX0hEU1BNIGlzIG5vdCBzZXQKIyBDT05GSUdfU05EX0lDRTE3MjQgaXMgbm90IHNldAojIENP
TkZJR19TTkRfSU5URUw4WDAgaXMgbm90IHNldAojIENPTkZJR19TTkRfSU5URUw4WDBNIGlzIG5v
dCBzZXQKIyBDT05GSUdfU05EX0tPUkcxMjEyIGlzIG5vdCBzZXQKIyBDT05GSUdfU05EX0xPTEEg
aXMgbm90IHNldAojIENPTkZJR19TTkRfTFg2NDY0RVMgaXMgbm90IHNldAojIENPTkZJR19TTkRf
TUlYQVJUIGlzIG5vdCBzZXQKIyBDT05GSUdfU05EX05NMjU2IGlzIG5vdCBzZXQKIyBDT05GSUdf
U05EX1BDWEhSIGlzIG5vdCBzZXQKIyBDT05GSUdfU05EX1JJUFRJREUgaXMgbm90IHNldAojIENP
TkZJR19TTkRfUk1FMzIgaXMgbm90IHNldAojIENPTkZJR19TTkRfUk1FOTYgaXMgbm90IHNldAoj
IENPTkZJR19TTkRfUk1FOTY1MiBpcyBub3Qgc2V0CiMgQ09ORklHX1NORF9TRTZYIGlzIG5vdCBz
ZXQKIyBDT05GSUdfU05EX1ZJQTgyWFggaXMgbm90IHNldAojIENPTkZJR19TTkRfVklBODJYWF9N
T0RFTSBpcyBub3Qgc2V0CiMgQ09ORklHX1NORF9WSVJUVU9TTyBpcyBub3Qgc2V0CiMgQ09ORklH
X1NORF9WWDIyMiBpcyBub3Qgc2V0CiMgQ09ORklHX1NORF9ZTUZQQ0kgaXMgbm90IHNldAoKIwoj
IEhELUF1ZGlvCiMKIyBDT05GSUdfU05EX0hEQV9JTlRFTCBpcyBub3Qgc2V0CiMgZW5kIG9mIEhE
LUF1ZGlvCgpDT05GSUdfU05EX0hEQV9QUkVBTExPQ19TSVpFPTY0CkNPTkZJR19TTkRfU1BJPXkK
Q09ORklHX1NORF9VU0I9eQpDT05GSUdfU05EX1VTQl9BVURJTz1tCkNPTkZJR19TTkRfVVNCX0FV
RElPX1VTRV9NRURJQV9DT05UUk9MTEVSPXkKIyBDT05GSUdfU05EX1VTQl9VQTEwMSBpcyBub3Qg
c2V0CiMgQ09ORklHX1NORF9VU0JfQ0FJQVEgaXMgbm90IHNldAojIENPTkZJR19TTkRfVVNCXzZG
SVJFIGlzIG5vdCBzZXQKIyBDT05GSUdfU05EX1VTQl9ISUZBQ0UgaXMgbm90IHNldAojIENPTkZJ
R19TTkRfQkNEMjAwMCBpcyBub3Qgc2V0CiMgQ09ORklHX1NORF9VU0JfUE9EIGlzIG5vdCBzZXQK
IyBDT05GSUdfU05EX1VTQl9QT0RIRCBpcyBub3Qgc2V0CiMgQ09ORklHX1NORF9VU0JfVE9ORVBP
UlQgaXMgbm90IHNldAojIENPTkZJR19TTkRfVVNCX1ZBUklBWCBpcyBub3Qgc2V0CkNPTkZJR19T
TkRfU09DPXkKQ09ORklHX1NORF9TT0NfR0VORVJJQ19ETUFFTkdJTkVfUENNPXkKQ09ORklHX1NO
RF9TT0NfQ09NUFJFU1M9eQpDT05GSUdfU05EX1NPQ19UT1BPTE9HWT15CiMgQ09ORklHX1NORF9T
T0NfQU1EX0FDUCBpcyBub3Qgc2V0CiMgQ09ORklHX1NORF9BVE1FTF9TT0MgaXMgbm90IHNldAoj
IENPTkZJR19TTkRfREVTSUdOV0FSRV9JMlMgaXMgbm90IHNldAoKIwojIFNvQyBBdWRpbyBmb3Ig
RnJlZXNjYWxlIENQVXMKIwoKIwojIENvbW1vbiBTb0MgQXVkaW8gb3B0aW9ucyBmb3IgRnJlZXNj
YWxlIENQVXM6CiMKQ09ORklHX1NORF9TT0NfRlNMX0FTUkM9eQpDT05GSUdfU05EX1NPQ19GU0xf
U0FJPXkKQ09ORklHX1NORF9TT0NfRlNMX0FVRE1JWD15CiMgQ09ORklHX1NORF9TT0NfRlNMX1NT
SSBpcyBub3Qgc2V0CkNPTkZJR19TTkRfU09DX0ZTTF9TUERJRj15CkNPTkZJR19TTkRfU09DX0ZT
TF9FU0FJPXkKQ09ORklHX1NORF9TT0NfRlNMX0RBST1tCkNPTkZJR19TTkRfU09DX0ZTTF9NSUNG
SUw9eQpDT05GSUdfU05EX1NPQ19GU0xfRUFTUkM9eQpDT05GSUdfU05EX1NPQ19GU0xfRFNQPXkK
Q09ORklHX1NORF9TT0NfRlNMX1JQTVNHX0kyUz15CkNPTkZJR19TTkRfU09DX0ZTTF9BVUQySFRY
PXkKQ09ORklHX1NORF9TT0NfRlNMX0RTUF9BVURJT01JWD15CkNPTkZJR19TTkRfU09DX0ZTTF9Y
Q1ZSPXkKQ09ORklHX1NORF9TT0NfRlNMX1VUSUxTPXkKQ09ORklHX1NORF9TT0NfSU1YX1BDTV9E
TUE9eQpDT05GSUdfU05EX1NPQ19JTVhfUENNX1JQTVNHPXkKIyBDT05GSUdfU05EX1NPQ19JTVhf
QVVETVVYIGlzIG5vdCBzZXQKQ09ORklHX1NORF9JTVhfU09DPXkKCiMKIyBTb0MgQXVkaW8gc3Vw
cG9ydCBmb3IgRnJlZXNjYWxlIGkuTVggYm9hcmRzOgojCkNPTkZJR19TTkRfU09DX0lNWF9BSzQ0
NTg9eQpDT05GSUdfU05EX1NPQ19JTVhfQUs1NTU4PXkKQ09ORklHX1NORF9TT0NfSU1YX0FLNDQ5
Nz15CkNPTkZJR19TTkRfU09DX0lNWF9XTTg5NjA9eQpDT05GSUdfU05EX1NPQ19JTVhfV004NTI0
PXkKIyBDT05GSUdfU05EX1NPQ19JTVhfU0lJOTAyWCBpcyBub3Qgc2V0CiMgQ09ORklHX1NORF9T
T0NfSU1YX1dNODk1OCBpcyBub3Qgc2V0CkNPTkZJR19TTkRfU09DX0lNWF9DUzQyODg4PXkKIyBD
T05GSUdfU05EX1NPQ19JTVhfV004OTYyIGlzIG5vdCBzZXQKQ09ORklHX1NORF9TT0NfSU1YX01J
Q0ZJTD15CkNPTkZJR19TTkRfU09DX0lNWF9SUE1TRz15CiMgQ09ORklHX1NORF9TT0NfSU1YX0VT
ODMyOCBpcyBub3Qgc2V0CiMgQ09ORklHX1NORF9TT0NfSU1YX1NHVEw1MDAwIGlzIG5vdCBzZXQK
Q09ORklHX1NORF9TT0NfSU1YX01RUz15CkNPTkZJR19TTkRfU09DX0lNWF9TUERJRj15CiMgQ09O
RklHX1NORF9TT0NfRlNMX0FTT0NfQ0FSRCBpcyBub3Qgc2V0CkNPTkZJR19TTkRfU09DX0lNWF9B
VURNSVg9eQpDT05GSUdfU05EX1NPQ19JTVhfUERNX01JQz15CkNPTkZJR19TTkRfU09DX0lNWF9E
U1A9eQojIENPTkZJR19TTkRfU09DX0lNWF9TSTQ3NlggaXMgbm90IHNldApDT05GSUdfU05EX1NP
Q19JTVhfQ0ROSERNST15CkNPTkZJR19TTkRfU09DX0lNWF9YQ1ZSPXkKIyBlbmQgb2YgU29DIEF1
ZGlvIGZvciBGcmVlc2NhbGUgQ1BVcwoKIyBDT05GSUdfU05EX0kyU19ISTYyMTBfSTJTIGlzIG5v
dCBzZXQKIyBDT05GSUdfU05EX1NPQ19JTUcgaXMgbm90IHNldAojIENPTkZJR19TTkRfU09DX01U
S19CVENWU0QgaXMgbm90IHNldApDT05GSUdfU05EX1NPQ19TT0ZfVE9QTEVWRUw9eQojIENPTkZJ
R19TTkRfU09DX1NPRl9QQ0kgaXMgbm90IHNldAojIENPTkZJR19TTkRfU09DX1NPRl9BQ1BJIGlz
IG5vdCBzZXQKQ09ORklHX1NORF9TT0NfU09GX09GPW0KQ09ORklHX1NORF9TT0NfU09GX09QVElP
TlM9bQojIENPTkZJR19TTkRfU09DX1NPRl9OT0NPREVDX1NVUFBPUlQgaXMgbm90IHNldAojIENP
TkZJR19TTkRfU09DX1NPRl9TVFJJQ1RfQUJJX0NIRUNLUyBpcyBub3Qgc2V0CiMgQ09ORklHX1NO
RF9TT0NfU09GX0RFQlVHIGlzIG5vdCBzZXQKQ09ORklHX1NORF9TT0NfU09GPW0KQ09ORklHX1NO
RF9TT0NfU09GX0lNWF9UT1BMRVZFTD15CkNPTkZJR19TTkRfU09DX1NPRl9JTVg4X1NVUFBPUlQ9
bQpDT05GSUdfU05EX1NPQ19TT0ZfSU1YOD1tCkNPTkZJR19TTkRfU09DX1NPRl9JTVg4TV9TVVBQ
T1JUPW0KQ09ORklHX1NORF9TT0NfU09GX0lNWDhNPW0KQ09ORklHX1NORF9TT0NfU09GX0lNWD1t
CgojCiMgU1RNaWNyb2VsZWN0cm9uaWNzIFNUTTMyIFNPQyBhdWRpbyBzdXBwb3J0CiMKIyBlbmQg
b2YgU1RNaWNyb2VsZWN0cm9uaWNzIFNUTTMyIFNPQyBhdWRpbyBzdXBwb3J0CgojIENPTkZJR19T
TkRfU09DX1hJTElOWF9JMlMgaXMgbm90IHNldAojIENPTkZJR19TTkRfU09DX1hJTElOWF9BVURJ
T19GT1JNQVRURVIgaXMgbm90IHNldAojIENPTkZJR19TTkRfU09DX1hJTElOWF9TUERJRiBpcyBu
b3Qgc2V0CiMgQ09ORklHX1NORF9TT0NfWFRGUEdBX0kyUyBpcyBub3Qgc2V0CiMgQ09ORklHX1pY
X1RETSBpcyBub3Qgc2V0CkNPTkZJR19TTkRfU09DX0kyQ19BTkRfU1BJPXkKCiMKIyBDT0RFQyBk
cml2ZXJzCiMKIyBDT05GSUdfU05EX1NPQ19BQzk3X0NPREVDIGlzIG5vdCBzZXQKIyBDT05GSUdf
U05EX1NPQ19BREFVMTcwMSBpcyBub3Qgc2V0CiMgQ09ORklHX1NORF9TT0NfQURBVTE3NjFfSTJD
IGlzIG5vdCBzZXQKIyBDT05GSUdfU05EX1NPQ19BREFVMTc2MV9TUEkgaXMgbm90IHNldAojIENP
TkZJR19TTkRfU09DX0FEQVU3MDAyIGlzIG5vdCBzZXQKIyBDT05GSUdfU05EX1NPQ19BSzQxMDQg
aXMgbm90IHNldAojIENPTkZJR19TTkRfU09DX0FLNDExOCBpcyBub3Qgc2V0CkNPTkZJR19TTkRf
U09DX0FLNDQ1OD15CiMgQ09ORklHX1NORF9TT0NfQUs0NTU0IGlzIG5vdCBzZXQKQ09ORklHX1NO
RF9TT0NfQUs0NjEzPW0KIyBDT05GSUdfU05EX1NPQ19BSzQ2NDIgaXMgbm90IHNldAojIENPTkZJ
R19TTkRfU09DX0FLNTM4NiBpcyBub3Qgc2V0CkNPTkZJR19TTkRfU09DX0FLNTU1OD15CiMgQ09O
RklHX1NORF9TT0NfQUxDNTYyMyBpcyBub3Qgc2V0CiMgQ09ORklHX1NORF9TT0NfQkQyODYyMyBp
cyBub3Qgc2V0CkNPTkZJR19TTkRfU09DX0JUX1NDTz15CiMgQ09ORklHX1NORF9TT0NfQ1JPU19F
Q19DT0RFQyBpcyBub3Qgc2V0CiMgQ09ORklHX1NORF9TT0NfQ1MzNUwzMiBpcyBub3Qgc2V0CiMg
Q09ORklHX1NORF9TT0NfQ1MzNUwzMyBpcyBub3Qgc2V0CiMgQ09ORklHX1NORF9TT0NfQ1MzNUwz
NCBpcyBub3Qgc2V0CiMgQ09ORklHX1NORF9TT0NfQ1MzNUwzNSBpcyBub3Qgc2V0CiMgQ09ORklH
X1NORF9TT0NfQ1MzNUwzNiBpcyBub3Qgc2V0CiMgQ09ORklHX1NORF9TT0NfQ1M0Mkw0MiBpcyBu
b3Qgc2V0CiMgQ09ORklHX1NORF9TT0NfQ1M0Mkw1MV9JMkMgaXMgbm90IHNldAojIENPTkZJR19T
TkRfU09DX0NTNDJMNTIgaXMgbm90IHNldAojIENPTkZJR19TTkRfU09DX0NTNDJMNTYgaXMgbm90
IHNldAojIENPTkZJR19TTkRfU09DX0NTNDJMNzMgaXMgbm90IHNldAojIENPTkZJR19TTkRfU09D
X0NTNDI2NSBpcyBub3Qgc2V0CiMgQ09ORklHX1NORF9TT0NfQ1M0MjcwIGlzIG5vdCBzZXQKIyBD
T05GSUdfU05EX1NPQ19DUzQyNzFfSTJDIGlzIG5vdCBzZXQKIyBDT05GSUdfU05EX1NPQ19DUzQy
NzFfU1BJIGlzIG5vdCBzZXQKQ09ORklHX1NORF9TT0NfQ1M0MlhYOD15CkNPTkZJR19TTkRfU09D
X0NTNDJYWDhfSTJDPXkKIyBDT05GSUdfU05EX1NPQ19DUzQzMTMwIGlzIG5vdCBzZXQKIyBDT05G
SUdfU05EX1NPQ19DUzQzNDEgaXMgbm90IHNldAojIENPTkZJR19TTkRfU09DX0NTNDM0OSBpcyBu
b3Qgc2V0CiMgQ09ORklHX1NORF9TT0NfQ1M1M0wzMCBpcyBub3Qgc2V0CiMgQ09ORklHX1NORF9T
T0NfQ1gyMDcyWCBpcyBub3Qgc2V0CkNPTkZJR19TTkRfU09DX0RNSUM9bQpDT05GSUdfU05EX1NP
Q19IRE1JX0NPREVDPXkKQ09ORklHX1NORF9TT0NfRVM3MTM0PW0KQ09ORklHX1NORF9TT0NfRVM3
MjQxPW0KIyBDT05GSUdfU05EX1NPQ19FUzgzMTYgaXMgbm90IHNldAojIENPTkZJR19TTkRfU09D
X0VTODMyOF9JMkMgaXMgbm90IHNldAojIENPTkZJR19TTkRfU09DX0VTODMyOF9TUEkgaXMgbm90
IHNldApDT05GSUdfU05EX1NPQ19GU0xfTVFTPXkKIyBDT05GSUdfU05EX1NPQ19HVE02MDEgaXMg
bm90IHNldAojIENPTkZJR19TTkRfU09DX0lOTk9fUkszMDM2IGlzIG5vdCBzZXQKIyBDT05GSUdf
U05EX1NPQ19NQVg5ODA4OCBpcyBub3Qgc2V0CkNPTkZJR19TTkRfU09DX01BWDk4MzU3QT1tCiMg
Q09ORklHX1NORF9TT0NfTUFYOTg1MDQgaXMgbm90IHNldAojIENPTkZJR19TTkRfU09DX01BWDk4
NjcgaXMgbm90IHNldAojIENPTkZJR19TTkRfU09DX01BWDk4OTI3IGlzIG5vdCBzZXQKIyBDT05G
SUdfU05EX1NPQ19NQVg5ODM3MyBpcyBub3Qgc2V0CiMgQ09ORklHX1NORF9TT0NfTUFYOTg2MCBp
cyBub3Qgc2V0CiMgQ09ORklHX1NORF9TT0NfTVNNODkxNl9XQ0RfQU5BTE9HIGlzIG5vdCBzZXQK
IyBDT05GSUdfU05EX1NPQ19NU004OTE2X1dDRF9ESUdJVEFMIGlzIG5vdCBzZXQKIyBDT05GSUdf
U05EX1NPQ19QQ00xNjgxIGlzIG5vdCBzZXQKIyBDT05GSUdfU05EX1NPQ19QQ00xNzg5X0kyQyBp
cyBub3Qgc2V0CiMgQ09ORklHX1NORF9TT0NfUENNMTc5WF9JMkMgaXMgbm90IHNldAojIENPTkZJ
R19TTkRfU09DX1BDTTE3OVhfU1BJIGlzIG5vdCBzZXQKIyBDT05GSUdfU05EX1NPQ19QQ00xODZY
X0kyQyBpcyBub3Qgc2V0CiMgQ09ORklHX1NORF9TT0NfUENNMTg2WF9TUEkgaXMgbm90IHNldAoj
IENPTkZJR19TTkRfU09DX1BDTTMwNjBfSTJDIGlzIG5vdCBzZXQKIyBDT05GSUdfU05EX1NPQ19Q
Q00zMDYwX1NQSSBpcyBub3Qgc2V0CkNPTkZJR19TTkRfU09DX1BDTTMxNjhBPW0KQ09ORklHX1NO
RF9TT0NfUENNMzE2OEFfSTJDPW0KIyBDT05GSUdfU05EX1NPQ19QQ00zMTY4QV9TUEkgaXMgbm90
IHNldAojIENPTkZJR19TTkRfU09DX1BDTTUxMnhfSTJDIGlzIG5vdCBzZXQKIyBDT05GSUdfU05E
X1NPQ19QQ001MTJ4X1NQSSBpcyBub3Qgc2V0CiMgQ09ORklHX1NORF9TT0NfUkszMzI4IGlzIG5v
dCBzZXQKIyBDT05GSUdfU05EX1NPQ19SVDU2MTYgaXMgbm90IHNldAojIENPTkZJR19TTkRfU09D
X1JUNTYzMSBpcyBub3Qgc2V0CkNPTkZJR19TTkRfU09DX1NHVEw1MDAwPW0KIyBDT05GSUdfU05E
X1NPQ19TSU1QTEVfQU1QTElGSUVSIGlzIG5vdCBzZXQKIyBDT05GSUdfU05EX1NPQ19TSVJGX0FV
RElPX0NPREVDIGlzIG5vdCBzZXQKQ09ORklHX1NORF9TT0NfU1BESUY9bQojIENPTkZJR19TTkRf
U09DX1NTTTIzMDUgaXMgbm90IHNldAojIENPTkZJR19TTkRfU09DX1NTTTI2MDJfU1BJIGlzIG5v
dCBzZXQKIyBDT05GSUdfU05EX1NPQ19TU00yNjAyX0kyQyBpcyBub3Qgc2V0CiMgQ09ORklHX1NO
RF9TT0NfU1NNNDU2NyBpcyBub3Qgc2V0CiMgQ09ORklHX1NORF9TT0NfU1RBMzJYIGlzIG5vdCBz
ZXQKIyBDT05GSUdfU05EX1NPQ19TVEEzNTAgaXMgbm90IHNldAojIENPTkZJR19TTkRfU09DX1NU
SV9TQVMgaXMgbm90IHNldAojIENPTkZJR19TTkRfU09DX1RBUzI1NTIgaXMgbm90IHNldAojIENP
TkZJR19TTkRfU09DX1RBUzUwODYgaXMgbm90IHNldApDT05GSUdfU05EX1NPQ19UQVM1NzFYPW0K
IyBDT05GSUdfU05EX1NPQ19UQVM1NzIwIGlzIG5vdCBzZXQKIyBDT05GSUdfU05EX1NPQ19UQVM2
NDI0IGlzIG5vdCBzZXQKIyBDT05GSUdfU05EX1NPQ19UREE3NDE5IGlzIG5vdCBzZXQKIyBDT05G
SUdfU05EX1NPQ19URkE5ODc5IGlzIG5vdCBzZXQKIyBDT05GSUdfU05EX1NPQ19UTFYzMjBBSUMy
M19JMkMgaXMgbm90IHNldAojIENPTkZJR19TTkRfU09DX1RMVjMyMEFJQzIzX1NQSSBpcyBub3Qg
c2V0CiMgQ09ORklHX1NORF9TT0NfVExWMzIwQUlDMzFYWCBpcyBub3Qgc2V0CiMgQ09ORklHX1NO
RF9TT0NfVExWMzIwQUlDMzJYNF9JMkMgaXMgbm90IHNldAojIENPTkZJR19TTkRfU09DX1RMVjMy
MEFJQzMyWDRfU1BJIGlzIG5vdCBzZXQKIyBDT05GSUdfU05EX1NPQ19UTFYzMjBBSUMzWCBpcyBu
b3Qgc2V0CiMgQ09ORklHX1NORF9TT0NfVFMzQTIyN0UgaXMgbm90IHNldAojIENPTkZJR19TTkRf
U09DX1RTQ1M0MlhYIGlzIG5vdCBzZXQKIyBDT05GSUdfU05EX1NPQ19UU0NTNDU0IGlzIG5vdCBz
ZXQKIyBDT05GSUdfU05EX1NPQ19VREExMzM0IGlzIG5vdCBzZXQKIyBDT05GSUdfU05EX1NPQ19X
TTg1MTAgaXMgbm90IHNldAojIENPTkZJR19TTkRfU09DX1dNODUyMyBpcyBub3Qgc2V0CkNPTkZJ
R19TTkRfU09DX1dNODUyND15CiMgQ09ORklHX1NORF9TT0NfV004NTgwIGlzIG5vdCBzZXQKIyBD
T05GSUdfU05EX1NPQ19XTTg3MTEgaXMgbm90IHNldAojIENPTkZJR19TTkRfU09DX1dNODcyOCBp
cyBub3Qgc2V0CiMgQ09ORklHX1NORF9TT0NfV004NzMxIGlzIG5vdCBzZXQKIyBDT05GSUdfU05E
X1NPQ19XTTg3MzcgaXMgbm90IHNldAojIENPTkZJR19TTkRfU09DX1dNODc0MSBpcyBub3Qgc2V0
CiMgQ09ORklHX1NORF9TT0NfV004NzUwIGlzIG5vdCBzZXQKIyBDT05GSUdfU05EX1NPQ19XTTg3
NTMgaXMgbm90IHNldAojIENPTkZJR19TTkRfU09DX1dNODc3MCBpcyBub3Qgc2V0CiMgQ09ORklH
X1NORF9TT0NfV004Nzc2IGlzIG5vdCBzZXQKIyBDT05GSUdfU05EX1NPQ19XTTg3ODIgaXMgbm90
IHNldAojIENPTkZJR19TTkRfU09DX1dNODgwNF9JMkMgaXMgbm90IHNldAojIENPTkZJR19TTkRf
U09DX1dNODgwNF9TUEkgaXMgbm90IHNldAojIENPTkZJR19TTkRfU09DX1dNODkwMyBpcyBub3Qg
c2V0CiMgQ09ORklHX1NORF9TT0NfV004OTA0IGlzIG5vdCBzZXQKQ09ORklHX1NORF9TT0NfV004
OTYwPXkKIyBDT05GSUdfU05EX1NPQ19XTTg5NjIgaXMgbm90IHNldAojIENPTkZJR19TTkRfU09D
X1dNODk3NCBpcyBub3Qgc2V0CiMgQ09ORklHX1NORF9TT0NfV004OTc4IGlzIG5vdCBzZXQKIyBD
T05GSUdfU05EX1NPQ19XTTg5ODUgaXMgbm90IHNldAojIENPTkZJR19TTkRfU09DX1pYX0FVRDk2
UDIyIGlzIG5vdCBzZXQKQ09ORklHX1NORF9TT0NfUlBNU0dfV004OTYwPXkKQ09ORklHX1NORF9T
T0NfUlBNU0dfQ1M0MlhYOD15CkNPTkZJR19TTkRfU09DX1JQTVNHX0FLNDQ5Nz15CiMgQ09ORklH
X1NORF9TT0NfTUFYOTc1OSBpcyBub3Qgc2V0CiMgQ09ORklHX1NORF9TT0NfTVQ2MzUxIGlzIG5v
dCBzZXQKIyBDT05GSUdfU05EX1NPQ19NVDYzNTggaXMgbm90IHNldAojIENPTkZJR19TTkRfU09D
X05BVTg1NDAgaXMgbm90IHNldAojIENPTkZJR19TTkRfU09DX05BVTg4MTAgaXMgbm90IHNldAoj
IENPTkZJR19TTkRfU09DX05BVTg4MjIgaXMgbm90IHNldAojIENPTkZJR19TTkRfU09DX05BVTg4
MjQgaXMgbm90IHNldAojIENPTkZJR19TTkRfU09DX1RQQTYxMzBBMiBpcyBub3Qgc2V0CiMgZW5k
IG9mIENPREVDIGRyaXZlcnMKCkNPTkZJR19TTkRfU0lNUExFX0NBUkRfVVRJTFM9eQpDT05GSUdf
U05EX1NJTVBMRV9DQVJEPXkKQ09ORklHX1NORF9BVURJT19HUkFQSF9DQVJEPXkKIyBDT05GSUdf
U05EX1hFTl9GUk9OVEVORCBpcyBub3Qgc2V0CgojCiMgSElEIHN1cHBvcnQKIwpDT05GSUdfSElE
PXkKIyBDT05GSUdfSElEX0JBVFRFUllfU1RSRU5HVEggaXMgbm90IHNldAojIENPTkZJR19ISURS
QVcgaXMgbm90IHNldAojIENPTkZJR19VSElEIGlzIG5vdCBzZXQKQ09ORklHX0hJRF9HRU5FUklD
PXkKCiMKIyBTcGVjaWFsIEhJRCBkcml2ZXJzCiMKQ09ORklHX0hJRF9BNFRFQ0g9eQojIENPTkZJ
R19ISURfQUNDVVRPVUNIIGlzIG5vdCBzZXQKIyBDT05GSUdfSElEX0FDUlVYIGlzIG5vdCBzZXQK
Q09ORklHX0hJRF9BUFBMRT15CiMgQ09ORklHX0hJRF9BUFBMRUlSIGlzIG5vdCBzZXQKIyBDT05G
SUdfSElEX0FTVVMgaXMgbm90IHNldAojIENPTkZJR19ISURfQVVSRUFMIGlzIG5vdCBzZXQKQ09O
RklHX0hJRF9CRUxLSU49eQojIENPTkZJR19ISURfQkVUT1BfRkYgaXMgbm90IHNldAojIENPTkZJ
R19ISURfQklHQkVOX0ZGIGlzIG5vdCBzZXQKQ09ORklHX0hJRF9DSEVSUlk9eQpDT05GSUdfSElE
X0NISUNPTlk9eQojIENPTkZJR19ISURfQ09SU0FJUiBpcyBub3Qgc2V0CiMgQ09ORklHX0hJRF9D
T1VHQVIgaXMgbm90IHNldAojIENPTkZJR19ISURfTUFDQUxMWSBpcyBub3Qgc2V0CiMgQ09ORklH
X0hJRF9QUk9ESUtFWVMgaXMgbm90IHNldAojIENPTkZJR19ISURfQ01FRElBIGlzIG5vdCBzZXQK
IyBDT05GSUdfSElEX0NSRUFUSVZFX1NCMDU0MCBpcyBub3Qgc2V0CkNPTkZJR19ISURfQ1lQUkVT
Uz15CiMgQ09ORklHX0hJRF9EUkFHT05SSVNFIGlzIG5vdCBzZXQKIyBDT05GSUdfSElEX0VNU19G
RiBpcyBub3Qgc2V0CiMgQ09ORklHX0hJRF9FTEFOIGlzIG5vdCBzZXQKIyBDT05GSUdfSElEX0VM
RUNPTSBpcyBub3Qgc2V0CiMgQ09ORklHX0hJRF9FTE8gaXMgbm90IHNldApDT05GSUdfSElEX0Va
S0VZPXkKIyBDT05GSUdfSElEX0dFTUJJUkQgaXMgbm90IHNldAojIENPTkZJR19ISURfR0ZSTSBp
cyBub3Qgc2V0CiMgQ09ORklHX0hJRF9IT0xURUsgaXMgbm90IHNldAojIENPTkZJR19ISURfR09P
R0xFX0hBTU1FUiBpcyBub3Qgc2V0CiMgQ09ORklHX0hJRF9HVDY4M1IgaXMgbm90IHNldAojIENP
TkZJR19ISURfS0VZVE9VQ0ggaXMgbm90IHNldAojIENPTkZJR19ISURfS1lFIGlzIG5vdCBzZXQK
IyBDT05GSUdfSElEX1VDTE9HSUMgaXMgbm90IHNldAojIENPTkZJR19ISURfV0FMVE9QIGlzIG5v
dCBzZXQKIyBDT05GSUdfSElEX1ZJRVdTT05JQyBpcyBub3Qgc2V0CiMgQ09ORklHX0hJRF9HWVJB
VElPTiBpcyBub3Qgc2V0CiMgQ09ORklHX0hJRF9JQ0FERSBpcyBub3Qgc2V0CkNPTkZJR19ISURf
SVRFPXkKIyBDT05GSUdfSElEX0pBQlJBIGlzIG5vdCBzZXQKIyBDT05GSUdfSElEX1RXSU5IQU4g
aXMgbm90IHNldApDT05GSUdfSElEX0tFTlNJTkdUT049eQojIENPTkZJR19ISURfTENQT1dFUiBp
cyBub3Qgc2V0CiMgQ09ORklHX0hJRF9MRUQgaXMgbm90IHNldAojIENPTkZJR19ISURfTEVOT1ZP
IGlzIG5vdCBzZXQKQ09ORklHX0hJRF9MT0dJVEVDSD15CiMgQ09ORklHX0hJRF9MT0dJVEVDSF9I
SURQUCBpcyBub3Qgc2V0CiMgQ09ORklHX0xPR0lURUNIX0ZGIGlzIG5vdCBzZXQKIyBDT05GSUdf
TE9HSVJVTUJMRVBBRDJfRkYgaXMgbm90IHNldAojIENPTkZJR19MT0dJRzk0MF9GRiBpcyBub3Qg
c2V0CiMgQ09ORklHX0xPR0lXSEVFTFNfRkYgaXMgbm90IHNldAojIENPTkZJR19ISURfTUFHSUNN
T1VTRSBpcyBub3Qgc2V0CiMgQ09ORklHX0hJRF9NQUxUUk9OIGlzIG5vdCBzZXQKIyBDT05GSUdf
SElEX01BWUZMQVNIIGlzIG5vdCBzZXQKQ09ORklHX0hJRF9SRURSQUdPTj15CkNPTkZJR19ISURf
TUlDUk9TT0ZUPXkKQ09ORklHX0hJRF9NT05URVJFWT15CiMgQ09ORklHX0hJRF9NVUxUSVRPVUNI
IGlzIG5vdCBzZXQKIyBDT05GSUdfSElEX05USSBpcyBub3Qgc2V0CiMgQ09ORklHX0hJRF9OVFJJ
RyBpcyBub3Qgc2V0CiMgQ09ORklHX0hJRF9PUlRFSyBpcyBub3Qgc2V0CiMgQ09ORklHX0hJRF9Q
QU5USEVSTE9SRCBpcyBub3Qgc2V0CiMgQ09ORklHX0hJRF9QRU5NT1VOVCBpcyBub3Qgc2V0CiMg
Q09ORklHX0hJRF9QRVRBTFlOWCBpcyBub3Qgc2V0CiMgQ09ORklHX0hJRF9QSUNPTENEIGlzIG5v
dCBzZXQKIyBDT05GSUdfSElEX1BMQU5UUk9OSUNTIGlzIG5vdCBzZXQKIyBDT05GSUdfSElEX1BS
SU1BWCBpcyBub3Qgc2V0CiMgQ09ORklHX0hJRF9SRVRST0RFIGlzIG5vdCBzZXQKIyBDT05GSUdf
SElEX1JPQ0NBVCBpcyBub3Qgc2V0CiMgQ09ORklHX0hJRF9TQUlURUsgaXMgbm90IHNldAojIENP
TkZJR19ISURfU0FNU1VORyBpcyBub3Qgc2V0CiMgQ09ORklHX0hJRF9TT05ZIGlzIG5vdCBzZXQK
IyBDT05GSUdfSElEX1NQRUVETElOSyBpcyBub3Qgc2V0CiMgQ09ORklHX0hJRF9TVEVBTSBpcyBu
b3Qgc2V0CiMgQ09ORklHX0hJRF9TVEVFTFNFUklFUyBpcyBub3Qgc2V0CiMgQ09ORklHX0hJRF9T
VU5QTFVTIGlzIG5vdCBzZXQKIyBDT05GSUdfSElEX1JNSSBpcyBub3Qgc2V0CiMgQ09ORklHX0hJ
RF9HUkVFTkFTSUEgaXMgbm90IHNldAojIENPTkZJR19ISURfU01BUlRKT1lQTFVTIGlzIG5vdCBz
ZXQKIyBDT05GSUdfSElEX1RJVk8gaXMgbm90IHNldAojIENPTkZJR19ISURfVE9QU0VFRCBpcyBu
b3Qgc2V0CiMgQ09ORklHX0hJRF9USElOR00gaXMgbm90IHNldAojIENPTkZJR19ISURfVEhSVVNU
TUFTVEVSIGlzIG5vdCBzZXQKIyBDT05GSUdfSElEX1VEUkFXX1BTMyBpcyBub3Qgc2V0CiMgQ09O
RklHX0hJRF9VMkZaRVJPIGlzIG5vdCBzZXQKIyBDT05GSUdfSElEX1dBQ09NIGlzIG5vdCBzZXQK
IyBDT05GSUdfSElEX1dJSU1PVEUgaXMgbm90IHNldAojIENPTkZJR19ISURfWElOTU8gaXMgbm90
IHNldAojIENPTkZJR19ISURfWkVST1BMVVMgaXMgbm90IHNldAojIENPTkZJR19ISURfWllEQUNS
T04gaXMgbm90IHNldAojIENPTkZJR19ISURfU0VOU09SX0hVQiBpcyBub3Qgc2V0CiMgQ09ORklH
X0hJRF9BTFBTIGlzIG5vdCBzZXQKIyBlbmQgb2YgU3BlY2lhbCBISUQgZHJpdmVycwoKIwojIFVT
QiBISUQgc3VwcG9ydAojCkNPTkZJR19VU0JfSElEPXkKIyBDT05GSUdfSElEX1BJRCBpcyBub3Qg
c2V0CiMgQ09ORklHX1VTQl9ISURERVYgaXMgbm90IHNldAojIGVuZCBvZiBVU0IgSElEIHN1cHBv
cnQKCiMKIyBJMkMgSElEIHN1cHBvcnQKIwpDT05GSUdfSTJDX0hJRD1tCiMgZW5kIG9mIEkyQyBI
SUQgc3VwcG9ydAojIGVuZCBvZiBISUQgc3VwcG9ydAoKQ09ORklHX1VTQl9PSENJX0xJVFRMRV9F
TkRJQU49eQpDT05GSUdfVVNCX1NVUFBPUlQ9eQpDT05GSUdfVVNCX0NPTU1PTj15CiMgQ09ORklH
X1VTQl9MRURfVFJJRyBpcyBub3Qgc2V0CkNPTkZJR19VU0JfVUxQSV9CVVM9eQojIENPTkZJR19V
U0JfQ09OTl9HUElPIGlzIG5vdCBzZXQKQ09ORklHX1VTQl9BUkNIX0hBU19IQ0Q9eQpDT05GSUdf
VVNCPXkKQ09ORklHX1VTQl9QQ0k9eQojIENPTkZJR19VU0JfQU5OT1VOQ0VfTkVXX0RFVklDRVMg
aXMgbm90IHNldAoKIwojIE1pc2NlbGxhbmVvdXMgVVNCIG9wdGlvbnMKIwpDT05GSUdfVVNCX0RF
RkFVTFRfUEVSU0lTVD15CiMgQ09ORklHX1VTQl9EWU5BTUlDX01JTk9SUyBpcyBub3Qgc2V0CkNP
TkZJR19VU0JfT1RHPXkKQ09ORklHX1VTQl9PVEdfV0hJVEVMSVNUPXkKIyBDT05GSUdfVVNCX09U
R19CTEFDS0xJU1RfSFVCIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX09UR19GU00gaXMgbm90IHNl
dAojIENPTkZJR19VU0JfTEVEU19UUklHR0VSX1VTQlBPUlQgaXMgbm90IHNldApDT05GSUdfVVNC
X0FVVE9TVVNQRU5EX0RFTEFZPTIKIyBDT05GSUdfVVNCX01PTiBpcyBub3Qgc2V0CgojCiMgVVNC
IEhvc3QgQ29udHJvbGxlciBEcml2ZXJzCiMKIyBDT05GSUdfVVNCX0M2N1gwMF9IQ0QgaXMgbm90
IHNldApDT05GSUdfVVNCX1hIQ0lfSENEPXkKIyBDT05GSUdfVVNCX1hIQ0lfREJHQ0FQIGlzIG5v
dCBzZXQKQ09ORklHX1VTQl9YSENJX1BDST15CkNPTkZJR19VU0JfWEhDSV9QTEFURk9STT15CkNP
TkZJR19VU0JfRUhDSV9IQ0Q9eQpDT05GSUdfVVNCX0VIQ0lfUk9PVF9IVUJfVFQ9eQpDT05GSUdf
VVNCX0VIQ0lfVFRfTkVXU0NIRUQ9eQpDT05GSUdfVVNCX0VIQ0lfUENJPXkKIyBDT05GSUdfVVNC
X0VIQ0lfRlNMIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX0VIQ0lfTVhDIGlzIG5vdCBzZXQKQ09O
RklHX1VTQl9FSENJX0hDRF9QTEFURk9STT15CiMgQ09ORklHX1VTQl9PWFUyMTBIUF9IQ0QgaXMg
bm90IHNldAojIENPTkZJR19VU0JfSVNQMTE2WF9IQ0QgaXMgbm90IHNldAojIENPTkZJR19VU0Jf
Rk9URzIxMF9IQ0QgaXMgbm90IHNldAojIENPTkZJR19VU0JfTUFYMzQyMV9IQ0QgaXMgbm90IHNl
dApDT05GSUdfVVNCX09IQ0lfSENEPXkKQ09ORklHX1VTQl9PSENJX0hDRF9QQ0k9eQpDT05GSUdf
VVNCX09IQ0lfSENEX1BMQVRGT1JNPXkKIyBDT05GSUdfVVNCX1VIQ0lfSENEIGlzIG5vdCBzZXQK
IyBDT05GSUdfVVNCX1NMODExX0hDRCBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9SOEE2NjU5N19I
Q0QgaXMgbm90IHNldApDT05GSUdfVVNCX0hDRF9URVNUX01PREU9eQoKIwojIFVTQiBEZXZpY2Ug
Q2xhc3MgZHJpdmVycwojCkNPTkZJR19VU0JfQUNNPW0KIyBDT05GSUdfVVNCX1BSSU5URVIgaXMg
bm90IHNldAojIENPTkZJR19VU0JfV0RNIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX1RNQyBpcyBu
b3Qgc2V0CgojCiMgTk9URTogVVNCX1NUT1JBR0UgZGVwZW5kcyBvbiBTQ1NJIGJ1dCBCTEtfREVW
X1NEIG1heQojCgojCiMgYWxzbyBiZSBuZWVkZWQ7IHNlZSBVU0JfU1RPUkFHRSBIZWxwIGZvciBt
b3JlIGluZm8KIwpDT05GSUdfVVNCX1NUT1JBR0U9eQojIENPTkZJR19VU0JfU1RPUkFHRV9ERUJV
RyBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9TVE9SQUdFX1JFQUxURUsgaXMgbm90IHNldAojIENP
TkZJR19VU0JfU1RPUkFHRV9EQVRBRkFCIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX1NUT1JBR0Vf
RlJFRUNPTSBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9TVE9SQUdFX0lTRDIwMCBpcyBub3Qgc2V0
CiMgQ09ORklHX1VTQl9TVE9SQUdFX1VTQkFUIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX1NUT1JB
R0VfU0REUjA5IGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX1NUT1JBR0VfU0REUjU1IGlzIG5vdCBz
ZXQKIyBDT05GSUdfVVNCX1NUT1JBR0VfSlVNUFNIT1QgaXMgbm90IHNldAojIENPTkZJR19VU0Jf
U1RPUkFHRV9BTEFVREEgaXMgbm90IHNldAojIENPTkZJR19VU0JfU1RPUkFHRV9PTkVUT1VDSCBp
cyBub3Qgc2V0CiMgQ09ORklHX1VTQl9TVE9SQUdFX0tBUk1BIGlzIG5vdCBzZXQKIyBDT05GSUdf
VVNCX1NUT1JBR0VfQ1lQUkVTU19BVEFDQiBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9TVE9SQUdF
X0VORV9VQjYyNTAgaXMgbm90IHNldAojIENPTkZJR19VU0JfVUFTIGlzIG5vdCBzZXQKCiMKIyBV
U0IgSW1hZ2luZyBkZXZpY2VzCiMKIyBDT05GSUdfVVNCX01EQzgwMCBpcyBub3Qgc2V0CiMgQ09O
RklHX1VTQl9NSUNST1RFSyBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQklQX0NPUkUgaXMgbm90IHNl
dApDT05GSUdfVVNCX0NETlMzPXkKQ09ORklHX1VTQl9DRE5TM19HQURHRVQ9eQpDT05GSUdfVVNC
X0NETlMzX0hPU1Q9eQpDT05GSUdfVVNCX01VU0JfSERSQz15CiMgQ09ORklHX1VTQl9NVVNCX0hP
U1QgaXMgbm90IHNldAojIENPTkZJR19VU0JfTVVTQl9HQURHRVQgaXMgbm90IHNldApDT05GSUdf
VVNCX01VU0JfRFVBTF9ST0xFPXkKCiMKIyBQbGF0Zm9ybSBHbHVlIExheWVyCiMKCiMKIyBNVVNC
IERNQSBtb2RlCiMKIyBDT05GSUdfTVVTQl9QSU9fT05MWSBpcyBub3Qgc2V0CkNPTkZJR19VU0Jf
RFdDMz15CiMgQ09ORklHX1VTQl9EV0MzX1VMUEkgaXMgbm90IHNldAojIENPTkZJR19VU0JfRFdD
M19IT1NUIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX0RXQzNfR0FER0VUIGlzIG5vdCBzZXQKQ09O
RklHX1VTQl9EV0MzX0RVQUxfUk9MRT15CgojCiMgUGxhdGZvcm0gR2x1ZSBEcml2ZXIgU3VwcG9y
dAojCkNPTkZJR19VU0JfRFdDM19QQ0k9eQpDT05GSUdfVVNCX0RXQzNfSEFQUz15CkNPTkZJR19V
U0JfRFdDM19PRl9TSU1QTEU9eQpDT05GSUdfVVNCX0RXQzNfSU1YOE1QPXkKQ09ORklHX1VTQl9E
V0MyPXkKIyBDT05GSUdfVVNCX0RXQzJfSE9TVCBpcyBub3Qgc2V0CgojCiMgR2FkZ2V0L0R1YWwt
cm9sZSBtb2RlIHJlcXVpcmVzIFVTQiBHYWRnZXQgc3VwcG9ydCB0byBiZSBlbmFibGVkCiMKIyBD
T05GSUdfVVNCX0RXQzJfUEVSSVBIRVJBTCBpcyBub3Qgc2V0CkNPTkZJR19VU0JfRFdDMl9EVUFM
X1JPTEU9eQojIENPTkZJR19VU0JfRFdDMl9QQ0kgaXMgbm90IHNldAojIENPTkZJR19VU0JfRFdD
Ml9ERUJVRyBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9EV0MyX1RSQUNLX01JU1NFRF9TT0ZTIGlz
IG5vdCBzZXQKQ09ORklHX1VTQl9DSElQSURFQT15CkNPTkZJR19VU0JfQ0hJUElERUFfT0Y9eQpD
T05GSUdfVVNCX0NISVBJREVBX1BDST15CkNPTkZJR19VU0JfQ0hJUElERUFfVURDPXkKQ09ORklH
X1VTQl9DSElQSURFQV9IT1NUPXkKQ09ORklHX1VTQl9JU1AxNzYwPXkKQ09ORklHX1VTQl9JU1Ax
NzYwX0hDRD15CkNPTkZJR19VU0JfSVNQMTc2MV9VREM9eQojIENPTkZJR19VU0JfSVNQMTc2MF9I
T1NUX1JPTEUgaXMgbm90IHNldAojIENPTkZJR19VU0JfSVNQMTc2MF9HQURHRVRfUk9MRSBpcyBu
b3Qgc2V0CkNPTkZJR19VU0JfSVNQMTc2MF9EVUFMX1JPTEU9eQoKIwojIFVTQiBwb3J0IGRyaXZl
cnMKIwpDT05GSUdfVVNCX1NFUklBTD15CkNPTkZJR19VU0JfU0VSSUFMX0NPTlNPTEU9eQpDT05G
SUdfVVNCX1NFUklBTF9HRU5FUklDPXkKQ09ORklHX1VTQl9TRVJJQUxfU0lNUExFPXkKIyBDT05G
SUdfVVNCX1NFUklBTF9BSVJDQUJMRSBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9TRVJJQUxfQVJL
MzExNiBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9TRVJJQUxfQkVMS0lOIGlzIG5vdCBzZXQKIyBD
T05GSUdfVVNCX1NFUklBTF9DSDM0MSBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9TRVJJQUxfV0hJ
VEVIRUFUIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX1NFUklBTF9ESUdJX0FDQ0VMRVBPUlQgaXMg
bm90IHNldAojIENPTkZJR19VU0JfU0VSSUFMX0NQMjEwWCBpcyBub3Qgc2V0CiMgQ09ORklHX1VT
Ql9TRVJJQUxfQ1lQUkVTU19NOCBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9TRVJJQUxfRU1QRUcg
aXMgbm90IHNldApDT05GSUdfVVNCX1NFUklBTF9GVERJX1NJTz15CiMgQ09ORklHX1VTQl9TRVJJ
QUxfVklTT1IgaXMgbm90IHNldAojIENPTkZJR19VU0JfU0VSSUFMX0lQQVEgaXMgbm90IHNldAoj
IENPTkZJR19VU0JfU0VSSUFMX0lSIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX1NFUklBTF9FREdF
UE9SVCBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9TRVJJQUxfRURHRVBPUlRfVEkgaXMgbm90IHNl
dAojIENPTkZJR19VU0JfU0VSSUFMX0Y4MTIzMiBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9TRVJJ
QUxfRjgxNTNYIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX1NFUklBTF9HQVJNSU4gaXMgbm90IHNl
dAojIENPTkZJR19VU0JfU0VSSUFMX0lQVyBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9TRVJJQUxf
SVVVIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX1NFUklBTF9LRVlTUEFOX1BEQSBpcyBub3Qgc2V0
CiMgQ09ORklHX1VTQl9TRVJJQUxfS0VZU1BBTiBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9TRVJJ
QUxfS0xTSSBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9TRVJJQUxfS09CSUxfU0NUIGlzIG5vdCBz
ZXQKIyBDT05GSUdfVVNCX1NFUklBTF9NQ1RfVTIzMiBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9T
RVJJQUxfTUVUUk8gaXMgbm90IHNldAojIENPTkZJR19VU0JfU0VSSUFMX01PUzc3MjAgaXMgbm90
IHNldAojIENPTkZJR19VU0JfU0VSSUFMX01PUzc4NDAgaXMgbm90IHNldAojIENPTkZJR19VU0Jf
U0VSSUFMX01YVVBPUlQgaXMgbm90IHNldAojIENPTkZJR19VU0JfU0VSSUFMX05BVk1BTiBpcyBu
b3Qgc2V0CiMgQ09ORklHX1VTQl9TRVJJQUxfUEwyMzAzIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNC
X1NFUklBTF9PVEk2ODU4IGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX1NFUklBTF9RQ0FVWCBpcyBu
b3Qgc2V0CiMgQ09ORklHX1VTQl9TRVJJQUxfUVVBTENPTU0gaXMgbm90IHNldAojIENPTkZJR19V
U0JfU0VSSUFMX1NQQ1A4WDUgaXMgbm90IHNldAojIENPTkZJR19VU0JfU0VSSUFMX1NBRkUgaXMg
bm90IHNldAojIENPTkZJR19VU0JfU0VSSUFMX1NJRVJSQVdJUkVMRVNTIGlzIG5vdCBzZXQKIyBD
T05GSUdfVVNCX1NFUklBTF9TWU1CT0wgaXMgbm90IHNldAojIENPTkZJR19VU0JfU0VSSUFMX1RJ
IGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX1NFUklBTF9DWUJFUkpBQ0sgaXMgbm90IHNldAojIENP
TkZJR19VU0JfU0VSSUFMX1hJUkNPTSBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9TRVJJQUxfT1BU
SU9OIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX1NFUklBTF9PTU5JTkVUIGlzIG5vdCBzZXQKIyBD
T05GSUdfVVNCX1NFUklBTF9PUFRJQ09OIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX1NFUklBTF9Y
U0VOU19NVCBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9TRVJJQUxfV0lTSEJPTkUgaXMgbm90IHNl
dAojIENPTkZJR19VU0JfU0VSSUFMX1NTVTEwMCBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9TRVJJ
QUxfUVQyIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX1NFUklBTF9VUEQ3OEYwNzMwIGlzIG5vdCBz
ZXQKIyBDT05GSUdfVVNCX1NFUklBTF9ERUJVRyBpcyBub3Qgc2V0CgojCiMgVVNCIE1pc2NlbGxh
bmVvdXMgZHJpdmVycwojCiMgQ09ORklHX1VTQl9FTUk2MiBpcyBub3Qgc2V0CiMgQ09ORklHX1VT
Ql9FTUkyNiBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9BRFVUVVggaXMgbm90IHNldAojIENPTkZJ
R19VU0JfU0VWU0VHIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX0xFR09UT1dFUiBpcyBub3Qgc2V0
CiMgQ09ORklHX1VTQl9MQ0QgaXMgbm90IHNldAojIENPTkZJR19VU0JfQ1lQUkVTU19DWTdDNjMg
aXMgbm90IHNldAojIENPTkZJR19VU0JfQ1lUSEVSTSBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9J
RE1PVVNFIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX0ZURElfRUxBTiBpcyBub3Qgc2V0CiMgQ09O
RklHX1VTQl9BUFBMRURJU1BMQVkgaXMgbm90IHNldAojIENPTkZJR19VU0JfU0lTVVNCVkdBIGlz
IG5vdCBzZXQKIyBDT05GSUdfVVNCX0xEIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX1RSQU5DRVZJ
QlJBVE9SIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX0lPV0FSUklPUiBpcyBub3Qgc2V0CkNPTkZJ
R19VU0JfVEVTVD1tCkNPTkZJR19VU0JfRUhTRVRfVEVTVF9GSVhUVVJFPW0KIyBDT05GSUdfVVNC
X0lTSUdIVEZXIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX1lVUkVYIGlzIG5vdCBzZXQKIyBDT05G
SUdfVVNCX0VaVVNCX0ZYMiBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9IVUJfVVNCMjUxWEIgaXMg
bm90IHNldApDT05GSUdfVVNCX0hTSUNfVVNCMzUwMz15CiMgQ09ORklHX1VTQl9IU0lDX1VTQjQ2
MDQgaXMgbm90IHNldAojIENPTkZJR19VU0JfTElOS19MQVlFUl9URVNUIGlzIG5vdCBzZXQKIyBD
T05GSUdfVVNCX0NIQU9TS0VZIGlzIG5vdCBzZXQKCiMKIyBVU0IgUGh5c2ljYWwgTGF5ZXIgZHJp
dmVycwojCkNPTkZJR19VU0JfUEhZPXkKQ09ORklHX05PUF9VU0JfWENFSVY9eQojIENPTkZJR19V
U0JfR1BJT19WQlVTIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX0lTUDEzMDEgaXMgbm90IHNldApD
T05GSUdfVVNCX01YU19QSFk9eQpDT05GSUdfVVNCX1VMUEk9eQpDT05GSUdfVVNCX1VMUElfVklF
V1BPUlQ9eQojIGVuZCBvZiBVU0IgUGh5c2ljYWwgTGF5ZXIgZHJpdmVycwoKQ09ORklHX1VTQl9H
QURHRVQ9eQojIENPTkZJR19VU0JfR0FER0VUX0RFQlVHIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNC
X0dBREdFVF9ERUJVR19GSUxFUyBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9HQURHRVRfREVCVUdf
RlMgaXMgbm90IHNldApDT05GSUdfVVNCX0dBREdFVF9WQlVTX0RSQVc9MgpDT05GSUdfVVNCX0dB
REdFVF9TVE9SQUdFX05VTV9CVUZGRVJTPTIKIyBDT05GSUdfVV9TRVJJQUxfQ09OU09MRSBpcyBu
b3Qgc2V0CgojCiMgVVNCIFBlcmlwaGVyYWwgQ29udHJvbGxlcgojCiMgQ09ORklHX1VTQl9GU0xf
VVNCMiBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9GT1RHMjEwX1VEQyBpcyBub3Qgc2V0CiMgQ09O
RklHX1VTQl9HUl9VREMgaXMgbm90IHNldAojIENPTkZJR19VU0JfUjhBNjY1OTcgaXMgbm90IHNl
dAojIENPTkZJR19VU0JfUFhBMjdYIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX01WX1VEQyBpcyBu
b3Qgc2V0CiMgQ09ORklHX1VTQl9NVl9VM0QgaXMgbm90IHNldApDT05GSUdfVVNCX1NOUF9DT1JF
PXkKQ09ORklHX1VTQl9TTlBfVURDX1BMQVQ9eQojIENPTkZJR19VU0JfTTY2NTkyIGlzIG5vdCBz
ZXQKQ09ORklHX1VTQl9CRENfVURDPXkKCiMKIyBQbGF0Zm9ybSBTdXBwb3J0CiMKIyBDT05GSUdf
VVNCX0FNRDU1MzZVREMgaXMgbm90IHNldAojIENPTkZJR19VU0JfTkVUMjI3MiBpcyBub3Qgc2V0
CiMgQ09ORklHX1VTQl9ORVQyMjgwIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX0dPS1UgaXMgbm90
IHNldAojIENPTkZJR19VU0JfRUcyMFQgaXMgbm90IHNldAojIENPTkZJR19VU0JfR0FER0VUX1hJ
TElOWCBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9EVU1NWV9IQ0QgaXMgbm90IHNldAojIGVuZCBv
ZiBVU0IgUGVyaXBoZXJhbCBDb250cm9sbGVyCgpDT05GSUdfVVNCX0xJQkNPTVBPU0lURT15CkNP
TkZJR19VU0JfRl9BQ009eQpDT05GSUdfVVNCX0ZfU1NfTEI9eQpDT05GSUdfVVNCX1VfU0VSSUFM
PXkKQ09ORklHX1VTQl9VX0VUSEVSPXkKQ09ORklHX1VTQl9VX0FVRElPPXkKQ09ORklHX1VTQl9G
X1NFUklBTD15CkNPTkZJR19VU0JfRl9PQkVYPXkKQ09ORklHX1VTQl9GX05DTT15CkNPTkZJR19V
U0JfRl9FQ009eQpDT05GSUdfVVNCX0ZfRUVNPXkKQ09ORklHX1VTQl9GX1NVQlNFVD15CkNPTkZJ
R19VU0JfRl9STkRJUz15CkNPTkZJR19VU0JfRl9NQVNTX1NUT1JBR0U9eQpDT05GSUdfVVNCX0Zf
RlM9eQpDT05GSUdfVVNCX0ZfVUFDMT15CkNPTkZJR19VU0JfRl9VQUMxX0xFR0FDWT15CkNPTkZJ
R19VU0JfRl9VQUMyPXkKQ09ORklHX1VTQl9GX1VWQz15CkNPTkZJR19VU0JfRl9NSURJPXkKQ09O
RklHX1VTQl9GX0hJRD15CkNPTkZJR19VU0JfQ09ORklHRlM9eQpDT05GSUdfVVNCX0NPTkZJR0ZT
X1NFUklBTD15CkNPTkZJR19VU0JfQ09ORklHRlNfQUNNPXkKQ09ORklHX1VTQl9DT05GSUdGU19P
QkVYPXkKQ09ORklHX1VTQl9DT05GSUdGU19OQ009eQpDT05GSUdfVVNCX0NPTkZJR0ZTX0VDTT15
CkNPTkZJR19VU0JfQ09ORklHRlNfRUNNX1NVQlNFVD15CkNPTkZJR19VU0JfQ09ORklHRlNfUk5E
SVM9eQpDT05GSUdfVVNCX0NPTkZJR0ZTX0VFTT15CkNPTkZJR19VU0JfQ09ORklHRlNfTUFTU19T
VE9SQUdFPXkKQ09ORklHX1VTQl9DT05GSUdGU19GX0xCX1NTPXkKQ09ORklHX1VTQl9DT05GSUdG
U19GX0ZTPXkKQ09ORklHX1VTQl9DT05GSUdGU19GX1VBQzE9eQpDT05GSUdfVVNCX0NPTkZJR0ZT
X0ZfVUFDMV9MRUdBQ1k9eQpDT05GSUdfVVNCX0NPTkZJR0ZTX0ZfVUFDMj15CkNPTkZJR19VU0Jf
Q09ORklHRlNfRl9NSURJPXkKQ09ORklHX1VTQl9DT05GSUdGU19GX0hJRD15CkNPTkZJR19VU0Jf
Q09ORklHRlNfRl9VVkM9eQojIENPTkZJR19VU0JfQ09ORklHRlNfRl9QUklOVEVSIGlzIG5vdCBz
ZXQKQ09ORklHX1VTQl9aRVJPPW0KIyBDT05GSUdfVVNCX1pFUk9fSE5QVEVTVCBpcyBub3Qgc2V0
CkNPTkZJR19VU0JfQVVESU89bQojIENPTkZJR19HQURHRVRfVUFDMSBpcyBub3Qgc2V0CkNPTkZJ
R19VU0JfRVRIPW0KQ09ORklHX1VTQl9FVEhfUk5ESVM9eQojIENPTkZJR19VU0JfRVRIX0VFTSBp
cyBub3Qgc2V0CiMgQ09ORklHX1VTQl9HX05DTSBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9HQURH
RVRGUyBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9GVU5DVElPTkZTIGlzIG5vdCBzZXQKQ09ORklH
X1VTQl9NQVNTX1NUT1JBR0U9bQpDT05GSUdfVVNCX0dfU0VSSUFMPW0KIyBDT05GSUdfVVNCX01J
RElfR0FER0VUIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX0dfUFJJTlRFUiBpcyBub3Qgc2V0CiMg
Q09ORklHX1VTQl9DRENfQ09NUE9TSVRFIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX0dfQUNNX01T
IGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX0dfTVVMVEkgaXMgbm90IHNldAojIENPTkZJR19VU0Jf
R19ISUQgaXMgbm90IHNldAojIENPTkZJR19VU0JfR19EQkdQIGlzIG5vdCBzZXQKIyBDT05GSUdf
VVNCX0dfV0VCQ0FNIGlzIG5vdCBzZXQKQ09ORklHX1RZUEVDPXkKQ09ORklHX1RZUEVDX1RDUE09
eQpDT05GSUdfVFlQRUNfVENQQ0k9eQojIENPTkZJR19UWVBFQ19SVDE3MTFIIGlzIG5vdCBzZXQK
IyBDT05GSUdfVFlQRUNfRlVTQjMwMiBpcyBub3Qgc2V0CiMgQ09ORklHX1RZUEVDX1VDU0kgaXMg
bm90IHNldAojIENPTkZJR19UWVBFQ19UUFM2NTk4WCBpcyBub3Qgc2V0CgojCiMgVVNCIFR5cGUt
QyBNdWx0aXBsZXhlci9EZU11bHRpcGxleGVyIFN3aXRjaCBzdXBwb3J0CiMKIyBDT05GSUdfVFlQ
RUNfTVVYX1BJM1VTQjMwNTMyIGlzIG5vdCBzZXQKQ09ORklHX1RZUEVDX1NXSVRDSF9HUElPPXkK
IyBlbmQgb2YgVVNCIFR5cGUtQyBNdWx0aXBsZXhlci9EZU11bHRpcGxleGVyIFN3aXRjaCBzdXBw
b3J0CgojCiMgVVNCIFR5cGUtQyBBbHRlcm5hdGUgTW9kZSBkcml2ZXJzCiMKIyBDT05GSUdfVFlQ
RUNfRFBfQUxUTU9ERSBpcyBub3Qgc2V0CiMgZW5kIG9mIFVTQiBUeXBlLUMgQWx0ZXJuYXRlIE1v
ZGUgZHJpdmVycwoKQ09ORklHX1VTQl9ST0xFX1NXSVRDSD15CkNPTkZJR19NTUM9eQpDT05GSUdf
UFdSU0VRX0VNTUM9eQpDT05GSUdfUFdSU0VRX1NJTVBMRT15CkNPTkZJR19NTUNfQkxPQ0s9eQpD
T05GSUdfTU1DX0JMT0NLX01JTk9SUz0zMgojIENPTkZJR19TRElPX1VBUlQgaXMgbm90IHNldAoj
IENPTkZJR19NTUNfVEVTVCBpcyBub3Qgc2V0CgojCiMgTU1DL1NEL1NESU8gSG9zdCBDb250cm9s
bGVyIERyaXZlcnMKIwojIENPTkZJR19NTUNfREVCVUcgaXMgbm90IHNldApDT05GSUdfTU1DX0FS
TU1NQ0k9eQpDT05GSUdfTU1DX1NUTTMyX1NETU1DPXkKQ09ORklHX01NQ19TREhDST15CkNPTkZJ
R19NTUNfU0RIQ0lfSU9fQUNDRVNTT1JTPXkKIyBDT05GSUdfTU1DX1NESENJX1BDSSBpcyBub3Qg
c2V0CkNPTkZJR19NTUNfU0RIQ0lfQUNQST15CkNPTkZJR19NTUNfU0RIQ0lfUExURk09eQpDT05G
SUdfTU1DX1NESENJX09GX0FSQVNBTj15CiMgQ09ORklHX01NQ19TREhDSV9PRl9BU1BFRUQgaXMg
bm90IHNldAojIENPTkZJR19NTUNfU0RIQ0lfT0ZfQVQ5MSBpcyBub3Qgc2V0CkNPTkZJR19NTUNf
U0RIQ0lfT0ZfRVNESEM9eQojIENPTkZJR19NTUNfU0RIQ0lfT0ZfRFdDTVNIQyBpcyBub3Qgc2V0
CkNPTkZJR19NTUNfU0RIQ0lfQ0FERU5DRT15CkNPTkZJR19NTUNfU0RIQ0lfRVNESENfSU1YPXkK
Q09ORklHX01NQ19TREhDSV9GX1NESDMwPXkKIyBDT05GSUdfTU1DX01YQyBpcyBub3Qgc2V0CiMg
Q09ORklHX01NQ19USUZNX1NEIGlzIG5vdCBzZXQKQ09ORklHX01NQ19TUEk9eQojIENPTkZJR19N
TUNfQ0I3MTAgaXMgbm90IHNldAojIENPTkZJR19NTUNfVklBX1NETU1DIGlzIG5vdCBzZXQKQ09O
RklHX01NQ19EVz15CkNPTkZJR19NTUNfRFdfUExURk09eQojIENPTkZJR19NTUNfRFdfQkxVRUZJ
RUxEIGlzIG5vdCBzZXQKQ09ORklHX01NQ19EV19FWFlOT1M9eQpDT05GSUdfTU1DX0RXX0hJMzc5
OENWMjAwPXkKQ09ORklHX01NQ19EV19LMz15CiMgQ09ORklHX01NQ19EV19QQ0kgaXMgbm90IHNl
dAojIENPTkZJR19NTUNfVlVCMzAwIGlzIG5vdCBzZXQKIyBDT05GSUdfTU1DX1VTSEMgaXMgbm90
IHNldAojIENPTkZJR19NTUNfVVNESEk2Uk9MMCBpcyBub3Qgc2V0CkNPTkZJR19NTUNfQ1FIQ0k9
eQojIENPTkZJR19NTUNfVE9TSElCQV9QQ0kgaXMgbm90IHNldAojIENPTkZJR19NTUNfTVRLIGlz
IG5vdCBzZXQKQ09ORklHX01NQ19TREhDSV9YRU5PTj15CiMgQ09ORklHX01NQ19TREhDSV9PTUFQ
IGlzIG5vdCBzZXQKIyBDT05GSUdfTU1DX1NESENJX0FNNjU0IGlzIG5vdCBzZXQKIyBDT05GSUdf
TUVNU1RJQ0sgaXMgbm90IHNldApDT05GSUdfTkVXX0xFRFM9eQpDT05GSUdfTEVEU19DTEFTUz15
CiMgQ09ORklHX0xFRFNfQ0xBU1NfRkxBU0ggaXMgbm90IHNldAojIENPTkZJR19MRURTX0JSSUdI
VE5FU1NfSFdfQ0hBTkdFRCBpcyBub3Qgc2V0CgojCiMgTEVEIGRyaXZlcnMKIwojIENPTkZJR19M
RURTX0FOMzAyNTlBIGlzIG5vdCBzZXQKIyBDT05GSUdfTEVEU19CQ002MzI4IGlzIG5vdCBzZXQK
IyBDT05GSUdfTEVEU19CQ002MzU4IGlzIG5vdCBzZXQKIyBDT05GSUdfTEVEU19DUjAwMTQxMTQg
aXMgbm90IHNldAojIENPTkZJR19MRURTX0xNMzUzMCBpcyBub3Qgc2V0CiMgQ09ORklHX0xFRFNf
TE0zNTMyIGlzIG5vdCBzZXQKIyBDT05GSUdfTEVEU19MTTM2NDIgaXMgbm90IHNldAojIENPTkZJ
R19MRURTX0xNMzY5MlggaXMgbm90IHNldAojIENPTkZJR19MRURTX1BDQTk1MzIgaXMgbm90IHNl
dApDT05GSUdfTEVEU19HUElPPXkKIyBDT05GSUdfTEVEU19MUDM5NDQgaXMgbm90IHNldAojIENP
TkZJR19MRURTX0xQMzk1MiBpcyBub3Qgc2V0CiMgQ09ORklHX0xFRFNfTFA1NTIxIGlzIG5vdCBz
ZXQKIyBDT05GSUdfTEVEU19MUDU1MjMgaXMgbm90IHNldAojIENPTkZJR19MRURTX0xQNTU2MiBp
cyBub3Qgc2V0CiMgQ09ORklHX0xFRFNfTFA4NTAxIGlzIG5vdCBzZXQKIyBDT05GSUdfTEVEU19M
UDg4NjAgaXMgbm90IHNldAojIENPTkZJR19MRURTX1BDQTk1NVggaXMgbm90IHNldAojIENPTkZJ
R19MRURTX1BDQTk2M1ggaXMgbm90IHNldAojIENPTkZJR19MRURTX0RBQzEyNFMwODUgaXMgbm90
IHNldApDT05GSUdfTEVEU19QV009eQojIENPTkZJR19MRURTX1JFR1VMQVRPUiBpcyBub3Qgc2V0
CiMgQ09ORklHX0xFRFNfQkQyODAyIGlzIG5vdCBzZXQKIyBDT05GSUdfTEVEU19MVDM1OTMgaXMg
bm90IHNldAojIENPTkZJR19MRURTX1RDQTY1MDcgaXMgbm90IHNldAojIENPTkZJR19MRURTX1RM
QzU5MVhYIGlzIG5vdCBzZXQKIyBDT05GSUdfTEVEU19MTTM1NXggaXMgbm90IHNldAojIENPTkZJ
R19MRURTX0lTMzFGTDMxOVggaXMgbm90IHNldAojIENPTkZJR19MRURTX0lTMzFGTDMyWFggaXMg
bm90IHNldAoKIwojIExFRCBkcml2ZXIgZm9yIGJsaW5rKDEpIFVTQiBSR0IgTEVEIGlzIHVuZGVy
IFNwZWNpYWwgSElEIGRyaXZlcnMgKEhJRF9USElOR00pCiMKIyBDT05GSUdfTEVEU19CTElOS00g
aXMgbm90IHNldApDT05GSUdfTEVEU19TWVNDT049eQojIENPTkZJR19MRURTX01MWFJFRyBpcyBu
b3Qgc2V0CiMgQ09ORklHX0xFRFNfVVNFUiBpcyBub3Qgc2V0CiMgQ09ORklHX0xFRFNfU1BJX0JZ
VEUgaXMgbm90IHNldAojIENPTkZJR19MRURTX1RJX0xNVV9DT01NT04gaXMgbm90IHNldAoKIwoj
IExFRCBUcmlnZ2VycwojCkNPTkZJR19MRURTX1RSSUdHRVJTPXkKIyBDT05GSUdfTEVEU19UUklH
R0VSX1RJTUVSIGlzIG5vdCBzZXQKIyBDT05GSUdfTEVEU19UUklHR0VSX09ORVNIT1QgaXMgbm90
IHNldApDT05GSUdfTEVEU19UUklHR0VSX0RJU0s9eQojIENPTkZJR19MRURTX1RSSUdHRVJfTVRE
IGlzIG5vdCBzZXQKQ09ORklHX0xFRFNfVFJJR0dFUl9IRUFSVEJFQVQ9eQojIENPTkZJR19MRURT
X1RSSUdHRVJfQkFDS0xJR0hUIGlzIG5vdCBzZXQKQ09ORklHX0xFRFNfVFJJR0dFUl9DUFU9eQoj
IENPTkZJR19MRURTX1RSSUdHRVJfQUNUSVZJVFkgaXMgbm90IHNldAojIENPTkZJR19MRURTX1RS
SUdHRVJfR1BJTyBpcyBub3Qgc2V0CkNPTkZJR19MRURTX1RSSUdHRVJfREVGQVVMVF9PTj15Cgoj
CiMgaXB0YWJsZXMgdHJpZ2dlciBpcyB1bmRlciBOZXRmaWx0ZXIgY29uZmlnIChMRUQgdGFyZ2V0
KQojCiMgQ09ORklHX0xFRFNfVFJJR0dFUl9UUkFOU0lFTlQgaXMgbm90IHNldAojIENPTkZJR19M
RURTX1RSSUdHRVJfQ0FNRVJBIGlzIG5vdCBzZXQKQ09ORklHX0xFRFNfVFJJR0dFUl9QQU5JQz15
CiMgQ09ORklHX0xFRFNfVFJJR0dFUl9ORVRERVYgaXMgbm90IHNldAojIENPTkZJR19MRURTX1RS
SUdHRVJfUEFUVEVSTiBpcyBub3Qgc2V0CiMgQ09ORklHX0xFRFNfVFJJR0dFUl9BVURJTyBpcyBu
b3Qgc2V0CiMgQ09ORklHX0FDQ0VTU0lCSUxJVFkgaXMgbm90IHNldAojIENPTkZJR19JTkZJTklC
QU5EIGlzIG5vdCBzZXQKQ09ORklHX0VEQUNfU1VQUE9SVD15CkNPTkZJR19FREFDPXkKQ09ORklH
X0VEQUNfTEVHQUNZX1NZU0ZTPXkKIyBDT05GSUdfRURBQ19ERUJVRyBpcyBub3Qgc2V0CkNPTkZJ
R19FREFDX0dIRVM9eQojIENPTkZJR19FREFDX0xBWUVSU0NBUEUgaXMgbm90IHNldAojIENPTkZJ
R19FREFDX1RIVU5ERVJYIGlzIG5vdCBzZXQKQ09ORklHX0VEQUNfU1lOT1BTWVM9eQojIENPTkZJ
R19FREFDX1hHRU5FIGlzIG5vdCBzZXQKQ09ORklHX1JUQ19MSUI9eQpDT05GSUdfUlRDX0NMQVNT
PXkKQ09ORklHX1JUQ19IQ1RPU1lTPXkKQ09ORklHX1JUQ19IQ1RPU1lTX0RFVklDRT0icnRjMCIK
Q09ORklHX1JUQ19TWVNUT0hDPXkKQ09ORklHX1JUQ19TWVNUT0hDX0RFVklDRT0icnRjMCIKIyBD
T05GSUdfUlRDX0RFQlVHIGlzIG5vdCBzZXQKQ09ORklHX1JUQ19OVk1FTT15CgojCiMgUlRDIGlu
dGVyZmFjZXMKIwpDT05GSUdfUlRDX0lOVEZfU1lTRlM9eQpDT05GSUdfUlRDX0lOVEZfUFJPQz15
CkNPTkZJR19SVENfSU5URl9ERVY9eQojIENPTkZJR19SVENfSU5URl9ERVZfVUlFX0VNVUwgaXMg
bm90IHNldAojIENPTkZJR19SVENfRFJWX1RFU1QgaXMgbm90IHNldAoKIwojIEkyQyBSVEMgZHJp
dmVycwojCiMgQ09ORklHX1JUQ19EUlZfQUJCNVpFUzMgaXMgbm90IHNldAojIENPTkZJR19SVENf
RFJWX0FCRU9aOSBpcyBub3Qgc2V0CiMgQ09ORklHX1JUQ19EUlZfQUJYODBYIGlzIG5vdCBzZXQK
Q09ORklHX1JUQ19EUlZfRFMxMzA3PXkKIyBDT05GSUdfUlRDX0RSVl9EUzEzMDdfQ0VOVFVSWSBp
cyBub3Qgc2V0CiMgQ09ORklHX1JUQ19EUlZfRFMxMzc0IGlzIG5vdCBzZXQKIyBDT05GSUdfUlRD
X0RSVl9EUzE2NzIgaXMgbm90IHNldAojIENPTkZJR19SVENfRFJWX0hZTTg1NjMgaXMgbm90IHNl
dAojIENPTkZJR19SVENfRFJWX01BWDY5MDAgaXMgbm90IHNldApDT05GSUdfUlRDX0RSVl9NQVg3
NzY4Nj15CkNPTkZJR19SVENfRFJWX1JLODA4PW0KIyBDT05GSUdfUlRDX0RSVl9SUzVDMzcyIGlz
IG5vdCBzZXQKIyBDT05GSUdfUlRDX0RSVl9JU0wxMjA4IGlzIG5vdCBzZXQKIyBDT05GSUdfUlRD
X0RSVl9JU0wxMjAyMiBpcyBub3Qgc2V0CiMgQ09ORklHX1JUQ19EUlZfSVNMMTIwMjYgaXMgbm90
IHNldAojIENPTkZJR19SVENfRFJWX1gxMjA1IGlzIG5vdCBzZXQKIyBDT05GSUdfUlRDX0RSVl9Q
Q0Y4NTIzIGlzIG5vdCBzZXQKIyBDT05GSUdfUlRDX0RSVl9QQ0Y4NTA2MyBpcyBub3Qgc2V0CkNP
TkZJR19SVENfRFJWX1BDRjg1MzYzPXkKIyBDT05GSUdfUlRDX0RSVl9QQ0Y4NTYzIGlzIG5vdCBz
ZXQKIyBDT05GSUdfUlRDX0RSVl9QQ0Y4NTgzIGlzIG5vdCBzZXQKIyBDT05GSUdfUlRDX0RSVl9N
NDFUODAgaXMgbm90IHNldAojIENPTkZJR19SVENfRFJWX0JRMzJLIGlzIG5vdCBzZXQKIyBDT05G
SUdfUlRDX0RSVl9TMzUzOTBBIGlzIG5vdCBzZXQKIyBDT05GSUdfUlRDX0RSVl9GTTMxMzAgaXMg
bm90IHNldAojIENPTkZJR19SVENfRFJWX1JYODAxMCBpcyBub3Qgc2V0CkNPTkZJR19SVENfRFJW
X1JYODU4MT1tCiMgQ09ORklHX1JUQ19EUlZfUlg4MDI1IGlzIG5vdCBzZXQKIyBDT05GSUdfUlRD
X0RSVl9FTTMwMjcgaXMgbm90IHNldAojIENPTkZJR19SVENfRFJWX1JWMzAyOCBpcyBub3Qgc2V0
CiMgQ09ORklHX1JUQ19EUlZfUlY4ODAzIGlzIG5vdCBzZXQKQ09ORklHX1JUQ19EUlZfUzVNPXkK
IyBDT05GSUdfUlRDX0RSVl9TRDMwNzggaXMgbm90IHNldAoKIwojIFNQSSBSVEMgZHJpdmVycwoj
CiMgQ09ORklHX1JUQ19EUlZfTTQxVDkzIGlzIG5vdCBzZXQKIyBDT05GSUdfUlRDX0RSVl9NNDFU
OTQgaXMgbm90IHNldAojIENPTkZJR19SVENfRFJWX0RTMTMwMiBpcyBub3Qgc2V0CiMgQ09ORklH
X1JUQ19EUlZfRFMxMzA1IGlzIG5vdCBzZXQKIyBDT05GSUdfUlRDX0RSVl9EUzEzNDMgaXMgbm90
IHNldAojIENPTkZJR19SVENfRFJWX0RTMTM0NyBpcyBub3Qgc2V0CiMgQ09ORklHX1JUQ19EUlZf
RFMxMzkwIGlzIG5vdCBzZXQKIyBDT05GSUdfUlRDX0RSVl9NQVg2OTE2IGlzIG5vdCBzZXQKIyBD
T05GSUdfUlRDX0RSVl9SOTcwMSBpcyBub3Qgc2V0CiMgQ09ORklHX1JUQ19EUlZfUlg0NTgxIGlz
IG5vdCBzZXQKIyBDT05GSUdfUlRDX0RSVl9SWDYxMTAgaXMgbm90IHNldAojIENPTkZJR19SVENf
RFJWX1JTNUMzNDggaXMgbm90IHNldAojIENPTkZJR19SVENfRFJWX01BWDY5MDIgaXMgbm90IHNl
dAojIENPTkZJR19SVENfRFJWX1BDRjIxMjMgaXMgbm90IHNldAojIENPTkZJR19SVENfRFJWX01D
UDc5NSBpcyBub3Qgc2V0CkNPTkZJR19SVENfSTJDX0FORF9TUEk9eQoKIwojIFNQSSBhbmQgSTJD
IFJUQyBkcml2ZXJzCiMKQ09ORklHX1JUQ19EUlZfRFMzMjMyPXkKQ09ORklHX1JUQ19EUlZfRFMz
MjMyX0hXTU9OPXkKQ09ORklHX1JUQ19EUlZfUENGMjEyNz15CiMgQ09ORklHX1JUQ19EUlZfUlYz
MDI5QzIgaXMgbm90IHNldAoKIwojIFBsYXRmb3JtIFJUQyBkcml2ZXJzCiMKIyBDT05GSUdfUlRD
X0RSVl9EUzEyODYgaXMgbm90IHNldAojIENPTkZJR19SVENfRFJWX0RTMTUxMSBpcyBub3Qgc2V0
CiMgQ09ORklHX1JUQ19EUlZfRFMxNTUzIGlzIG5vdCBzZXQKIyBDT05GSUdfUlRDX0RSVl9EUzE2
ODVfRkFNSUxZIGlzIG5vdCBzZXQKIyBDT05GSUdfUlRDX0RSVl9EUzE3NDIgaXMgbm90IHNldAoj
IENPTkZJR19SVENfRFJWX0RTMjQwNCBpcyBub3Qgc2V0CkNPTkZJR19SVENfRFJWX0VGST15CiMg
Q09ORklHX1JUQ19EUlZfU1RLMTdUQTggaXMgbm90IHNldAojIENPTkZJR19SVENfRFJWX000OFQ4
NiBpcyBub3Qgc2V0CiMgQ09ORklHX1JUQ19EUlZfTTQ4VDM1IGlzIG5vdCBzZXQKIyBDT05GSUdf
UlRDX0RSVl9NNDhUNTkgaXMgbm90IHNldAojIENPTkZJR19SVENfRFJWX01TTTYyNDIgaXMgbm90
IHNldAojIENPTkZJR19SVENfRFJWX0JRNDgwMiBpcyBub3Qgc2V0CiMgQ09ORklHX1JUQ19EUlZf
UlA1QzAxIGlzIG5vdCBzZXQKIyBDT05GSUdfUlRDX0RSVl9WMzAyMCBpcyBub3Qgc2V0CiMgQ09O
RklHX1JUQ19EUlZfWllOUU1QIGlzIG5vdCBzZXQKQ09ORklHX1JUQ19EUlZfQ1JPU19FQz15Cgoj
CiMgb24tQ1BVIFJUQyBkcml2ZXJzCiMKIyBDT05GSUdfUlRDX0RSVl9JTVhESSBpcyBub3Qgc2V0
CkNPTkZJR19SVENfRFJWX0ZTTF9GVE1fQUxBUk09eQojIENPTkZJR19SVENfRFJWX1BMMDMwIGlz
IG5vdCBzZXQKQ09ORklHX1JUQ19EUlZfUEwwMzE9eQojIENPTkZJR19SVENfRFJWX0NBREVOQ0Ug
aXMgbm90IHNldAojIENPTkZJR19SVENfRFJWX0ZUUlRDMDEwIGlzIG5vdCBzZXQKIyBDT05GSUdf
UlRDX0RSVl9NWEMgaXMgbm90IHNldAojIENPTkZJR19SVENfRFJWX01YQ19WMiBpcyBub3Qgc2V0
CkNPTkZJR19SVENfRFJWX1NOVlM9eQpDT05GSUdfUlRDX0RSVl9JTVhfU0M9eQojIENPTkZJR19S
VENfRFJWX0lNWF9SUE1TRyBpcyBub3Qgc2V0CiMgQ09ORklHX1JUQ19EUlZfUjczMDEgaXMgbm90
IHNldAoKIwojIEhJRCBTZW5zb3IgUlRDIGRyaXZlcnMKIwpDT05GSUdfRE1BREVWSUNFUz15CiMg
Q09ORklHX0RNQURFVklDRVNfREVCVUcgaXMgbm90IHNldAoKIwojIERNQSBEZXZpY2VzCiMKQ09O
RklHX0FTWU5DX1RYX0VOQUJMRV9DSEFOTkVMX1NXSVRDSD15CkNPTkZJR19ETUFfRU5HSU5FPXkK
Q09ORklHX0RNQV9WSVJUVUFMX0NIQU5ORUxTPXkKQ09ORklHX0RNQV9BQ1BJPXkKQ09ORklHX0RN
QV9PRj15CiMgQ09ORklHX0FMVEVSQV9NU0dETUEgaXMgbm90IHNldAojIENPTkZJR19BTUJBX1BM
MDhYIGlzIG5vdCBzZXQKQ09ORklHX0JDTV9TQkFfUkFJRD1tCiMgQ09ORklHX0NSWVBUT19ERVZf
RlNMX0NBQU1fRE1BIGlzIG5vdCBzZXQKIyBDT05GSUdfRFdfQVhJX0RNQUMgaXMgbm90IHNldApD
T05GSUdfRlNMX0VETUE9eQojIENPTkZJR19GU0xfUURNQSBpcyBub3Qgc2V0CkNPTkZJR19GU0xf
RURNQV9WMz15CiMgQ09ORklHX0lNWF9ETUEgaXMgbm90IHNldApDT05GSUdfSU1YX1NETUE9eQoj
IENPTkZJR19JTlRFTF9JRE1BNjQgaXMgbm90IHNldApDT05GSUdfTVZfWE9SX1YyPXkKQ09ORklH
X01YU19ETUE9eQpDT05GSUdfTVgzX0lQVT15CkNPTkZJR19NWDNfSVBVX0lSUVM9NApDT05GSUdf
UEwzMzBfRE1BPXkKIyBDT05GSUdfWElMSU5YX0RNQSBpcyBub3Qgc2V0CiMgQ09ORklHX1hJTElO
WF9aWU5RTVBfRE1BIGlzIG5vdCBzZXQKQ09ORklHX1FDT01fSElETUFfTUdNVD15CkNPTkZJR19R
Q09NX0hJRE1BPXkKIyBDT05GSUdfRFdfRE1BQyBpcyBub3Qgc2V0CiMgQ09ORklHX0RXX0RNQUNf
UENJIGlzIG5vdCBzZXQKIyBDT05GSUdfRFdfRURNQSBpcyBub3Qgc2V0CiMgQ09ORklHX0RXX0VE
TUFfUENJRSBpcyBub3Qgc2V0CiMgQ09ORklHX0ZTTF9EUEFBMl9RRE1BIGlzIG5vdCBzZXQKCiMK
IyBETUEgQ2xpZW50cwojCiMgQ09ORklHX0FTWU5DX1RYX0RNQSBpcyBub3Qgc2V0CkNPTkZJR19E
TUFURVNUPXkKQ09ORklHX0RNQV9FTkdJTkVfUkFJRD15CgojCiMgRE1BQlVGIG9wdGlvbnMKIwpD
T05GSUdfU1lOQ19GSUxFPXkKIyBDT05GSUdfU1dfU1lOQyBpcyBub3Qgc2V0CiMgQ09ORklHX1VE
TUFCVUYgaXMgbm90IHNldAojIENPTkZJR19ETUFCVUZfU0VMRlRFU1RTIGlzIG5vdCBzZXQKIyBl
bmQgb2YgRE1BQlVGIG9wdGlvbnMKCiMgQ09ORklHX0FVWERJU1BMQVkgaXMgbm90IHNldApDT05G
SUdfVUlPPXkKIyBDT05GSUdfVUlPX0NJRiBpcyBub3Qgc2V0CiMgQ09ORklHX1VJT19QRFJWX0dF
TklSUSBpcyBub3Qgc2V0CiMgQ09ORklHX1VJT19ETUVNX0dFTklSUSBpcyBub3Qgc2V0CiMgQ09O
RklHX1VJT19BRUMgaXMgbm90IHNldAojIENPTkZJR19VSU9fU0VSQ09TMyBpcyBub3Qgc2V0CkNP
TkZJR19VSU9fUENJX0dFTkVSSUM9eQojIENPTkZJR19VSU9fTkVUWCBpcyBub3Qgc2V0CiMgQ09O
RklHX1VJT19QUlVTUyBpcyBub3Qgc2V0CiMgQ09ORklHX1VJT19NRjYyNCBpcyBub3Qgc2V0CkNP
TkZJR19VSU9fSVZTSE1FTT15CkNPTkZJR19WRklPX0lPTU1VX1RZUEUxPXkKQ09ORklHX1ZGSU9f
VklSUUZEPXkKQ09ORklHX1ZGSU89eQojIENPTkZJR19WRklPX05PSU9NTVUgaXMgbm90IHNldApD
T05GSUdfVkZJT19QQ0k9eQpDT05GSUdfVkZJT19QQ0lfTU1BUD15CkNPTkZJR19WRklPX1BDSV9J
TlRYPXkKIyBDT05GSUdfVkZJT19QTEFURk9STSBpcyBub3Qgc2V0CiMgQ09ORklHX1ZGSU9fTURF
ViBpcyBub3Qgc2V0CkNPTkZJR19WRklPX0ZTTF9NQz15CiMgQ09ORklHX1ZJUlRfRFJJVkVSUyBp
cyBub3Qgc2V0CkNPTkZJR19WSVJUSU89eQpDT05GSUdfVklSVElPX01FTlU9eQpDT05GSUdfVklS
VElPX1BDST15CkNPTkZJR19WSVJUSU9fUENJX0xFR0FDWT15CkNPTkZJR19WSVJUSU9fQkFMTE9P
Tj15CiMgQ09ORklHX1ZJUlRJT19JTlBVVCBpcyBub3Qgc2V0CkNPTkZJR19WSVJUSU9fTU1JTz15
CiMgQ09ORklHX1ZJUlRJT19NTUlPX0NNRExJTkVfREVWSUNFUyBpcyBub3Qgc2V0CiMgQ09ORklH
X1ZJUlRJT19JVlNITUVNIGlzIG5vdCBzZXQKCiMKIyBNaWNyb3NvZnQgSHlwZXItViBndWVzdCBz
dXBwb3J0CiMKIyBlbmQgb2YgTWljcm9zb2Z0IEh5cGVyLVYgZ3Vlc3Qgc3VwcG9ydAoKIwojIFhl
biBkcml2ZXIgc3VwcG9ydAojCkNPTkZJR19YRU5fQkFMTE9PTj15CkNPTkZJR19YRU5fU0NSVUJf
UEFHRVNfREVGQVVMVD15CkNPTkZJR19YRU5fREVWX0VWVENITj15CkNPTkZJR19YRU5fQkFDS0VO
RD15CkNPTkZJR19YRU5GUz15CkNPTkZJR19YRU5fQ09NUEFUX1hFTkZTPXkKQ09ORklHX1hFTl9T
WVNfSFlQRVJWSVNPUj15CkNPTkZJR19YRU5fWEVOQlVTX0ZST05URU5EPXkKQ09ORklHX1hFTl9H
TlRERVY9eQpDT05GSUdfWEVOX0dSQU5UX0RFVl9BTExPQz15CiMgQ09ORklHX1hFTl9HUkFOVF9E
TUFfQUxMT0MgaXMgbm90IHNldApDT05GSUdfU1dJT1RMQl9YRU49eQojIENPTkZJR19YRU5fUFZD
QUxMU19GUk9OVEVORCBpcyBub3Qgc2V0CiMgQ09ORklHX1hFTl9QVkNBTExTX0JBQ0tFTkQgaXMg
bm90IHNldApDT05GSUdfWEVOX1BSSVZDTUQ9eQpDT05GSUdfWEVOX0VGST15CkNPTkZJR19YRU5f
QVVUT19YTEFURT15CiMgZW5kIG9mIFhlbiBkcml2ZXIgc3VwcG9ydAoKIyBDT05GSUdfR1JFWUJV
UyBpcyBub3Qgc2V0CkNPTkZJR19TVEFHSU5HPXkKIyBDT05GSUdfUFJJU00yX1VTQiBpcyBub3Qg
c2V0CiMgQ09ORklHX0NPTUVESSBpcyBub3Qgc2V0CiMgQ09ORklHX1JUTDgxOTJVIGlzIG5vdCBz
ZXQKIyBDT05GSUdfUlRMTElCIGlzIG5vdCBzZXQKIyBDT05GSUdfUlRMODcyM0JTIGlzIG5vdCBz
ZXQKIyBDT05GSUdfUjg3MTJVIGlzIG5vdCBzZXQKIyBDT05GSUdfUjgxODhFVSBpcyBub3Qgc2V0
CiMgQ09ORklHX1JUUzUyMDggaXMgbm90IHNldAojIENPTkZJR19WVDY2NTUgaXMgbm90IHNldAoj
IENPTkZJR19WVDY2NTYgaXMgbm90IHNldAoKIwojIElJTyBzdGFnaW5nIGRyaXZlcnMKIwoKIwoj
IEFjY2VsZXJvbWV0ZXJzCiMKIyBDT05GSUdfQURJUzE2MjAzIGlzIG5vdCBzZXQKIyBDT05GSUdf
QURJUzE2MjQwIGlzIG5vdCBzZXQKIyBlbmQgb2YgQWNjZWxlcm9tZXRlcnMKCiMKIyBBbmFsb2cg
dG8gZGlnaXRhbCBjb252ZXJ0ZXJzCiMKIyBDT05GSUdfQUQ3ODE2IGlzIG5vdCBzZXQKIyBDT05G
SUdfQUQ3MTkyIGlzIG5vdCBzZXQKIyBDT05GSUdfQUQ3MjgwIGlzIG5vdCBzZXQKIyBlbmQgb2Yg
QW5hbG9nIHRvIGRpZ2l0YWwgY29udmVydGVycwoKIwojIEFuYWxvZyBkaWdpdGFsIGJpLWRpcmVj
dGlvbiBjb252ZXJ0ZXJzCiMKIyBDT05GSUdfQURUNzMxNiBpcyBub3Qgc2V0CiMgZW5kIG9mIEFu
YWxvZyBkaWdpdGFsIGJpLWRpcmVjdGlvbiBjb252ZXJ0ZXJzCgojCiMgQ2FwYWNpdGFuY2UgdG8g
ZGlnaXRhbCBjb252ZXJ0ZXJzCiMKIyBDT05GSUdfQUQ3MTUwIGlzIG5vdCBzZXQKIyBDT05GSUdf
QUQ3NzQ2IGlzIG5vdCBzZXQKIyBlbmQgb2YgQ2FwYWNpdGFuY2UgdG8gZGlnaXRhbCBjb252ZXJ0
ZXJzCgojCiMgRGlyZWN0IERpZ2l0YWwgU3ludGhlc2lzCiMKIyBDT05GSUdfQUQ5ODMyIGlzIG5v
dCBzZXQKIyBDT05GSUdfQUQ5ODM0IGlzIG5vdCBzZXQKIyBlbmQgb2YgRGlyZWN0IERpZ2l0YWwg
U3ludGhlc2lzCgojCiMgTmV0d29yayBBbmFseXplciwgSW1wZWRhbmNlIENvbnZlcnRlcnMKIwoj
IENPTkZJR19BRDU5MzMgaXMgbm90IHNldAojIGVuZCBvZiBOZXR3b3JrIEFuYWx5emVyLCBJbXBl
ZGFuY2UgQ29udmVydGVycwoKIwojIEFjdGl2ZSBlbmVyZ3kgbWV0ZXJpbmcgSUMKIwojIENPTkZJ
R19BREU3ODU0IGlzIG5vdCBzZXQKIyBlbmQgb2YgQWN0aXZlIGVuZXJneSBtZXRlcmluZyBJQwoK
IwojIFJlc29sdmVyIHRvIGRpZ2l0YWwgY29udmVydGVycwojCiMgQ09ORklHX0FEMlMxMjEwIGlz
IG5vdCBzZXQKIyBlbmQgb2YgUmVzb2x2ZXIgdG8gZGlnaXRhbCBjb252ZXJ0ZXJzCiMgZW5kIG9m
IElJTyBzdGFnaW5nIGRyaXZlcnMKCiMgQ09ORklHX0ZCX1NNNzUwIGlzIG5vdCBzZXQKCiMKIyBT
cGVha3VwIGNvbnNvbGUgc3BlZWNoCiMKIyBDT05GSUdfU1BFQUtVUCBpcyBub3Qgc2V0CiMgZW5k
IG9mIFNwZWFrdXAgY29uc29sZSBzcGVlY2gKCkNPTkZJR19TVEFHSU5HX01FRElBPXkKQ09ORklH
X1ZJREVPX0lNWF9DQVBUVVJFPXkKCiMKIyBpLk1YOFFYUC9RTSBDYW1lcmEgSVNJL01JUEkgRmVh
dHVyZXMgc3VwcG9ydAojCkNPTkZJR19JTVg4X01FRElBX0RFVklDRT15CkNPTkZJR19JTVg4X0lT
SV9DT1JFPXkKQ09ORklHX0lNWDhfSVNJX0NBUFRVUkU9eQpDT05GSUdfSU1YOF9JU0lfTTJNPXkK
Q09ORklHX0lNWDhfTUlQSV9DU0kyPXkKQ09ORklHX0lNWDhfTUlQSV9DU0kyX1NBTT15CkNPTkZJ
R19JTVg4X1BBUkFMTEVMX0NTST15CkNPTkZJR19HTVNMX01BWDkyODY9eQojIGVuZCBvZiBpLk1Y
OFFYUC9RTSBDYW1lcmEgSVNJL01JUEkgRmVhdHVyZXMgc3VwcG9ydAoKIwojIHNvY19jYW1lcmEg
c2Vuc29yIGRyaXZlcnMKIwoKIwojIEFuZHJvaWQKIwpDT05GSUdfSU9OPXkKQ09ORklHX0lPTl9T
WVNURU1fSEVBUD15CkNPTkZJR19JT05fQ01BX0hFQVA9eQojIGVuZCBvZiBBbmRyb2lkCgojIENP
TkZJR19TVEFHSU5HX0JPQVJEIGlzIG5vdCBzZXQKIyBDT05GSUdfTFRFX0dETTcyNFggaXMgbm90
IHNldAojIENPTkZJR19HU19GUEdBQk9PVCBpcyBub3Qgc2V0CiMgQ09ORklHX1VOSVNZU1NQQVIg
aXMgbm90IHNldAojIENPTkZJR19DT01NT05fQ0xLX1hMTlhfQ0xLV1pSRCBpcyBub3Qgc2V0CiMg
Q09ORklHX0ZCX1RGVCBpcyBub3Qgc2V0CkNPTkZJR19GU0xfRFBBQTI9eQpDT05GSUdfRlNMX0RQ
QUEyX0VUSFNXPXkKQ09ORklHX0ZTTF9EUEFBMl9NQUM9eQojIENPTkZJR19GU0xfRFBBQTJfTUFD
X05FVERFVlMgaXMgbm90IHNldApDT05GSUdfRlNMX0RQQUEyX0VWQj15CiMgQ09ORklHX1dJTEMx
MDAwX1NESU8gaXMgbm90IHNldAojIENPTkZJR19XSUxDMTAwMF9TUEkgaXMgbm90IHNldAojIENP
TkZJR19NT1NUIGlzIG5vdCBzZXQKIyBDT05GSUdfS1M3MDEwIGlzIG5vdCBzZXQKIyBDT05GSUdf
UEk0MzMgaXMgbm90IHNldAoKIwojIEdhc2tldCBkZXZpY2VzCiMKIyBDT05GSUdfU1RBR0lOR19H
QVNLRVRfRlJBTUVXT1JLIGlzIG5vdCBzZXQKIyBlbmQgb2YgR2Fza2V0IGRldmljZXMKCiMgQ09O
RklHX1hJTF9BWElTX0ZJRk8gaXMgbm90IHNldAojIENPTkZJR19GSUVMREJVU19ERVYgaXMgbm90
IHNldAojIENPTkZJR19LUEMyMDAwIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX1dVU0JfQ0JBRiBp
cyBub3Qgc2V0CiMgQ09ORklHX1VXQiBpcyBub3Qgc2V0CiMgQ09ORklHX0VYRkFUX0ZTIGlzIG5v
dCBzZXQKIyBDT05GSUdfUUxHRSBpcyBub3Qgc2V0CkNPTkZJR19GU0xfU0RLX0RQQT15CgojCiMg
RnJlZXNjYWxlIERhdGFwYXRoIFFNYW4vQk1hbiBvcHRpb25zCiMKIyBDT05GSUdfRlNMX0RQQV9D
SEVDS0lORyBpcyBub3Qgc2V0CkNPTkZJR19GU0xfRFBBX0NBTl9XQUlUPXkKQ09ORklHX0ZTTF9E
UEFfQ0FOX1dBSVRfU1lOQz15CkNPTkZJR19GU0xfRFBBX1BJUlFfRkFTVD15CkNPTkZJR19GU0xf
RFBBX1BJUlFfU0xPVz15CkNPTkZJR19GU0xfRFBBX1BPUlRBTF9TSEFSRT15CkNPTkZJR19GU0xf
U0RLX0JNQU49eQpDT05GSUdfRlNMX0JNQU5fQ09ORklHPXkKIyBDT05GSUdfRlNMX0JNQU5fVEVT
VCBpcyBub3Qgc2V0CkNPTkZJR19GU0xfQk1BTl9ERUJVR0ZTPXkKQ09ORklHX0ZTTF9TREtfUU1B
Tj15CkNPTkZJR19GU0xfUU1BTl9QT0xMX0xJTUlUPTMyCkNPTkZJR19GU0xfUU1BTl9DT05GSUc9
eQojIENPTkZJR19GU0xfUU1BTl9URVNUIGlzIG5vdCBzZXQKQ09ORklHX0ZTTF9RTUFOX0RFQlVH
RlM9eQpDT05GSUdfRlNMX1FNQU5fRlFEX1NaPTEwCkNPTkZJR19GU0xfUU1BTl9QRkRSX1NaPTEz
CkNPTkZJR19GU0xfUU1BTl9DSV9TQ0hFRF9DRkdfU1JDQ0lWPTQKQ09ORklHX0ZTTF9RTUFOX0NJ
X1NDSEVEX0NGR19TUlFfVz0zCkNPTkZJR19GU0xfUU1BTl9DSV9TQ0hFRF9DRkdfUldfVz0yCkNP
TkZJR19GU0xfUU1BTl9DSV9TQ0hFRF9DRkdfQk1BTl9XPTIKQ09ORklHX0ZTTF9RTUFOX1BJUlFf
RFFSUl9JVEhSRVNIPTEyCkNPTkZJR19GU0xfUU1BTl9QSVJRX01SX0lUSFJFU0g9NApDT05GSUdf
RlNMX1FNQU5fUElSUV9JUEVSSU9EPTEwMApDT05GSUdfRlNMX1FNQU5fRlFfTE9PS1VQPXkKQ09O
RklHX1FNQU5fQ0VFVE1fVVBEQVRFX1BFUklPRD0xMDAwCkNPTkZJR19GU0xfUU1BTl9JTklUX1RJ
TUVPVVQ9MTAKQ09ORklHX0ZTTF9VU0RQQUE9eQojIGVuZCBvZiBGcmVlc2NhbGUgRGF0YXBhdGgg
UU1hbi9CTWFuIG9wdGlvbnMKCkNPTkZJR19GU0xfUFBGRT15CkNPTkZJR19GU0xfUFBGRV9VVElM
X0RJU0FCTEVEPXkKIyBDT05GSUdfR09MREZJU0ggaXMgbm90IHNldApDT05GSUdfTUZEX0NST1Nf
RUM9eQpDT05GSUdfQ0hST01FX1BMQVRGT1JNUz15CiMgQ09ORklHX0NIUk9NRU9TX1RCTUMgaXMg
bm90IHNldApDT05GSUdfQ1JPU19FQz15CkNPTkZJR19DUk9TX0VDX0kyQz15CiMgQ09ORklHX0NS
T1NfRUNfUlBNU0cgaXMgbm90IHNldApDT05GSUdfQ1JPU19FQ19TUEk9eQpDT05GSUdfQ1JPU19F
Q19QUk9UTz15CiMgQ09ORklHX0NST1NfS0JEX0xFRF9CQUNLTElHSFQgaXMgbm90IHNldApDT05G
SUdfQ1JPU19FQ19DSEFSREVWPXkKQ09ORklHX0NST1NfRUNfTElHSFRCQVI9eQpDT05GSUdfQ1JP
U19FQ19WQkM9eQpDT05GSUdfQ1JPU19FQ19ERUJVR0ZTPXkKQ09ORklHX0NST1NfRUNfU1lTRlM9
eQojIENPTkZJR19NRUxMQU5PWF9QTEFURk9STSBpcyBub3Qgc2V0CkNPTkZJR19DTEtERVZfTE9P
S1VQPXkKQ09ORklHX0hBVkVfQ0xLX1BSRVBBUkU9eQpDT05GSUdfQ09NTU9OX0NMSz15CgojCiMg
Q29tbW9uIENsb2NrIEZyYW1ld29yawojCkNPTkZJR19DT01NT05fQ0xLX1ZFUlNBVElMRT15CkNP
TkZJR19DTEtfU1A4MTA9eQpDT05GSUdfQ0xLX1ZFWFBSRVNTX09TQz15CiMgQ09ORklHX0NMS19I
U0RLIGlzIG5vdCBzZXQKIyBDT05GSUdfQ09NTU9OX0NMS19NQVg3NzY4NiBpcyBub3Qgc2V0CiMg
Q09ORklHX0NPTU1PTl9DTEtfTUFYOTQ4NSBpcyBub3Qgc2V0CkNPTkZJR19DT01NT05fQ0xLX1JL
ODA4PXkKQ09ORklHX0NPTU1PTl9DTEtfU0NQST15CiMgQ09ORklHX0NPTU1PTl9DTEtfU0k1MzQx
IGlzIG5vdCBzZXQKIyBDT05GSUdfQ09NTU9OX0NMS19TSTUzNTEgaXMgbm90IHNldAojIENPTkZJ
R19DT01NT05fQ0xLX1NJNTE0IGlzIG5vdCBzZXQKIyBDT05GSUdfQ09NTU9OX0NMS19TSTU0NCBp
cyBub3Qgc2V0CiMgQ09ORklHX0NPTU1PTl9DTEtfU0k1NzAgaXMgbm90IHNldAojIENPTkZJR19D
T01NT05fQ0xLX0NEQ0U3MDYgaXMgbm90IHNldAojIENPTkZJR19DT01NT05fQ0xLX0NEQ0U5MjUg
aXMgbm90IHNldApDT05GSUdfQ09NTU9OX0NMS19DUzIwMDBfQ1A9eQpDT05GSUdfQ09NTU9OX0NM
S19TMk1QUzExPXkKQ09ORklHX0NMS19RT1JJUT15CkNPTkZJR19DTEtfTFMxMDI4QV9QTExESUc9
eQpDT05GSUdfQ09NTU9OX0NMS19YR0VORT15CkNPTkZJR19DT01NT05fQ0xLX1BXTT15CiMgQ09O
RklHX0NPTU1PTl9DTEtfVkM1IGlzIG5vdCBzZXQKIyBDT05GSUdfQ09NTU9OX0NMS19CRDcxOFhY
IGlzIG5vdCBzZXQKIyBDT05GSUdfQ09NTU9OX0NMS19GSVhFRF9NTUlPIGlzIG5vdCBzZXQKQ09O
RklHX01YQ19DTEs9eQpDT05GSUdfTVhDX0NMS19TQ1U9eQpDT05GSUdfQ0xLX0lNWDhNTT15CkNP
TkZJR19DTEtfSU1YOE1OPXkKQ09ORklHX0NMS19JTVg4TVA9eQpDT05GSUdfQ0xLX0lNWDhNUT15
CkNPTkZJR19DTEtfSU1YOFFYUD15CkNPTkZJR19BUkNIX1MzMl9DTEs9eQojIGVuZCBvZiBDb21t
b24gQ2xvY2sgRnJhbWV3b3JrCgpDT05GSUdfSFdTUElOTE9DSz15CgojCiMgQ2xvY2sgU291cmNl
IGRyaXZlcnMKIwpDT05GSUdfVElNRVJfT0Y9eQpDT05GSUdfVElNRVJfQUNQST15CkNPTkZJR19U
SU1FUl9QUk9CRT15CkNPTkZJR19DTEtTUkNfTU1JTz15CkNPTkZJR19BUk1fQVJDSF9USU1FUj15
CkNPTkZJR19BUk1fQVJDSF9USU1FUl9FVlRTVFJFQU09eQpDT05GSUdfQVJNX0FSQ0hfVElNRVJf
T09MX1dPUktBUk9VTkQ9eQpDT05GSUdfRlNMX0VSUkFUVU1fQTAwODU4NT15CkNPTkZJR19ISVNJ
TElDT05fRVJSQVRVTV8xNjEwMTAxMDE9eQpDT05GSUdfQVJNNjRfRVJSQVRVTV84NTg5MjE9eQpD
T05GSUdfQ0xLU1JDX1ZFUlNBVElMRT15CkNPTkZJR19USU1FUl9JTVhfU1lTX0NUUj15CiMgZW5k
IG9mIENsb2NrIFNvdXJjZSBkcml2ZXJzCgpDT05GSUdfTUFJTEJPWD15CkNPTkZJR19BUk1fTUhV
PXkKQ09ORklHX0lNWF9NQk9YPXkKQ09ORklHX1BMQVRGT1JNX01IVT15CiMgQ09ORklHX1BMMzIw
X01CT1ggaXMgbm90IHNldApDT05GSUdfUENDPXkKIyBDT05GSUdfQUxURVJBX01CT1ggaXMgbm90
IHNldAojIENPTkZJR19NQUlMQk9YX1RFU1QgaXMgbm90IHNldApDT05GSUdfSU9NTVVfSU9WQT15
CkNPTkZJR19JT01NVV9BUEk9eQpDT05GSUdfSU9NTVVfU1VQUE9SVD15CgojCiMgR2VuZXJpYyBJ
T01NVSBQYWdldGFibGUgU3VwcG9ydAojCkNPTkZJR19JT01NVV9JT19QR1RBQkxFPXkKQ09ORklH
X0lPTU1VX0lPX1BHVEFCTEVfTFBBRT15CiMgQ09ORklHX0lPTU1VX0lPX1BHVEFCTEVfTFBBRV9T
RUxGVEVTVCBpcyBub3Qgc2V0CiMgQ09ORklHX0lPTU1VX0lPX1BHVEFCTEVfQVJNVjdTIGlzIG5v
dCBzZXQKIyBlbmQgb2YgR2VuZXJpYyBJT01NVSBQYWdldGFibGUgU3VwcG9ydAoKIyBDT05GSUdf
SU9NTVVfREVCVUdGUyBpcyBub3Qgc2V0CiMgQ09ORklHX0lPTU1VX0RFRkFVTFRfUEFTU1RIUk9V
R0ggaXMgbm90IHNldApDT05GSUdfT0ZfSU9NTVU9eQpDT05GSUdfSU9NTVVfRE1BPXkKQ09ORklH
X0FSTV9TTU1VPXkKQ09ORklHX0FSTV9TTU1VX0RJU0FCTEVfQllQQVNTX0JZX0RFRkFVTFQ9eQpD
T05GSUdfQVJNX1NNTVVfVjM9eQojIENPTkZJR19WSVJUSU9fSU9NTVUgaXMgbm90IHNldAoKIwoj
IFJlbW90ZXByb2MgZHJpdmVycwojCkNPTkZJR19SRU1PVEVQUk9DPXkKQ09ORklHX0lNWF9SRU1P
VEVQUk9DPXkKIyBlbmQgb2YgUmVtb3RlcHJvYyBkcml2ZXJzCgojCiMgUnBtc2cgZHJpdmVycwoj
CkNPTkZJR19SUE1TRz15CiMgQ09ORklHX1JQTVNHX0NIQVIgaXMgbm90IHNldApDT05GSUdfUlBN
U0dfUUNPTV9HTElOS19OQVRJVkU9eQpDT05GSUdfUlBNU0dfUUNPTV9HTElOS19SUE09eQpDT05G
SUdfUlBNU0dfVklSVElPPXkKQ09ORklHX0hBVkVfSU1YX1JQTVNHPXkKQ09ORklHX0lNWF9SUE1T
R19QSU5HUE9ORz1tCkNPTkZJR19JTVhfUlBNU0dfVFRZPW0KIyBlbmQgb2YgUnBtc2cgZHJpdmVy
cwoKIyBDT05GSUdfU09VTkRXSVJFIGlzIG5vdCBzZXQKCiMKIyBTT0MgKFN5c3RlbSBPbiBDaGlw
KSBzcGVjaWZpYyBEcml2ZXJzCiMKCiMKIyBBbWxvZ2ljIFNvQyBkcml2ZXJzCiMKIyBlbmQgb2Yg
QW1sb2dpYyBTb0MgZHJpdmVycwoKIwojIEFzcGVlZCBTb0MgZHJpdmVycwojCiMgZW5kIG9mIEFz
cGVlZCBTb0MgZHJpdmVycwoKIwojIEJyb2FkY29tIFNvQyBkcml2ZXJzCiMKQ09ORklHX1NPQ19C
UkNNU1RCPXkKIyBlbmQgb2YgQnJvYWRjb20gU29DIGRyaXZlcnMKCiMKIyBOWFAvRnJlZXNjYWxl
IFFvcklRIFNvQyBkcml2ZXJzCiMKIyBDT05GSUdfRlNMX0RQQUEgaXMgbm90IHNldAojIENPTkZJ
R19RVUlDQ19FTkdJTkUgaXMgbm90IHNldApDT05GSUdfRlNMX0dVVFM9eQpDT05GSUdfRlNMX01D
X0RQSU89eQpDT05GSUdfRFBBQTJfQ09OU09MRT15CkNPTkZJR19GU0xfUUlYSVM9eQpDT05GSUdf
RlNMX1JDUE09eQojIGVuZCBvZiBOWFAvRnJlZXNjYWxlIFFvcklRIFNvQyBkcml2ZXJzCgojCiMg
aS5NWCBTb0MgZHJpdmVycwojCkNPTkZJR19JTVhfR1BDVjJfUE1fRE9NQUlOUz15CkNPTkZJR19J
TVhfU0NVX1NPQz15CkNPTkZJR19JTVg4TV9QTV9ET01BSU5TPXkKQ09ORklHX0lNWDhNX0JVU0ZS
RVE9eQpDT05GSUdfU0VDVklPX1NDPXkKIyBlbmQgb2YgaS5NWCBTb0MgZHJpdmVycwoKIwojIFF1
YWxjb21tIFNvQyBkcml2ZXJzCiMKIyBlbmQgb2YgUXVhbGNvbW0gU29DIGRyaXZlcnMKCkNPTkZJ
R19TT0NfVEk9eQoKIwojIFhpbGlueCBTb0MgZHJpdmVycwojCiMgQ09ORklHX1hJTElOWF9WQ1Ug
aXMgbm90IHNldAojIGVuZCBvZiBYaWxpbnggU29DIGRyaXZlcnMKIyBlbmQgb2YgU09DIChTeXN0
ZW0gT24gQ2hpcCkgc3BlY2lmaWMgRHJpdmVycwoKQ09ORklHX1BNX0RFVkZSRVE9eQoKIwojIERF
VkZSRVEgR292ZXJub3JzCiMKQ09ORklHX0RFVkZSRVFfR09WX1NJTVBMRV9PTkRFTUFORD15CiMg
Q09ORklHX0RFVkZSRVFfR09WX1BFUkZPUk1BTkNFIGlzIG5vdCBzZXQKIyBDT05GSUdfREVWRlJF
UV9HT1ZfUE9XRVJTQVZFIGlzIG5vdCBzZXQKIyBDT05GSUdfREVWRlJFUV9HT1ZfVVNFUlNQQUNF
IGlzIG5vdCBzZXQKIyBDT05GSUdfREVWRlJFUV9HT1ZfUEFTU0lWRSBpcyBub3Qgc2V0CgojCiMg
REVWRlJFUSBEcml2ZXJzCiMKIyBDT05GSUdfUE1fREVWRlJFUV9FVkVOVCBpcyBub3Qgc2V0CkNP
TkZJR19FWFRDT049eQoKIwojIEV4dGNvbiBEZXZpY2UgRHJpdmVycwojCiMgQ09ORklHX0VYVENP
Tl9BRENfSkFDSyBpcyBub3Qgc2V0CiMgQ09ORklHX0VYVENPTl9GU0E5NDgwIGlzIG5vdCBzZXQK
IyBDT05GSUdfRVhUQ09OX0dQSU8gaXMgbm90IHNldAojIENPTkZJR19FWFRDT05fTUFYMzM1NSBp
cyBub3Qgc2V0CiMgQ09ORklHX0VYVENPTl9QVE41MTUwIGlzIG5vdCBzZXQKIyBDT05GSUdfRVhU
Q09OX1JUODk3M0EgaXMgbm90IHNldAojIENPTkZJR19FWFRDT05fU001NTAyIGlzIG5vdCBzZXQK
Q09ORklHX0VYVENPTl9VU0JfR1BJTz15CkNPTkZJR19FWFRDT05fVVNCQ19DUk9TX0VDPXkKQ09O
RklHX01FTU9SWT15CiMgQ09ORklHX0FSTV9QTDE3Ml9NUE1DIGlzIG5vdCBzZXQKQ09ORklHX0ZT
TF9JRkM9eQpDT05GSUdfSUlPPXkKQ09ORklHX0lJT19CVUZGRVI9eQojIENPTkZJR19JSU9fQlVG
RkVSX0NCIGlzIG5vdCBzZXQKIyBDT05GSUdfSUlPX0JVRkZFUl9IV19DT05TVU1FUiBpcyBub3Qg
c2V0CkNPTkZJR19JSU9fS0ZJRk9fQlVGPW0KQ09ORklHX0lJT19UUklHR0VSRURfQlVGRkVSPW0K
IyBDT05GSUdfSUlPX0NPTkZJR0ZTIGlzIG5vdCBzZXQKQ09ORklHX0lJT19UUklHR0VSPXkKQ09O
RklHX0lJT19DT05TVU1FUlNfUEVSX1RSSUdHRVI9MgojIENPTkZJR19JSU9fU1dfREVWSUNFIGlz
IG5vdCBzZXQKIyBDT05GSUdfSUlPX1NXX1RSSUdHRVIgaXMgbm90IHNldAoKIwojIEFjY2VsZXJv
bWV0ZXJzCiMKIyBDT05GSUdfQURJUzE2MjAxIGlzIG5vdCBzZXQKIyBDT05GSUdfQURJUzE2MjA5
IGlzIG5vdCBzZXQKIyBDT05GSUdfQURYTDM0NV9JMkMgaXMgbm90IHNldAojIENPTkZJR19BRFhM
MzQ1X1NQSSBpcyBub3Qgc2V0CiMgQ09ORklHX0FEWEwzNzJfU1BJIGlzIG5vdCBzZXQKIyBDT05G
SUdfQURYTDM3Ml9JMkMgaXMgbm90IHNldAojIENPTkZJR19CTUExODAgaXMgbm90IHNldAojIENP
TkZJR19CTUEyMjAgaXMgbm90IHNldAojIENPTkZJR19CTUMxNTBfQUNDRUwgaXMgbm90IHNldAoj
IENPTkZJR19EQTI4MCBpcyBub3Qgc2V0CiMgQ09ORklHX0RBMzExIGlzIG5vdCBzZXQKIyBDT05G
SUdfRE1BUkQwNiBpcyBub3Qgc2V0CiMgQ09ORklHX0RNQVJEMDkgaXMgbm90IHNldAojIENPTkZJ
R19ETUFSRDEwIGlzIG5vdCBzZXQKIyBDT05GSUdfSUlPX0NST1NfRUNfQUNDRUxfTEVHQUNZIGlz
IG5vdCBzZXQKIyBDT05GSUdfSUlPX1NUX0FDQ0VMXzNBWElTIGlzIG5vdCBzZXQKIyBDT05GSUdf
S1hTRDkgaXMgbm90IHNldAojIENPTkZJR19LWENKSzEwMTMgaXMgbm90IHNldAojIENPTkZJR19N
QzMyMzAgaXMgbm90IHNldAojIENPTkZJR19NTUE3NDU1X0kyQyBpcyBub3Qgc2V0CiMgQ09ORklH
X01NQTc0NTVfU1BJIGlzIG5vdCBzZXQKIyBDT05GSUdfTU1BNzY2MCBpcyBub3Qgc2V0CiMgQ09O
RklHX01NQTg0NTIgaXMgbm90IHNldAojIENPTkZJR19NTUE5NTUxIGlzIG5vdCBzZXQKIyBDT05G
SUdfTU1BOTU1MyBpcyBub3Qgc2V0CiMgQ09ORklHX01YQzQwMDUgaXMgbm90IHNldAojIENPTkZJ
R19NWEM2MjU1IGlzIG5vdCBzZXQKIyBDT05GSUdfU0NBMzAwMCBpcyBub3Qgc2V0CiMgQ09ORklH
X1NUSzgzMTIgaXMgbm90IHNldAojIENPTkZJR19TVEs4QkE1MCBpcyBub3Qgc2V0CiMgZW5kIG9m
IEFjY2VsZXJvbWV0ZXJzCgojCiMgQW5hbG9nIHRvIGRpZ2l0YWwgY29udmVydGVycwojCiMgQ09O
RklHX0FENzEyNCBpcyBub3Qgc2V0CiMgQ09ORklHX0FENzI2NiBpcyBub3Qgc2V0CiMgQ09ORklH
X0FENzI5MSBpcyBub3Qgc2V0CiMgQ09ORklHX0FENzI5OCBpcyBub3Qgc2V0CiMgQ09ORklHX0FE
NzQ3NiBpcyBub3Qgc2V0CiMgQ09ORklHX0FENzYwNl9JRkFDRV9QQVJBTExFTCBpcyBub3Qgc2V0
CiMgQ09ORklHX0FENzYwNl9JRkFDRV9TUEkgaXMgbm90IHNldAojIENPTkZJR19BRDc3NjYgaXMg
bm90IHNldAojIENPTkZJR19BRDc3NjhfMSBpcyBub3Qgc2V0CiMgQ09ORklHX0FENzc4MCBpcyBu
b3Qgc2V0CiMgQ09ORklHX0FENzc5MSBpcyBub3Qgc2V0CiMgQ09ORklHX0FENzc5MyBpcyBub3Qg
c2V0CiMgQ09ORklHX0FENzg4NyBpcyBub3Qgc2V0CiMgQ09ORklHX0FENzkyMyBpcyBub3Qgc2V0
CiMgQ09ORklHX0FENzk0OSBpcyBub3Qgc2V0CiMgQ09ORklHX0FENzk5WCBpcyBub3Qgc2V0CiMg
Q09ORklHX0FYUDIwWF9BREMgaXMgbm90IHNldAojIENPTkZJR19BWFAyODhfQURDIGlzIG5vdCBz
ZXQKIyBDT05GSUdfQ0MxMDAwMV9BREMgaXMgbm90IHNldAojIENPTkZJR19FTlZFTE9QRV9ERVRF
Q1RPUiBpcyBub3Qgc2V0CiMgQ09ORklHX0hJODQzNSBpcyBub3Qgc2V0CiMgQ09ORklHX0hYNzEx
IGlzIG5vdCBzZXQKIyBDT05GSUdfSU5BMlhYX0FEQyBpcyBub3Qgc2V0CiMgQ09ORklHX0lNWDdE
X0FEQyBpcyBub3Qgc2V0CkNPTkZJR19JTVg4UVhQX0FEQz15CiMgQ09ORklHX0xUQzI0NzEgaXMg
bm90IHNldAojIENPTkZJR19MVEMyNDg1IGlzIG5vdCBzZXQKIyBDT05GSUdfTFRDMjQ5NyBpcyBu
b3Qgc2V0CiMgQ09ORklHX01BWDEwMjcgaXMgbm90IHNldAojIENPTkZJR19NQVgxMTEwMCBpcyBu
b3Qgc2V0CiMgQ09ORklHX01BWDExMTggaXMgbm90IHNldAojIENPTkZJR19NQVgxMzYzIGlzIG5v
dCBzZXQKIyBDT05GSUdfTUFYOTYxMSBpcyBub3Qgc2V0CiMgQ09ORklHX01DUDMyMFggaXMgbm90
IHNldAojIENPTkZJR19NQ1AzNDIyIGlzIG5vdCBzZXQKIyBDT05GSUdfTUNQMzkxMSBpcyBub3Qg
c2V0CiMgQ09ORklHX05BVTc4MDIgaXMgbm90IHNldAojIENPTkZJR19RQ09NX1NQTUlfSUFEQyBp
cyBub3Qgc2V0CiMgQ09ORklHX1FDT01fU1BNSV9WQURDIGlzIG5vdCBzZXQKIyBDT05GSUdfUUNP
TV9TUE1JX0FEQzUgaXMgbm90IHNldAojIENPTkZJR19TRF9BRENfTU9EVUxBVE9SIGlzIG5vdCBz
ZXQKIyBDT05GSUdfVElfQURDMDgxQyBpcyBub3Qgc2V0CiMgQ09ORklHX1RJX0FEQzA4MzIgaXMg
bm90IHNldAojIENPTkZJR19USV9BREMwODRTMDIxIGlzIG5vdCBzZXQKIyBDT05GSUdfVElfQURD
MTIxMzggaXMgbm90IHNldAojIENPTkZJR19USV9BREMxMDhTMTAyIGlzIG5vdCBzZXQKIyBDT05G
SUdfVElfQURDMTI4UzA1MiBpcyBub3Qgc2V0CiMgQ09ORklHX1RJX0FEQzE2MVM2MjYgaXMgbm90
IHNldAojIENPTkZJR19USV9BRFMxMDE1IGlzIG5vdCBzZXQKIyBDT05GSUdfVElfQURTNzk1MCBp
cyBub3Qgc2V0CiMgQ09ORklHX1RJX0FEUzgzNDQgaXMgbm90IHNldAojIENPTkZJR19USV9BRFM4
Njg4IGlzIG5vdCBzZXQKIyBDT05GSUdfVElfQURTMTI0UzA4IGlzIG5vdCBzZXQKIyBDT05GSUdf
VElfVExDNDU0MSBpcyBub3Qgc2V0CiMgQ09ORklHX1ZGNjEwX0FEQyBpcyBub3Qgc2V0CiMgQ09O
RklHX1hJTElOWF9YQURDIGlzIG5vdCBzZXQKIyBlbmQgb2YgQW5hbG9nIHRvIGRpZ2l0YWwgY29u
dmVydGVycwoKIwojIEFuYWxvZyBGcm9udCBFbmRzCiMKIyBDT05GSUdfSUlPX1JFU0NBTEUgaXMg
bm90IHNldAojIGVuZCBvZiBBbmFsb2cgRnJvbnQgRW5kcwoKIwojIEFtcGxpZmllcnMKIwojIENP
TkZJR19BRDgzNjYgaXMgbm90IHNldAojIGVuZCBvZiBBbXBsaWZpZXJzCgojCiMgQ2hlbWljYWwg
U2Vuc29ycwojCiMgQ09ORklHX0FUTEFTX1BIX1NFTlNPUiBpcyBub3Qgc2V0CiMgQ09ORklHX0JN
RTY4MCBpcyBub3Qgc2V0CiMgQ09ORklHX0NDUzgxMSBpcyBub3Qgc2V0CiMgQ09ORklHX0lBUUNP
UkUgaXMgbm90IHNldAojIENPTkZJR19QTVM3MDAzIGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU0lS
SU9OX1NHUDMwIGlzIG5vdCBzZXQKIyBDT05GSUdfU1BTMzAgaXMgbm90IHNldAojIENPTkZJR19W
Wjg5WCBpcyBub3Qgc2V0CiMgZW5kIG9mIENoZW1pY2FsIFNlbnNvcnMKCkNPTkZJR19JSU9fQ1JP
U19FQ19TRU5TT1JTX0NPUkU9bQpDT05GSUdfSUlPX0NST1NfRUNfU0VOU09SUz1tCiMgQ09ORklH
X0lJT19DUk9TX0VDX1NFTlNPUlNfTElEX0FOR0xFIGlzIG5vdCBzZXQKCiMKIyBIaWQgU2Vuc29y
IElJTyBDb21tb24KIwojIGVuZCBvZiBIaWQgU2Vuc29yIElJTyBDb21tb24KCiMKIyBTU1AgU2Vu
c29yIENvbW1vbgojCiMgQ09ORklHX0lJT19TU1BfU0VOU09SSFVCIGlzIG5vdCBzZXQKIyBlbmQg
b2YgU1NQIFNlbnNvciBDb21tb24KCiMKIyBEaWdpdGFsIHRvIGFuYWxvZyBjb252ZXJ0ZXJzCiMK
IyBDT05GSUdfQUQ1MDY0IGlzIG5vdCBzZXQKIyBDT05GSUdfQUQ1MzYwIGlzIG5vdCBzZXQKIyBD
T05GSUdfQUQ1MzgwIGlzIG5vdCBzZXQKIyBDT05GSUdfQUQ1NDIxIGlzIG5vdCBzZXQKIyBDT05G
SUdfQUQ1NDQ2IGlzIG5vdCBzZXQKIyBDT05GSUdfQUQ1NDQ5IGlzIG5vdCBzZXQKIyBDT05GSUdf
QUQ1NTkyUiBpcyBub3Qgc2V0CiMgQ09ORklHX0FENTU5M1IgaXMgbm90IHNldAojIENPTkZJR19B
RDU1MDQgaXMgbm90IHNldAojIENPTkZJR19BRDU2MjRSX1NQSSBpcyBub3Qgc2V0CiMgQ09ORklH
X0xUQzE2NjAgaXMgbm90IHNldAojIENPTkZJR19MVEMyNjMyIGlzIG5vdCBzZXQKIyBDT05GSUdf
QUQ1Njg2X1NQSSBpcyBub3Qgc2V0CiMgQ09ORklHX0FENTY5Nl9JMkMgaXMgbm90IHNldAojIENP
TkZJR19BRDU3NTUgaXMgbm90IHNldAojIENPTkZJR19BRDU3NTggaXMgbm90IHNldAojIENPTkZJ
R19BRDU3NjEgaXMgbm90IHNldAojIENPTkZJR19BRDU3NjQgaXMgbm90IHNldAojIENPTkZJR19B
RDU3OTEgaXMgbm90IHNldAojIENPTkZJR19BRDczMDMgaXMgbm90IHNldAojIENPTkZJR19BRDg4
MDEgaXMgbm90IHNldAojIENPTkZJR19EUE9UX0RBQyBpcyBub3Qgc2V0CiMgQ09ORklHX0RTNDQy
NCBpcyBub3Qgc2V0CiMgQ09ORklHX002MjMzMiBpcyBub3Qgc2V0CiMgQ09ORklHX01BWDUxNyBp
cyBub3Qgc2V0CiMgQ09ORklHX01BWDU4MjEgaXMgbm90IHNldAojIENPTkZJR19NQ1A0NzI1IGlz
IG5vdCBzZXQKIyBDT05GSUdfTUNQNDkyMiBpcyBub3Qgc2V0CiMgQ09ORklHX1RJX0RBQzA4MlMw
ODUgaXMgbm90IHNldAojIENPTkZJR19USV9EQUM1NTcxIGlzIG5vdCBzZXQKIyBDT05GSUdfVElf
REFDNzMxMSBpcyBub3Qgc2V0CiMgQ09ORklHX1RJX0RBQzc2MTIgaXMgbm90IHNldAojIENPTkZJ
R19WRjYxMF9EQUMgaXMgbm90IHNldAojIGVuZCBvZiBEaWdpdGFsIHRvIGFuYWxvZyBjb252ZXJ0
ZXJzCgojCiMgSUlPIGR1bW15IGRyaXZlcgojCiMgZW5kIG9mIElJTyBkdW1teSBkcml2ZXIKCiMK
IyBGcmVxdWVuY3kgU3ludGhlc2l6ZXJzIEREUy9QTEwKIwoKIwojIENsb2NrIEdlbmVyYXRvci9E
aXN0cmlidXRpb24KIwojIENPTkZJR19BRDk1MjMgaXMgbm90IHNldAojIGVuZCBvZiBDbG9jayBH
ZW5lcmF0b3IvRGlzdHJpYnV0aW9uCgojCiMgUGhhc2UtTG9ja2VkIExvb3AgKFBMTCkgZnJlcXVl
bmN5IHN5bnRoZXNpemVycwojCiMgQ09ORklHX0FERjQzNTAgaXMgbm90IHNldAojIENPTkZJR19B
REY0MzcxIGlzIG5vdCBzZXQKIyBlbmQgb2YgUGhhc2UtTG9ja2VkIExvb3AgKFBMTCkgZnJlcXVl
bmN5IHN5bnRoZXNpemVycwojIGVuZCBvZiBGcmVxdWVuY3kgU3ludGhlc2l6ZXJzIEREUy9QTEwK
CiMKIyBEaWdpdGFsIGd5cm9zY29wZSBzZW5zb3JzCiMKIyBDT05GSUdfQURJUzE2MDgwIGlzIG5v
dCBzZXQKIyBDT05GSUdfQURJUzE2MTMwIGlzIG5vdCBzZXQKIyBDT05GSUdfQURJUzE2MTM2IGlz
IG5vdCBzZXQKIyBDT05GSUdfQURJUzE2MjYwIGlzIG5vdCBzZXQKIyBDT05GSUdfQURYUlM0NTAg
aXMgbm90IHNldAojIENPTkZJR19CTUcxNjAgaXMgbm90IHNldAojIENPTkZJR19GWEFTMjEwMDJD
IGlzIG5vdCBzZXQKIyBDT05GSUdfTVBVMzA1MF9JMkMgaXMgbm90IHNldAojIENPTkZJR19JSU9f
U1RfR1lST18zQVhJUyBpcyBub3Qgc2V0CiMgQ09ORklHX0lURzMyMDAgaXMgbm90IHNldAojIGVu
ZCBvZiBEaWdpdGFsIGd5cm9zY29wZSBzZW5zb3JzCgojCiMgSGVhbHRoIFNlbnNvcnMKIwoKIwoj
IEhlYXJ0IFJhdGUgTW9uaXRvcnMKIwojIENPTkZJR19BRkU0NDAzIGlzIG5vdCBzZXQKIyBDT05G
SUdfQUZFNDQwNCBpcyBub3Qgc2V0CiMgQ09ORklHX01BWDMwMTAwIGlzIG5vdCBzZXQKIyBDT05G
SUdfTUFYMzAxMDIgaXMgbm90IHNldAojIGVuZCBvZiBIZWFydCBSYXRlIE1vbml0b3JzCiMgZW5k
IG9mIEhlYWx0aCBTZW5zb3JzCgojCiMgSHVtaWRpdHkgc2Vuc29ycwojCiMgQ09ORklHX0FNMjMx
NSBpcyBub3Qgc2V0CiMgQ09ORklHX0RIVDExIGlzIG5vdCBzZXQKIyBDT05GSUdfSERDMTAwWCBp
cyBub3Qgc2V0CiMgQ09ORklHX0hUUzIyMSBpcyBub3Qgc2V0CiMgQ09ORklHX0hUVTIxIGlzIG5v
dCBzZXQKIyBDT05GSUdfU0k3MDA1IGlzIG5vdCBzZXQKIyBDT05GSUdfU0k3MDIwIGlzIG5vdCBz
ZXQKIyBlbmQgb2YgSHVtaWRpdHkgc2Vuc29ycwoKIwojIEluZXJ0aWFsIG1lYXN1cmVtZW50IHVu
aXRzCiMKIyBDT05GSUdfQURJUzE2NDAwIGlzIG5vdCBzZXQKIyBDT05GSUdfQURJUzE2NDYwIGlz
IG5vdCBzZXQKIyBDT05GSUdfQURJUzE2NDgwIGlzIG5vdCBzZXQKIyBDT05GSUdfQk1JMTYwX0ky
QyBpcyBub3Qgc2V0CiMgQ09ORklHX0JNSTE2MF9TUEkgaXMgbm90IHNldAojIENPTkZJR19LTVg2
MSBpcyBub3Qgc2V0CiMgQ09ORklHX0lOVl9NUFU2MDUwX0kyQyBpcyBub3Qgc2V0CiMgQ09ORklH
X0lOVl9NUFU2MDUwX1NQSSBpcyBub3Qgc2V0CiMgQ09ORklHX0lJT19TVF9MU002RFNYIGlzIG5v
dCBzZXQKIyBlbmQgb2YgSW5lcnRpYWwgbWVhc3VyZW1lbnQgdW5pdHMKCiMKIyBMaWdodCBzZW5z
b3JzCiMKIyBDT05GSUdfQUNQSV9BTFMgaXMgbm90IHNldAojIENPTkZJR19BREpEX1MzMTEgaXMg
bm90IHNldAojIENPTkZJR19BTDMzMjBBIGlzIG5vdCBzZXQKIyBDT05GSUdfQVBEUzkzMDAgaXMg
bm90IHNldAojIENPTkZJR19BUERTOTk2MCBpcyBub3Qgc2V0CiMgQ09ORklHX0JIMTc1MCBpcyBu
b3Qgc2V0CiMgQ09ORklHX0JIMTc4MCBpcyBub3Qgc2V0CiMgQ09ORklHX0NNMzIxODEgaXMgbm90
IHNldAojIENPTkZJR19DTTMyMzIgaXMgbm90IHNldAojIENPTkZJR19DTTMzMjMgaXMgbm90IHNl
dAojIENPTkZJR19DTTM2MDUgaXMgbm90IHNldAojIENPTkZJR19DTTM2NjUxIGlzIG5vdCBzZXQK
Q09ORklHX0lJT19DUk9TX0VDX0xJR0hUX1BST1g9bQojIENPTkZJR19HUDJBUDAyMEEwMEYgaXMg
bm90IHNldAojIENPTkZJR19TRU5TT1JTX0lTTDI5MDE4IGlzIG5vdCBzZXQKIyBDT05GSUdfU0VO
U09SU19JU0wyOTAyOCBpcyBub3Qgc2V0CiMgQ09ORklHX0lTTDI5MTI1IGlzIG5vdCBzZXQKIyBD
T05GSUdfSlNBMTIxMiBpcyBub3Qgc2V0CiMgQ09ORklHX1JQUjA1MjEgaXMgbm90IHNldAojIENP
TkZJR19MVFI1MDEgaXMgbm90IHNldAojIENPTkZJR19MVjAxMDRDUyBpcyBub3Qgc2V0CiMgQ09O
RklHX01BWDQ0MDAwIGlzIG5vdCBzZXQKIyBDT05GSUdfTUFYNDQwMDkgaXMgbm90IHNldAojIENP
TkZJR19OT0ExMzA1IGlzIG5vdCBzZXQKIyBDT05GSUdfT1BUMzAwMSBpcyBub3Qgc2V0CiMgQ09O
RklHX1BBMTIyMDMwMDEgaXMgbm90IHNldAojIENPTkZJR19TSTExMzMgaXMgbm90IHNldAojIENP
TkZJR19TSTExNDUgaXMgbm90IHNldAojIENPTkZJR19TVEszMzEwIGlzIG5vdCBzZXQKIyBDT05G
SUdfU1RfVVZJUzI1IGlzIG5vdCBzZXQKIyBDT05GSUdfVENTMzQxNCBpcyBub3Qgc2V0CiMgQ09O
RklHX1RDUzM0NzIgaXMgbm90IHNldAojIENPTkZJR19TRU5TT1JTX1RTTDI1NjMgaXMgbm90IHNl
dAojIENPTkZJR19UU0wyNTgzIGlzIG5vdCBzZXQKIyBDT05GSUdfVFNMMjc3MiBpcyBub3Qgc2V0
CiMgQ09ORklHX1RTTDQ1MzEgaXMgbm90IHNldAojIENPTkZJR19VUzUxODJEIGlzIG5vdCBzZXQK
IyBDT05GSUdfVkNOTDQwMDAgaXMgbm90IHNldAojIENPTkZJR19WQ05MNDAzNSBpcyBub3Qgc2V0
CiMgQ09ORklHX1ZFTUw2MDcwIGlzIG5vdCBzZXQKIyBDT05GSUdfVkw2MTgwIGlzIG5vdCBzZXQK
IyBDT05GSUdfWk9QVDIyMDEgaXMgbm90IHNldAojIGVuZCBvZiBMaWdodCBzZW5zb3JzCgojCiMg
TWFnbmV0b21ldGVyIHNlbnNvcnMKIwojIENPTkZJR19BSzg5NzQgaXMgbm90IHNldAojIENPTkZJ
R19BSzg5NzUgaXMgbm90IHNldAojIENPTkZJR19BSzA5OTExIGlzIG5vdCBzZXQKIyBDT05GSUdf
Qk1DMTUwX01BR05fSTJDIGlzIG5vdCBzZXQKIyBDT05GSUdfQk1DMTUwX01BR05fU1BJIGlzIG5v
dCBzZXQKIyBDT05GSUdfTUFHMzExMCBpcyBub3Qgc2V0CiMgQ09ORklHX01NQzM1MjQwIGlzIG5v
dCBzZXQKIyBDT05GSUdfSUlPX1NUX01BR05fM0FYSVMgaXMgbm90IHNldAojIENPTkZJR19TRU5T
T1JTX0hNQzU4NDNfSTJDIGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU09SU19ITUM1ODQzX1NQSSBp
cyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfUk0zMTAwX0kyQyBpcyBub3Qgc2V0CiMgQ09ORklH
X1NFTlNPUlNfUk0zMTAwX1NQSSBpcyBub3Qgc2V0CiMgZW5kIG9mIE1hZ25ldG9tZXRlciBzZW5z
b3JzCgojCiMgTXVsdGlwbGV4ZXJzCiMKIyBDT05GSUdfSUlPX01VWCBpcyBub3Qgc2V0CiMgZW5k
IG9mIE11bHRpcGxleGVycwoKIwojIEluY2xpbm9tZXRlciBzZW5zb3JzCiMKIyBlbmQgb2YgSW5j
bGlub21ldGVyIHNlbnNvcnMKCiMKIyBUcmlnZ2VycyAtIHN0YW5kYWxvbmUKIwojIENPTkZJR19J
SU9fSU5URVJSVVBUX1RSSUdHRVIgaXMgbm90IHNldAojIENPTkZJR19JSU9fU1lTRlNfVFJJR0dF
UiBpcyBub3Qgc2V0CiMgZW5kIG9mIFRyaWdnZXJzIC0gc3RhbmRhbG9uZQoKIwojIERpZ2l0YWwg
cG90ZW50aW9tZXRlcnMKIwojIENPTkZJR19BRDUyNzIgaXMgbm90IHNldAojIENPTkZJR19EUzE4
MDMgaXMgbm90IHNldAojIENPTkZJR19NQVg1NDMyIGlzIG5vdCBzZXQKIyBDT05GSUdfTUFYNTQ4
MSBpcyBub3Qgc2V0CiMgQ09ORklHX01BWDU0ODcgaXMgbm90IHNldAojIENPTkZJR19NQ1A0MDE4
IGlzIG5vdCBzZXQKIyBDT05GSUdfTUNQNDEzMSBpcyBub3Qgc2V0CiMgQ09ORklHX01DUDQ1MzEg
aXMgbm90IHNldAojIENPTkZJR19NQ1A0MTAxMCBpcyBub3Qgc2V0CiMgQ09ORklHX1RQTDAxMDIg
aXMgbm90IHNldAojIGVuZCBvZiBEaWdpdGFsIHBvdGVudGlvbWV0ZXJzCgojCiMgRGlnaXRhbCBw
b3RlbnRpb3N0YXRzCiMKIyBDT05GSUdfTE1QOTEwMDAgaXMgbm90IHNldAojIGVuZCBvZiBEaWdp
dGFsIHBvdGVudGlvc3RhdHMKCiMKIyBQcmVzc3VyZSBzZW5zb3JzCiMKIyBDT05GSUdfQUJQMDYw
TUcgaXMgbm90IHNldAojIENPTkZJR19CTVAyODAgaXMgbm90IHNldApDT05GSUdfSUlPX0NST1Nf
RUNfQkFSTz1tCiMgQ09ORklHX0RQUzMxMCBpcyBub3Qgc2V0CiMgQ09ORklHX0hQMDMgaXMgbm90
IHNldAojIENPTkZJR19NUEwxMTVfSTJDIGlzIG5vdCBzZXQKIyBDT05GSUdfTVBMMTE1X1NQSSBp
cyBub3Qgc2V0CiMgQ09ORklHX01QTDMxMTUgaXMgbm90IHNldAojIENPTkZJR19NUzU2MTEgaXMg
bm90IHNldAojIENPTkZJR19NUzU2MzcgaXMgbm90IHNldAojIENPTkZJR19JSU9fU1RfUFJFU1Mg
aXMgbm90IHNldAojIENPTkZJR19UNTQwMyBpcyBub3Qgc2V0CiMgQ09ORklHX0hQMjA2QyBpcyBu
b3Qgc2V0CiMgQ09ORklHX1pQQTIzMjYgaXMgbm90IHNldAojIGVuZCBvZiBQcmVzc3VyZSBzZW5z
b3JzCgojCiMgTGlnaHRuaW5nIHNlbnNvcnMKIwojIENPTkZJR19BUzM5MzUgaXMgbm90IHNldAoj
IGVuZCBvZiBMaWdodG5pbmcgc2Vuc29ycwoKIwojIFByb3hpbWl0eSBhbmQgZGlzdGFuY2Ugc2Vu
c29ycwojCiMgQ09ORklHX0lTTDI5NTAxIGlzIG5vdCBzZXQKIyBDT05GSUdfTElEQVJfTElURV9W
MiBpcyBub3Qgc2V0CiMgQ09ORklHX01CMTIzMiBpcyBub3Qgc2V0CiMgQ09ORklHX1JGRDc3NDAy
IGlzIG5vdCBzZXQKIyBDT05GSUdfU1JGMDQgaXMgbm90IHNldAojIENPTkZJR19TWDk1MDAgaXMg
bm90IHNldAojIENPTkZJR19TUkYwOCBpcyBub3Qgc2V0CiMgQ09ORklHX1ZMNTNMMFhfSTJDIGlz
IG5vdCBzZXQKIyBlbmQgb2YgUHJveGltaXR5IGFuZCBkaXN0YW5jZSBzZW5zb3JzCgojCiMgUmVz
b2x2ZXIgdG8gZGlnaXRhbCBjb252ZXJ0ZXJzCiMKIyBDT05GSUdfQUQyUzkwIGlzIG5vdCBzZXQK
IyBDT05GSUdfQUQyUzEyMDAgaXMgbm90IHNldAojIGVuZCBvZiBSZXNvbHZlciB0byBkaWdpdGFs
IGNvbnZlcnRlcnMKCiMKIyBUZW1wZXJhdHVyZSBzZW5zb3JzCiMKIyBDT05GSUdfTUFYSU1fVEhF
Uk1PQ09VUExFIGlzIG5vdCBzZXQKIyBDT05GSUdfTUxYOTA2MTQgaXMgbm90IHNldAojIENPTkZJ
R19NTFg5MDYzMiBpcyBub3Qgc2V0CiMgQ09ORklHX1RNUDAwNiBpcyBub3Qgc2V0CiMgQ09ORklH
X1RNUDAwNyBpcyBub3Qgc2V0CiMgQ09ORklHX1RTWVMwMSBpcyBub3Qgc2V0CiMgQ09ORklHX1RT
WVMwMkQgaXMgbm90IHNldAojIENPTkZJR19NQVgzMTg1NiBpcyBub3Qgc2V0CiMgZW5kIG9mIFRl
bXBlcmF0dXJlIHNlbnNvcnMKCiMgQ09ORklHX05UQiBpcyBub3Qgc2V0CiMgQ09ORklHX1ZNRV9C
VVMgaXMgbm90IHNldApDT05GSUdfUFdNPXkKQ09ORklHX1BXTV9TWVNGUz15CkNPTkZJR19QV01f
Q1JPU19FQz1tCiMgQ09ORklHX1BXTV9GU0xfRlRNIGlzIG5vdCBzZXQKIyBDT05GSUdfUFdNX0lN
WDEgaXMgbm90IHNldApDT05GSUdfUFdNX0lNWDI3PXkKIyBDT05GSUdfUFdNX0lNWF9UUE0gaXMg
bm90IHNldAojIENPTkZJR19QV01fUENBOTY4NSBpcyBub3Qgc2V0CgojCiMgSVJRIGNoaXAgc3Vw
cG9ydAojCkNPTkZJR19JUlFDSElQPXkKQ09ORklHX0FSTV9HSUM9eQpDT05GSUdfQVJNX0dJQ19N
QVhfTlI9MQpDT05GSUdfQVJNX0dJQ19WMk09eQpDT05GSUdfQVJNX0dJQ19WMz15CkNPTkZJR19B
Uk1fR0lDX1YzX0lUUz15CkNPTkZJR19BUk1fR0lDX1YzX0lUU19QQ0k9eQpDT05GSUdfQVJNX0dJ
Q19WM19JVFNfRlNMX01DPXkKIyBDT05GSUdfQUxfRklDIGlzIG5vdCBzZXQKQ09ORklHX0lNWF9H
UENWMj15CkNPTkZJR19MU19TQ0ZHX01TST15CkNPTkZJR19QQVJUSVRJT05fUEVSQ1BVPXkKQ09O
RklHX0lNWF9JUlFTVEVFUj15CkNPTkZJR19JTVhfSU5UTVVYPXkKIyBlbmQgb2YgSVJRIGNoaXAg
c3VwcG9ydAoKIyBDT05GSUdfSVBBQ0tfQlVTIGlzIG5vdCBzZXQKQ09ORklHX1JFU0VUX0NPTlRS
T0xMRVI9eQpDT05GSUdfUkVTRVRfRElTUE1JWD15CkNPTkZJR19SRVNFVF9JTVg3PXkKQ09ORklH
X1JFU0VUX0lNWF9IRE1JTUlYPXkKQ09ORklHX1JFU0VUX0lNWF9BVURJT01JWD15CkNPTkZJR19S
RVNFVF9HUElPPXkKIyBDT05GSUdfUkVTRVRfVElfU1lTQ09OIGlzIG5vdCBzZXQKCiMKIyBQSFkg
U3Vic3lzdGVtCiMKQ09ORklHX0dFTkVSSUNfUEhZPXkKQ09ORklHX0dFTkVSSUNfUEhZX01JUElf
RFBIWT15CkNPTkZJR19QSFlfWEdFTkU9eQpDT05GSUdfUEhZX01JWEVMX0xWRFM9eQpDT05GSUdf
UEhZX01JWEVMX0xWRFNfQ09NQk89eQojIENPTkZJR19CQ01fS09OQV9VU0IyX1BIWSBpcyBub3Qg
c2V0CiMgQ09ORklHX1BIWV9DQURFTkNFX0RQIGlzIG5vdCBzZXQKIyBDT05GSUdfUEhZX0NBREVO
Q0VfRFBIWSBpcyBub3Qgc2V0CiMgQ09ORklHX1BIWV9DQURFTkNFX1NJRVJSQSBpcyBub3Qgc2V0
CkNPTkZJR19QSFlfRlNMX0lNWDhNUF9MVkRTPXkKQ09ORklHX1BIWV9GU0xfSU1YOE1RX1VTQj15
CkNPTkZJR19QSFlfTUlYRUxfTUlQSV9EUEhZPXkKQ09ORklHX1BIWV9TQU1TVU5HX0hETUlfUEhZ
PXkKQ09ORklHX1BIWV9GU0xfSU1YX1BDSUU9eQojIENPTkZJR19QSFlfUFhBXzI4Tk1fSFNJQyBp
cyBub3Qgc2V0CiMgQ09ORklHX1BIWV9QWEFfMjhOTV9VU0IyIGlzIG5vdCBzZXQKIyBDT05GSUdf
UEhZX0NQQ0FQX1VTQiBpcyBub3Qgc2V0CiMgQ09ORklHX1BIWV9NQVBQSE9ORV9NRE02NjAwIGlz
IG5vdCBzZXQKIyBDT05GSUdfUEhZX09DRUxPVF9TRVJERVMgaXMgbm90IHNldApDT05GSUdfUEhZ
X1FDT01fVVNCX0hTPXkKIyBDT05GSUdfUEhZX1FDT01fVVNCX0hTSUMgaXMgbm90IHNldApDT05G
SUdfUEhZX1NBTVNVTkdfVVNCMj15CiMgQ09ORklHX1BIWV9UVVNCMTIxMCBpcyBub3Qgc2V0CiMg
ZW5kIG9mIFBIWSBTdWJzeXN0ZW0KCiMgQ09ORklHX1BPV0VSQ0FQIGlzIG5vdCBzZXQKIyBDT05G
SUdfTUNCIGlzIG5vdCBzZXQKCiMKIyBQZXJmb3JtYW5jZSBtb25pdG9yIHN1cHBvcnQKIwojIENP
TkZJR19BUk1fQ0NJX1BNVSBpcyBub3Qgc2V0CiMgQ09ORklHX0FSTV9DQ04gaXMgbm90IHNldApD
T05GSUdfQVJNX1BNVT15CkNPTkZJR19BUk1fUE1VX0FDUEk9eQojIENPTkZJR19BUk1fU01NVV9W
M19QTVUgaXMgbm90IHNldAojIENPTkZJR19BUk1fRFNVX1BNVSBpcyBub3Qgc2V0CkNPTkZJR19G
U0xfSU1YOF9ERFJfUE1VPXkKQ09ORklHX0hJU0lfUE1VPXkKIyBDT05GSUdfQVJNX1NQRV9QTVUg
aXMgbm90IHNldAojIGVuZCBvZiBQZXJmb3JtYW5jZSBtb25pdG9yIHN1cHBvcnQKCkNPTkZJR19S
QVM9eQoKIwojIEFuZHJvaWQKIwojIENPTkZJR19BTkRST0lEIGlzIG5vdCBzZXQKIyBlbmQgb2Yg
QW5kcm9pZAoKIyBDT05GSUdfTElCTlZESU1NIGlzIG5vdCBzZXQKIyBDT05GSUdfREFYIGlzIG5v
dCBzZXQKQ09ORklHX05WTUVNPXkKQ09ORklHX05WTUVNX1NZU0ZTPXkKIyBDT05GSUdfTlZNRU1f
SU1YX0lJTSBpcyBub3Qgc2V0CkNPTkZJR19OVk1FTV9JTVhfT0NPVFA9eQpDT05GSUdfTlZNRU1f
SU1YX09DT1RQX1NDVT15CiMgQ09ORklHX05WTUVNX1NOVlNfTFBHUFIgaXMgbm90IHNldAoKIwoj
IEhXIHRyYWNpbmcgc3VwcG9ydAojCiMgQ09ORklHX1NUTSBpcyBub3Qgc2V0CiMgQ09ORklHX0lO
VEVMX1RIIGlzIG5vdCBzZXQKIyBlbmQgb2YgSFcgdHJhY2luZyBzdXBwb3J0CgpDT05GSUdfRlBH
QT15CiMgQ09ORklHX0FMVEVSQV9QUl9JUF9DT1JFIGlzIG5vdCBzZXQKIyBDT05GSUdfRlBHQV9N
R1JfQUxURVJBX1BTX1NQSSBpcyBub3Qgc2V0CiMgQ09ORklHX0ZQR0FfTUdSX0FMVEVSQV9DVlAg
aXMgbm90IHNldAojIENPTkZJR19GUEdBX01HUl9YSUxJTlhfU1BJIGlzIG5vdCBzZXQKIyBDT05G
SUdfRlBHQV9NR1JfSUNFNDBfU1BJIGlzIG5vdCBzZXQKIyBDT05GSUdfRlBHQV9NR1JfTUFDSFhP
Ml9TUEkgaXMgbm90IHNldApDT05GSUdfRlBHQV9CUklER0U9bQpDT05GSUdfQUxURVJBX0ZSRUVa
RV9CUklER0U9bQojIENPTkZJR19YSUxJTlhfUFJfREVDT1VQTEVSIGlzIG5vdCBzZXQKQ09ORklH
X0ZQR0FfUkVHSU9OPW0KQ09ORklHX09GX0ZQR0FfUkVHSU9OPW0KIyBDT05GSUdfRlBHQV9ERkwg
aXMgbm90IHNldAojIENPTkZJR19GU0kgaXMgbm90IHNldApDT05GSUdfVEVFPXkKCiMKIyBURUUg
ZHJpdmVycwojCkNPTkZJR19PUFRFRT15CkNPTkZJR19PUFRFRV9TSE1fTlVNX1BSSVZfUEFHRVM9
MQojIGVuZCBvZiBURUUgZHJpdmVycwoKQ09ORklHX01VTFRJUExFWEVSPXkKCiMKIyBNdWx0aXBs
ZXhlciBkcml2ZXJzCiMKIyBDT05GSUdfTVVYX0FERzc5MkEgaXMgbm90IHNldAojIENPTkZJR19N
VVhfQURHUzE0MDggaXMgbm90IHNldAojIENPTkZJR19NVVhfR1BJTyBpcyBub3Qgc2V0CkNPTkZJ
R19NVVhfTU1JTz15CiMgZW5kIG9mIE11bHRpcGxleGVyIGRyaXZlcnMKCkNPTkZJR19QTV9PUFA9
eQojIENPTkZJR19TSU9YIGlzIG5vdCBzZXQKIyBDT05GSUdfU0xJTUJVUyBpcyBub3Qgc2V0CiMg
Q09ORklHX0lOVEVSQ09OTkVDVCBpcyBub3Qgc2V0CiMgQ09ORklHX0NPVU5URVIgaXMgbm90IHNl
dAoKIwojIE1YQyBzdXBwb3J0IGRyaXZlcnMKIwpDT05GSUdfTVhDX1NJTT15CiMgQ09ORklHX01Y
Q19JUFUgaXMgbm90IHNldAoKIwojIE1YQyBIQU5UUk8oVmlkZW8gUHJvY2Vzc2luZyBVbml0KSBz
dXBwb3J0CiMKQ09ORklHX01YQ19IQU5UUk89eQojIGVuZCBvZiBNWEMgSEFOVFJPKFZpZGVvIFBy
b2Nlc3NpbmcgVW5pdCkgc3VwcG9ydAoKIwojIE1YQyBIQU5UUk8oVmlkZW8gUHJvY2Vzc2luZyBV
bml0KSA4NDUgc3VwcG9ydAojCkNPTkZJR19NWENfSEFOVFJPXzg0NT15CiMgZW5kIG9mIE1YQyBI
QU5UUk8oVmlkZW8gUHJvY2Vzc2luZyBVbml0KSA4NDUgc3VwcG9ydAoKIwojIE1YQyBIQU5UUk8o
VmlkZW8gUHJvY2Vzc2luZyBVbml0KSBlbmNvZGVyIHN1cHBvcnQKIwpDT05GSUdfTVhDX0hBTlRS
T184NDVfSDE9eQojIGVuZCBvZiBNWEMgSEFOVFJPKFZpZGVvIFByb2Nlc3NpbmcgVW5pdCkgZW5j
b2RlciBzdXBwb3J0CgojCiMgTVhDIEhBTlRSTyhWaWRlbyBQcm9jZXNzaW5nIFVuaXQpIFZDODAw
MEUgZW5jb2RlciBzdXBwb3J0CiMKQ09ORklHX01YQ19IQU5UUk9fVkM4MDAwRT15CiMgZW5kIG9m
IE1YQyBIQU5UUk8oVmlkZW8gUHJvY2Vzc2luZyBVbml0KSBWQzgwMDBFIGVuY29kZXIgc3VwcG9y
dAoKIwojIE1YQyBWUFUoVmlkZW8gUHJvY2Vzc2luZyBVbml0KSBNQUxPTkUgREVDT0RFUiBzdXBw
b3J0CiMKQ09ORklHX01YQ19WUFVfTUFMT05FPXkKIyBDT05GSUdfTVhDX1ZQVV9NQUxPTkVfREVC
VUcgaXMgbm90IHNldAojIGVuZCBvZiBNWEMgVlBVKFZpZGVvIFByb2Nlc3NpbmcgVW5pdCkgTUFM
T05FIERFQ09ERVIgc3VwcG9ydAoKIwojIE1YQyBWUFUoVmlkZW8gUHJvY2Vzc2luZyBVbml0KSBX
SU5EU09SIEVOQ09ERVIgc3VwcG9ydAojCkNPTkZJR19NWENfVlBVX1dJTkRTT1I9eQojIENPTkZJ
R19NWENfVlBVX1dJTkRTT1JfREVCVUcgaXMgbm90IHNldAojIGVuZCBvZiBNWEMgVlBVKFZpZGVv
IFByb2Nlc3NpbmcgVW5pdCkgV0lORFNPUiBFTkNPREVSIHN1cHBvcnQKCiMKIyBYVVZJL1BQTSBI
VyBUUyBmaWx0ZXIgYW5kIGRlbXV4CiMKQ09ORklHX01YQ19JTVhfRE1YX0hXPXkKIyBlbmQgb2Yg
WFVWSS9QUE0gSFcgVFMgZmlsdGVyIGFuZCBkZW11eAoKIwojIE1YQyBWaXZhbnRlIEdQVSBzdXBw
b3J0CiMKIyBDT05GSUdfTVhDX0dQVV9WSVYgaXMgbm90IHNldAojIGVuZCBvZiBNWEMgVml2YW50
ZSBHUFUgc3VwcG9ydAoKIwojIE1YQyBWUFUoVmlkZW8gUHJvY2Vzc2luZyBVbml0KSBzdXBwb3J0
CiMKIyBlbmQgb2YgTVhDIFZQVShWaWRlbyBQcm9jZXNzaW5nIFVuaXQpIHN1cHBvcnQKCiMKIyBN
WEMgU0lNIFN1cHBvcnQKIwojIENPTkZJR19NWENfU0lNdjIgaXMgbm90IHNldApDT05GSUdfTVhD
X0VNVlNJTT15CiMgZW5kIG9mIE1YQyBTSU0gU3VwcG9ydAoKIwojIE1YQyBNZWRpYSBMb2NhbCBC
dXMgRHJpdmVyCiMKQ09ORklHX01YQ19NTEI9eQpDT05GSUdfTVhDX01MQjE1MD15CiMgZW5kIG9m
IE1YQyBNZWRpYSBMb2NhbCBCdXMgRHJpdmVyCgojCiMgTVhDIEhETUkgQ0VDIChDb25zdW1lciBF
bGVjdHJvbmljcyBDb250cm9sKSBzdXBwb3J0CiMKIyBlbmQgb2YgTVhDIEhETUkgQ0VDIChDb25z
dW1lciBFbGVjdHJvbmljcyBDb250cm9sKSBzdXBwb3J0CgojCiMgTVhDIE1JUEkgU3VwcG9ydAoj
CiMgZW5kIG9mIE1YQyBNSVBJIFN1cHBvcnQKIyBlbmQgb2YgTVhDIHN1cHBvcnQgZHJpdmVycwoj
IGVuZCBvZiBEZXZpY2UgRHJpdmVycwoKIwojIEZpbGUgc3lzdGVtcwojCkNPTkZJR19EQ0FDSEVf
V09SRF9BQ0NFU1M9eQojIENPTkZJR19WQUxJREFURV9GU19QQVJTRVIgaXMgbm90IHNldApDT05G
SUdfRlNfSU9NQVA9eQpDT05GSUdfRVhUMl9GUz15CiMgQ09ORklHX0VYVDJfRlNfWEFUVFIgaXMg
bm90IHNldApDT05GSUdfRVhUM19GUz15CiMgQ09ORklHX0VYVDNfRlNfUE9TSVhfQUNMIGlzIG5v
dCBzZXQKIyBDT05GSUdfRVhUM19GU19TRUNVUklUWSBpcyBub3Qgc2V0CkNPTkZJR19FWFQ0X0ZT
PXkKQ09ORklHX0VYVDRfRlNfUE9TSVhfQUNMPXkKQ09ORklHX0VYVDRfRlNfU0VDVVJJVFk9eQoj
IENPTkZJR19FWFQ0X0RFQlVHIGlzIG5vdCBzZXQKQ09ORklHX0pCRDI9eQojIENPTkZJR19KQkQy
X0RFQlVHIGlzIG5vdCBzZXQKQ09ORklHX0ZTX01CQ0FDSEU9eQojIENPTkZJR19SRUlTRVJGU19G
UyBpcyBub3Qgc2V0CiMgQ09ORklHX0pGU19GUyBpcyBub3Qgc2V0CiMgQ09ORklHX1hGU19GUyBp
cyBub3Qgc2V0CiMgQ09ORklHX0dGUzJfRlMgaXMgbm90IHNldAojIENPTkZJR19PQ0ZTMl9GUyBp
cyBub3Qgc2V0CkNPTkZJR19CVFJGU19GUz1tCkNPTkZJR19CVFJGU19GU19QT1NJWF9BQ0w9eQoj
IENPTkZJR19CVFJGU19GU19DSEVDS19JTlRFR1JJVFkgaXMgbm90IHNldAojIENPTkZJR19CVFJG
U19GU19SVU5fU0FOSVRZX1RFU1RTIGlzIG5vdCBzZXQKIyBDT05GSUdfQlRSRlNfREVCVUcgaXMg
bm90IHNldAojIENPTkZJR19CVFJGU19BU1NFUlQgaXMgbm90IHNldAojIENPTkZJR19CVFJGU19G
U19SRUZfVkVSSUZZIGlzIG5vdCBzZXQKIyBDT05GSUdfTklMRlMyX0ZTIGlzIG5vdCBzZXQKIyBD
T05GSUdfRjJGU19GUyBpcyBub3Qgc2V0CiMgQ09ORklHX0ZTX0RBWCBpcyBub3Qgc2V0CkNPTkZJ
R19GU19QT1NJWF9BQ0w9eQpDT05GSUdfRVhQT1JURlM9eQojIENPTkZJR19FWFBPUlRGU19CTE9D
S19PUFMgaXMgbm90IHNldApDT05GSUdfRklMRV9MT0NLSU5HPXkKQ09ORklHX01BTkRBVE9SWV9G
SUxFX0xPQ0tJTkc9eQojIENPTkZJR19GU19FTkNSWVBUSU9OIGlzIG5vdCBzZXQKIyBDT05GSUdf
RlNfVkVSSVRZIGlzIG5vdCBzZXQKQ09ORklHX0ZTTk9USUZZPXkKQ09ORklHX0ROT1RJRlk9eQpD
T05GSUdfSU5PVElGWV9VU0VSPXkKQ09ORklHX0ZBTk9USUZZPXkKQ09ORklHX0ZBTk9USUZZX0FD
Q0VTU19QRVJNSVNTSU9OUz15CkNPTkZJR19RVU9UQT15CiMgQ09ORklHX1FVT1RBX05FVExJTktf
SU5URVJGQUNFIGlzIG5vdCBzZXQKQ09ORklHX1BSSU5UX1FVT1RBX1dBUk5JTkc9eQojIENPTkZJ
R19RVU9UQV9ERUJVRyBpcyBub3Qgc2V0CiMgQ09ORklHX1FGTVRfVjEgaXMgbm90IHNldAojIENP
TkZJR19RRk1UX1YyIGlzIG5vdCBzZXQKQ09ORklHX1FVT1RBQ1RMPXkKQ09ORklHX0FVVE9GUzRf
RlM9eQpDT05GSUdfQVVUT0ZTX0ZTPXkKQ09ORklHX0ZVU0VfRlM9bQpDT05GSUdfQ1VTRT1tCiMg
Q09ORklHX1ZJUlRJT19GUyBpcyBub3Qgc2V0CkNPTkZJR19PVkVSTEFZX0ZTPW0KIyBDT05GSUdf
T1ZFUkxBWV9GU19SRURJUkVDVF9ESVIgaXMgbm90IHNldApDT05GSUdfT1ZFUkxBWV9GU19SRURJ
UkVDVF9BTFdBWVNfRk9MTE9XPXkKIyBDT05GSUdfT1ZFUkxBWV9GU19JTkRFWCBpcyBub3Qgc2V0
CiMgQ09ORklHX09WRVJMQVlfRlNfWElOT19BVVRPIGlzIG5vdCBzZXQKIyBDT05GSUdfT1ZFUkxB
WV9GU19NRVRBQ09QWSBpcyBub3Qgc2V0CgojCiMgQ2FjaGVzCiMKIyBDT05GSUdfRlNDQUNIRSBp
cyBub3Qgc2V0CiMgZW5kIG9mIENhY2hlcwoKIwojIENELVJPTS9EVkQgRmlsZXN5c3RlbXMKIwoj
IENPTkZJR19JU085NjYwX0ZTIGlzIG5vdCBzZXQKIyBDT05GSUdfVURGX0ZTIGlzIG5vdCBzZXQK
IyBlbmQgb2YgQ0QtUk9NL0RWRCBGaWxlc3lzdGVtcwoKIwojIERPUy9GQVQvTlQgRmlsZXN5c3Rl
bXMKIwpDT05GSUdfRkFUX0ZTPXkKIyBDT05GSUdfTVNET1NfRlMgaXMgbm90IHNldApDT05GSUdf
VkZBVF9GUz15CkNPTkZJR19GQVRfREVGQVVMVF9DT0RFUEFHRT00MzcKQ09ORklHX0ZBVF9ERUZB
VUxUX0lPQ0hBUlNFVD0iaXNvODg1OS0xIgojIENPTkZJR19GQVRfREVGQVVMVF9VVEY4IGlzIG5v
dCBzZXQKIyBDT05GSUdfTlRGU19GUyBpcyBub3Qgc2V0CiMgZW5kIG9mIERPUy9GQVQvTlQgRmls
ZXN5c3RlbXMKCiMKIyBQc2V1ZG8gZmlsZXN5c3RlbXMKIwpDT05GSUdfUFJPQ19GUz15CiMgQ09O
RklHX1BST0NfS0NPUkUgaXMgbm90IHNldApDT05GSUdfUFJPQ19WTUNPUkU9eQojIENPTkZJR19Q
Uk9DX1ZNQ09SRV9ERVZJQ0VfRFVNUCBpcyBub3Qgc2V0CkNPTkZJR19QUk9DX1NZU0NUTD15CkNP
TkZJR19QUk9DX1BBR0VfTU9OSVRPUj15CiMgQ09ORklHX1BST0NfQ0hJTERSRU4gaXMgbm90IHNl
dApDT05GSUdfS0VSTkZTPXkKQ09ORklHX1NZU0ZTPXkKQ09ORklHX1RNUEZTPXkKIyBDT05GSUdf
VE1QRlNfUE9TSVhfQUNMIGlzIG5vdCBzZXQKIyBDT05GSUdfVE1QRlNfWEFUVFIgaXMgbm90IHNl
dApDT05GSUdfSFVHRVRMQkZTPXkKQ09ORklHX0hVR0VUTEJfUEFHRT15CkNPTkZJR19NRU1GRF9D
UkVBVEU9eQpDT05GSUdfQVJDSF9IQVNfR0lHQU5USUNfUEFHRT15CkNPTkZJR19DT05GSUdGU19G
Uz15CkNPTkZJR19FRklWQVJfRlM9eQojIGVuZCBvZiBQc2V1ZG8gZmlsZXN5c3RlbXMKCkNPTkZJ
R19NSVNDX0ZJTEVTWVNURU1TPXkKIyBDT05GSUdfT1JBTkdFRlNfRlMgaXMgbm90IHNldAojIENP
TkZJR19BREZTX0ZTIGlzIG5vdCBzZXQKIyBDT05GSUdfQUZGU19GUyBpcyBub3Qgc2V0CiMgQ09O
RklHX0VDUllQVF9GUyBpcyBub3Qgc2V0CiMgQ09ORklHX0hGU19GUyBpcyBub3Qgc2V0CiMgQ09O
RklHX0hGU1BMVVNfRlMgaXMgbm90IHNldAojIENPTkZJR19CRUZTX0ZTIGlzIG5vdCBzZXQKIyBD
T05GSUdfQkZTX0ZTIGlzIG5vdCBzZXQKIyBDT05GSUdfRUZTX0ZTIGlzIG5vdCBzZXQKQ09ORklH
X0pGRlMyX0ZTPXkKQ09ORklHX0pGRlMyX0ZTX0RFQlVHPTAKQ09ORklHX0pGRlMyX0ZTX1dSSVRF
QlVGRkVSPXkKIyBDT05GSUdfSkZGUzJfRlNfV0JVRl9WRVJJRlkgaXMgbm90IHNldAojIENPTkZJ
R19KRkZTMl9TVU1NQVJZIGlzIG5vdCBzZXQKIyBDT05GSUdfSkZGUzJfRlNfWEFUVFIgaXMgbm90
IHNldAojIENPTkZJR19KRkZTMl9DT01QUkVTU0lPTl9PUFRJT05TIGlzIG5vdCBzZXQKQ09ORklH
X0pGRlMyX1pMSUI9eQpDT05GSUdfSkZGUzJfUlRJTUU9eQpDT05GSUdfVUJJRlNfRlM9eQojIENP
TkZJR19VQklGU19GU19BRFZBTkNFRF9DT01QUiBpcyBub3Qgc2V0CkNPTkZJR19VQklGU19GU19M
Wk89eQpDT05GSUdfVUJJRlNfRlNfWkxJQj15CkNPTkZJR19VQklGU19GU19aU1REPXkKIyBDT05G
SUdfVUJJRlNfQVRJTUVfU1VQUE9SVCBpcyBub3Qgc2V0CkNPTkZJR19VQklGU19GU19YQVRUUj15
CkNPTkZJR19VQklGU19GU19TRUNVUklUWT15CiMgQ09ORklHX1VCSUZTX0ZTX0FVVEhFTlRJQ0FU
SU9OIGlzIG5vdCBzZXQKIyBDT05GSUdfQ1JBTUZTIGlzIG5vdCBzZXQKQ09ORklHX1NRVUFTSEZT
PXkKQ09ORklHX1NRVUFTSEZTX0ZJTEVfQ0FDSEU9eQojIENPTkZJR19TUVVBU0hGU19GSUxFX0RJ
UkVDVCBpcyBub3Qgc2V0CkNPTkZJR19TUVVBU0hGU19ERUNPTVBfU0lOR0xFPXkKIyBDT05GSUdf
U1FVQVNIRlNfREVDT01QX01VTFRJIGlzIG5vdCBzZXQKIyBDT05GSUdfU1FVQVNIRlNfREVDT01Q
X01VTFRJX1BFUkNQVSBpcyBub3Qgc2V0CiMgQ09ORklHX1NRVUFTSEZTX1hBVFRSIGlzIG5vdCBz
ZXQKQ09ORklHX1NRVUFTSEZTX1pMSUI9eQojIENPTkZJR19TUVVBU0hGU19MWjQgaXMgbm90IHNl
dAojIENPTkZJR19TUVVBU0hGU19MWk8gaXMgbm90IHNldAojIENPTkZJR19TUVVBU0hGU19YWiBp
cyBub3Qgc2V0CiMgQ09ORklHX1NRVUFTSEZTX1pTVEQgaXMgbm90IHNldAojIENPTkZJR19TUVVB
U0hGU180S19ERVZCTEtfU0laRSBpcyBub3Qgc2V0CiMgQ09ORklHX1NRVUFTSEZTX0VNQkVEREVE
IGlzIG5vdCBzZXQKQ09ORklHX1NRVUFTSEZTX0ZSQUdNRU5UX0NBQ0hFX1NJWkU9MwojIENPTkZJ
R19WWEZTX0ZTIGlzIG5vdCBzZXQKIyBDT05GSUdfTUlOSVhfRlMgaXMgbm90IHNldAojIENPTkZJ
R19PTUZTX0ZTIGlzIG5vdCBzZXQKIyBDT05GSUdfSFBGU19GUyBpcyBub3Qgc2V0CiMgQ09ORklH
X1FOWDRGU19GUyBpcyBub3Qgc2V0CiMgQ09ORklHX1FOWDZGU19GUyBpcyBub3Qgc2V0CiMgQ09O
RklHX1JPTUZTX0ZTIGlzIG5vdCBzZXQKQ09ORklHX1BTVE9SRT15CkNPTkZJR19QU1RPUkVfREVG
TEFURV9DT01QUkVTUz15CiMgQ09ORklHX1BTVE9SRV9MWk9fQ09NUFJFU1MgaXMgbm90IHNldAoj
IENPTkZJR19QU1RPUkVfTFo0X0NPTVBSRVNTIGlzIG5vdCBzZXQKIyBDT05GSUdfUFNUT1JFX0xa
NEhDX0NPTVBSRVNTIGlzIG5vdCBzZXQKIyBDT05GSUdfUFNUT1JFXzg0Ml9DT01QUkVTUyBpcyBu
b3Qgc2V0CiMgQ09ORklHX1BTVE9SRV9aU1REX0NPTVBSRVNTIGlzIG5vdCBzZXQKQ09ORklHX1BT
VE9SRV9DT01QUkVTUz15CkNPTkZJR19QU1RPUkVfREVGTEFURV9DT01QUkVTU19ERUZBVUxUPXkK
Q09ORklHX1BTVE9SRV9DT01QUkVTU19ERUZBVUxUPSJkZWZsYXRlIgojIENPTkZJR19QU1RPUkVf
Q09OU09MRSBpcyBub3Qgc2V0CiMgQ09ORklHX1BTVE9SRV9QTVNHIGlzIG5vdCBzZXQKIyBDT05G
SUdfUFNUT1JFX1JBTSBpcyBub3Qgc2V0CiMgQ09ORklHX1NZU1ZfRlMgaXMgbm90IHNldAojIENP
TkZJR19VRlNfRlMgaXMgbm90IHNldAojIENPTkZJR19FUk9GU19GUyBpcyBub3Qgc2V0CkNPTkZJ
R19ORVRXT1JLX0ZJTEVTWVNURU1TPXkKQ09ORklHX05GU19GUz15CkNPTkZJR19ORlNfVjI9eQpD
T05GSUdfTkZTX1YzPXkKIyBDT05GSUdfTkZTX1YzX0FDTCBpcyBub3Qgc2V0CkNPTkZJR19ORlNf
VjQ9eQojIENPTkZJR19ORlNfU1dBUCBpcyBub3Qgc2V0CkNPTkZJR19ORlNfVjRfMT15CkNPTkZJ
R19ORlNfVjRfMj15CkNPTkZJR19QTkZTX0ZJTEVfTEFZT1VUPXkKQ09ORklHX1BORlNfQkxPQ0s9
bQpDT05GSUdfUE5GU19GTEVYRklMRV9MQVlPVVQ9eQpDT05GSUdfTkZTX1Y0XzFfSU1QTEVNRU5U
QVRJT05fSURfRE9NQUlOPSJrZXJuZWwub3JnIgojIENPTkZJR19ORlNfVjRfMV9NSUdSQVRJT04g
aXMgbm90IHNldApDT05GSUdfTkZTX1Y0X1NFQ1VSSVRZX0xBQkVMPXkKQ09ORklHX1JPT1RfTkZT
PXkKIyBDT05GSUdfTkZTX1VTRV9MRUdBQ1lfRE5TIGlzIG5vdCBzZXQKQ09ORklHX05GU19VU0Vf
S0VSTkVMX0ROUz15CiMgQ09ORklHX05GU0QgaXMgbm90IHNldApDT05GSUdfR1JBQ0VfUEVSSU9E
PXkKQ09ORklHX0xPQ0tEPXkKQ09ORklHX0xPQ0tEX1Y0PXkKQ09ORklHX05GU19DT01NT049eQpD
T05GSUdfU1VOUlBDPXkKQ09ORklHX1NVTlJQQ19HU1M9eQpDT05GSUdfU1VOUlBDX0JBQ0tDSEFO
TkVMPXkKQ09ORklHX1JQQ1NFQ19HU1NfS1JCNT1tCiMgQ09ORklHX1NVTlJQQ19ESVNBQkxFX0lO
U0VDVVJFX0VOQ1RZUEVTIGlzIG5vdCBzZXQKIyBDT05GSUdfU1VOUlBDX0RFQlVHIGlzIG5vdCBz
ZXQKIyBDT05GSUdfQ0VQSF9GUyBpcyBub3Qgc2V0CiMgQ09ORklHX0NJRlMgaXMgbm90IHNldAoj
IENPTkZJR19DT0RBX0ZTIGlzIG5vdCBzZXQKIyBDT05GSUdfQUZTX0ZTIGlzIG5vdCBzZXQKQ09O
RklHXzlQX0ZTPXkKIyBDT05GSUdfOVBfRlNfUE9TSVhfQUNMIGlzIG5vdCBzZXQKIyBDT05GSUdf
OVBfRlNfU0VDVVJJVFkgaXMgbm90IHNldApDT05GSUdfTkxTPXkKQ09ORklHX05MU19ERUZBVUxU
PSJpc284ODU5LTEiCkNPTkZJR19OTFNfQ09ERVBBR0VfNDM3PXkKIyBDT05GSUdfTkxTX0NPREVQ
QUdFXzczNyBpcyBub3Qgc2V0CiMgQ09ORklHX05MU19DT0RFUEFHRV83NzUgaXMgbm90IHNldAoj
IENPTkZJR19OTFNfQ09ERVBBR0VfODUwIGlzIG5vdCBzZXQKIyBDT05GSUdfTkxTX0NPREVQQUdF
Xzg1MiBpcyBub3Qgc2V0CiMgQ09ORklHX05MU19DT0RFUEFHRV84NTUgaXMgbm90IHNldAojIENP
TkZJR19OTFNfQ09ERVBBR0VfODU3IGlzIG5vdCBzZXQKIyBDT05GSUdfTkxTX0NPREVQQUdFXzg2
MCBpcyBub3Qgc2V0CiMgQ09ORklHX05MU19DT0RFUEFHRV84NjEgaXMgbm90IHNldAojIENPTkZJ
R19OTFNfQ09ERVBBR0VfODYyIGlzIG5vdCBzZXQKIyBDT05GSUdfTkxTX0NPREVQQUdFXzg2MyBp
cyBub3Qgc2V0CiMgQ09ORklHX05MU19DT0RFUEFHRV84NjQgaXMgbm90IHNldAojIENPTkZJR19O
TFNfQ09ERVBBR0VfODY1IGlzIG5vdCBzZXQKIyBDT05GSUdfTkxTX0NPREVQQUdFXzg2NiBpcyBu
b3Qgc2V0CiMgQ09ORklHX05MU19DT0RFUEFHRV84NjkgaXMgbm90IHNldAojIENPTkZJR19OTFNf
Q09ERVBBR0VfOTM2IGlzIG5vdCBzZXQKIyBDT05GSUdfTkxTX0NPREVQQUdFXzk1MCBpcyBub3Qg
c2V0CiMgQ09ORklHX05MU19DT0RFUEFHRV85MzIgaXMgbm90IHNldAojIENPTkZJR19OTFNfQ09E
RVBBR0VfOTQ5IGlzIG5vdCBzZXQKIyBDT05GSUdfTkxTX0NPREVQQUdFXzg3NCBpcyBub3Qgc2V0
CiMgQ09ORklHX05MU19JU084ODU5XzggaXMgbm90IHNldAojIENPTkZJR19OTFNfQ09ERVBBR0Vf
MTI1MCBpcyBub3Qgc2V0CiMgQ09ORklHX05MU19DT0RFUEFHRV8xMjUxIGlzIG5vdCBzZXQKIyBD
T05GSUdfTkxTX0FTQ0lJIGlzIG5vdCBzZXQKQ09ORklHX05MU19JU084ODU5XzE9eQojIENPTkZJ
R19OTFNfSVNPODg1OV8yIGlzIG5vdCBzZXQKIyBDT05GSUdfTkxTX0lTTzg4NTlfMyBpcyBub3Qg
c2V0CiMgQ09ORklHX05MU19JU084ODU5XzQgaXMgbm90IHNldAojIENPTkZJR19OTFNfSVNPODg1
OV81IGlzIG5vdCBzZXQKIyBDT05GSUdfTkxTX0lTTzg4NTlfNiBpcyBub3Qgc2V0CiMgQ09ORklH
X05MU19JU084ODU5XzcgaXMgbm90IHNldAojIENPTkZJR19OTFNfSVNPODg1OV85IGlzIG5vdCBz
ZXQKIyBDT05GSUdfTkxTX0lTTzg4NTlfMTMgaXMgbm90IHNldAojIENPTkZJR19OTFNfSVNPODg1
OV8xNCBpcyBub3Qgc2V0CiMgQ09ORklHX05MU19JU084ODU5XzE1IGlzIG5vdCBzZXQKIyBDT05G
SUdfTkxTX0tPSThfUiBpcyBub3Qgc2V0CiMgQ09ORklHX05MU19LT0k4X1UgaXMgbm90IHNldAoj
IENPTkZJR19OTFNfTUFDX1JPTUFOIGlzIG5vdCBzZXQKIyBDT05GSUdfTkxTX01BQ19DRUxUSUMg
aXMgbm90IHNldAojIENPTkZJR19OTFNfTUFDX0NFTlRFVVJPIGlzIG5vdCBzZXQKIyBDT05GSUdf
TkxTX01BQ19DUk9BVElBTiBpcyBub3Qgc2V0CiMgQ09ORklHX05MU19NQUNfQ1lSSUxMSUMgaXMg
bm90IHNldAojIENPTkZJR19OTFNfTUFDX0dBRUxJQyBpcyBub3Qgc2V0CiMgQ09ORklHX05MU19N
QUNfR1JFRUsgaXMgbm90IHNldAojIENPTkZJR19OTFNfTUFDX0lDRUxBTkQgaXMgbm90IHNldAoj
IENPTkZJR19OTFNfTUFDX0lOVUlUIGlzIG5vdCBzZXQKIyBDT05GSUdfTkxTX01BQ19ST01BTklB
TiBpcyBub3Qgc2V0CiMgQ09ORklHX05MU19NQUNfVFVSS0lTSCBpcyBub3Qgc2V0CiMgQ09ORklH
X05MU19VVEY4IGlzIG5vdCBzZXQKIyBDT05GSUdfRExNIGlzIG5vdCBzZXQKIyBDT05GSUdfVU5J
Q09ERSBpcyBub3Qgc2V0CiMgZW5kIG9mIEZpbGUgc3lzdGVtcwoKIwojIFNlY3VyaXR5IG9wdGlv
bnMKIwpDT05GSUdfS0VZUz15CkNPTkZJR19LRVlTX0NPTVBBVD15CiMgQ09ORklHX0tFWVNfUkVR
VUVTVF9DQUNIRSBpcyBub3Qgc2V0CiMgQ09ORklHX1BFUlNJU1RFTlRfS0VZUklOR1MgaXMgbm90
IHNldAojIENPTkZJR19CSUdfS0VZUyBpcyBub3Qgc2V0CiMgQ09ORklHX1RSVVNURURfS0VZUyBp
cyBub3Qgc2V0CiMgQ09ORklHX1NFQ1VSRV9LRVlTIGlzIG5vdCBzZXQKIyBDT05GSUdfRU5DUllQ
VEVEX0tFWVMgaXMgbm90IHNldAojIENPTkZJR19LRVlfREhfT1BFUkFUSU9OUyBpcyBub3Qgc2V0
CiMgQ09ORklHX1NFQ1VSSVRZX0RNRVNHX1JFU1RSSUNUIGlzIG5vdCBzZXQKQ09ORklHX1NFQ1VS
SVRZPXkKQ09ORklHX1NFQ1VSSVRZRlM9eQpDT05GSUdfU0VDVVJJVFlfTkVUV09SSz15CiMgQ09O
RklHX1NFQ1VSSVRZX1BBVEggaXMgbm90IHNldApDT05GSUdfTFNNX01NQVBfTUlOX0FERFI9MzI3
NjgKQ09ORklHX0hBVkVfSEFSREVORURfVVNFUkNPUFlfQUxMT0NBVE9SPXkKIyBDT05GSUdfSEFS
REVORURfVVNFUkNPUFkgaXMgbm90IHNldAojIENPTkZJR19GT1JUSUZZX1NPVVJDRSBpcyBub3Qg
c2V0CiMgQ09ORklHX1NUQVRJQ19VU0VSTU9ERUhFTFBFUiBpcyBub3Qgc2V0CkNPTkZJR19TRUNV
UklUWV9TRUxJTlVYPXkKQ09ORklHX1NFQ1VSSVRZX1NFTElOVVhfQk9PVFBBUkFNPXkKIyBDT05G
SUdfU0VDVVJJVFlfU0VMSU5VWF9ESVNBQkxFIGlzIG5vdCBzZXQKQ09ORklHX1NFQ1VSSVRZX1NF
TElOVVhfREVWRUxPUD15CkNPTkZJR19TRUNVUklUWV9TRUxJTlVYX0FWQ19TVEFUUz15CkNPTkZJ
R19TRUNVUklUWV9TRUxJTlVYX0NIRUNLUkVRUFJPVF9WQUxVRT0xCiMgQ09ORklHX1NFQ1VSSVRZ
X1NNQUNLIGlzIG5vdCBzZXQKIyBDT05GSUdfU0VDVVJJVFlfVE9NT1lPIGlzIG5vdCBzZXQKIyBD
T05GSUdfU0VDVVJJVFlfQVBQQVJNT1IgaXMgbm90IHNldAojIENPTkZJR19TRUNVUklUWV9MT0FE
UElOIGlzIG5vdCBzZXQKIyBDT05GSUdfU0VDVVJJVFlfWUFNQSBpcyBub3Qgc2V0CiMgQ09ORklH
X1NFQ1VSSVRZX1NBRkVTRVRJRCBpcyBub3Qgc2V0CiMgQ09ORklHX1NFQ1VSSVRZX0xPQ0tET1dO
X0xTTSBpcyBub3Qgc2V0CkNPTkZJR19JTlRFR1JJVFk9eQojIENPTkZJR19JTlRFR1JJVFlfU0lH
TkFUVVJFIGlzIG5vdCBzZXQKQ09ORklHX0lOVEVHUklUWV9BVURJVD15CiMgQ09ORklHX0lNQSBp
cyBub3Qgc2V0CiMgQ09ORklHX0VWTSBpcyBub3Qgc2V0CkNPTkZJR19ERUZBVUxUX1NFQ1VSSVRZ
X1NFTElOVVg9eQojIENPTkZJR19ERUZBVUxUX1NFQ1VSSVRZX0RBQyBpcyBub3Qgc2V0CkNPTkZJ
R19MU009ImxvY2tkb3duLHlhbWEsbG9hZHBpbixzYWZlc2V0aWQsaW50ZWdyaXR5LHNlbGludXgi
CgojCiMgS2VybmVsIGhhcmRlbmluZyBvcHRpb25zCiMKCiMKIyBNZW1vcnkgaW5pdGlhbGl6YXRp
b24KIwpDT05GSUdfSU5JVF9TVEFDS19OT05FPXkKIyBDT05GSUdfSU5JVF9PTl9BTExPQ19ERUZB
VUxUX09OIGlzIG5vdCBzZXQKIyBDT05GSUdfSU5JVF9PTl9GUkVFX0RFRkFVTFRfT04gaXMgbm90
IHNldAojIGVuZCBvZiBNZW1vcnkgaW5pdGlhbGl6YXRpb24KIyBlbmQgb2YgS2VybmVsIGhhcmRl
bmluZyBvcHRpb25zCiMgZW5kIG9mIFNlY3VyaXR5IG9wdGlvbnMKCkNPTkZJR19YT1JfQkxPQ0tT
PW0KQ09ORklHX0FTWU5DX1RYX0RJU0FCTEVfUFFfVkFMX0RNQT15CkNPTkZJR19BU1lOQ19UWF9E
SVNBQkxFX1hPUl9WQUxfRE1BPXkKQ09ORklHX0NSWVBUTz15CgojCiMgQ3J5cHRvIGNvcmUgb3Ig
aGVscGVyCiMKQ09ORklHX0NSWVBUT19BTEdBUEk9eQpDT05GSUdfQ1JZUFRPX0FMR0FQSTI9eQpD
T05GSUdfQ1JZUFRPX0FFQUQ9eQpDT05GSUdfQ1JZUFRPX0FFQUQyPXkKQ09ORklHX0NSWVBUT19C
TEtDSVBIRVI9eQpDT05GSUdfQ1JZUFRPX0JMS0NJUEhFUjI9eQpDT05GSUdfQ1JZUFRPX0hBU0g9
eQpDT05GSUdfQ1JZUFRPX0hBU0gyPXkKQ09ORklHX0NSWVBUT19STkc9eQpDT05GSUdfQ1JZUFRP
X1JORzI9eQpDT05GSUdfQ1JZUFRPX1JOR19ERUZBVUxUPXkKQ09ORklHX0NSWVBUT19BS0NJUEhF
UjI9eQpDT05GSUdfQ1JZUFRPX0FLQ0lQSEVSPXkKQ09ORklHX0NSWVBUT19LUFAyPXkKQ09ORklH
X0NSWVBUT19LUFA9eQpDT05GSUdfQ1JZUFRPX0FDT01QMj15CkNPTkZJR19DUllQVE9fTUFOQUdF
Uj15CkNPTkZJR19DUllQVE9fTUFOQUdFUjI9eQpDT05GSUdfQ1JZUFRPX1VTRVI9eQpDT05GSUdf
Q1JZUFRPX01BTkFHRVJfRElTQUJMRV9URVNUUz15CkNPTkZJR19DUllQVE9fR0YxMjhNVUw9eQpD
T05GSUdfQ1JZUFRPX05VTEw9eQpDT05GSUdfQ1JZUFRPX05VTEwyPXkKIyBDT05GSUdfQ1JZUFRP
X1BDUllQVCBpcyBub3Qgc2V0CkNPTkZJR19DUllQVE9fQ1JZUFREPXkKQ09ORklHX0NSWVBUT19B
VVRIRU5DPXkKQ09ORklHX0NSWVBUT19URVNUPW0KQ09ORklHX0NSWVBUT19TSU1EPXkKQ09ORklH
X0NSWVBUT19FTkdJTkU9eQoKIwojIFB1YmxpYy1rZXkgY3J5cHRvZ3JhcGh5CiMKQ09ORklHX0NS
WVBUT19SU0E9eQojIENPTkZJR19DUllQVE9fREggaXMgbm90IHNldApDT05GSUdfQ1JZUFRPX0VD
Qz15CkNPTkZJR19DUllQVE9fRUNESD15CiMgQ09ORklHX0NSWVBUT19FQ1JEU0EgaXMgbm90IHNl
dAoKIwojIEF1dGhlbnRpY2F0ZWQgRW5jcnlwdGlvbiB3aXRoIEFzc29jaWF0ZWQgRGF0YQojCkNP
TkZJR19DUllQVE9fQ0NNPXkKQ09ORklHX0NSWVBUT19HQ009eQpDT05GSUdfQ1JZUFRPX0NIQUNI
QTIwUE9MWTEzMDU9bQojIENPTkZJR19DUllQVE9fQUVHSVMxMjggaXMgbm90IHNldApDT05GSUdf
Q1JZUFRPX1NFUUlWPXkKQ09ORklHX0NSWVBUT19FQ0hBSU5JVj15CkNPTkZJR19DUllQVE9fVExT
PW0KCiMKIyBCbG9jayBtb2RlcwojCkNPTkZJR19DUllQVE9fQ0JDPW0KQ09ORklHX0NSWVBUT19D
RkI9bQpDT05GSUdfQ1JZUFRPX0NUUj15CkNPTkZJR19DUllQVE9fQ1RTPW0KQ09ORklHX0NSWVBU
T19FQ0I9eQpDT05GSUdfQ1JZUFRPX0xSVz1tCkNPTkZJR19DUllQVE9fT0ZCPW0KQ09ORklHX0NS
WVBUT19QQ0JDPW0KQ09ORklHX0NSWVBUT19YVFM9eQojIENPTkZJR19DUllQVE9fS0VZV1JBUCBp
cyBub3Qgc2V0CiMgQ09ORklHX0NSWVBUT19BRElBTlRVTSBpcyBub3Qgc2V0CiMgQ09ORklHX0NS
WVBUT19FU1NJViBpcyBub3Qgc2V0CgojCiMgSGFzaCBtb2RlcwojCkNPTkZJR19DUllQVE9fQ01B
Qz15CkNPTkZJR19DUllQVE9fSE1BQz15CkNPTkZJR19DUllQVE9fWENCQz1tCkNPTkZJR19DUllQ
VE9fVk1BQz1tCgojCiMgRGlnZXN0CiMKQ09ORklHX0NSWVBUT19DUkMzMkM9eQojIENPTkZJR19D
UllQVE9fQ1JDMzIgaXMgbm90IHNldAojIENPTkZJR19DUllQVE9fWFhIQVNIIGlzIG5vdCBzZXQK
Q09ORklHX0NSWVBUT19DUkNUMTBESUY9eQpDT05GSUdfQ1JZUFRPX0dIQVNIPXkKQ09ORklHX0NS
WVBUT19QT0xZMTMwNT1tCkNPTkZJR19DUllQVE9fTUQ0PW0KQ09ORklHX0NSWVBUT19NRDU9bQpD
T05GSUdfQ1JZUFRPX01JQ0hBRUxfTUlDPXkKQ09ORklHX0NSWVBUT19STUQxMjg9bQpDT05GSUdf
Q1JZUFRPX1JNRDE2MD1tCkNPTkZJR19DUllQVE9fUk1EMjU2PW0KQ09ORklHX0NSWVBUT19STUQz
MjA9bQpDT05GSUdfQ1JZUFRPX1NIQTE9eQpDT05GSUdfQ1JZUFRPX0xJQl9TSEEyNTY9eQpDT05G
SUdfQ1JZUFRPX1NIQTI1Nj15CkNPTkZJR19DUllQVE9fU0hBNTEyPW0KQ09ORklHX0NSWVBUT19T
SEEzPW0KQ09ORklHX0NSWVBUT19TTTM9bQpDT05GSUdfQ1JZUFRPX1NUUkVFQk9HPW0KQ09ORklH
X0NSWVBUT19UR1IxOTI9bQpDT05GSUdfQ1JZUFRPX1dQNTEyPW0KCiMKIyBDaXBoZXJzCiMKQ09O
RklHX0NSWVBUT19MSUJfQUVTPXkKQ09ORklHX0NSWVBUT19BRVM9eQojIENPTkZJR19DUllQVE9f
QUVTX1RJIGlzIG5vdCBzZXQKQ09ORklHX0NSWVBUT19BTlVCSVM9bQpDT05GSUdfQ1JZUFRPX0xJ
Ql9BUkM0PXkKQ09ORklHX0NSWVBUT19BUkM0PXkKQ09ORklHX0NSWVBUT19CTE9XRklTSD1tCkNP
TkZJR19DUllQVE9fQkxPV0ZJU0hfQ09NTU9OPW0KQ09ORklHX0NSWVBUT19DQU1FTExJQT1tCkNP
TkZJR19DUllQVE9fQ0FTVF9DT01NT049bQpDT05GSUdfQ1JZUFRPX0NBU1Q1PW0KQ09ORklHX0NS
WVBUT19DQVNUNj1tCkNPTkZJR19DUllQVE9fTElCX0RFUz15CkNPTkZJR19DUllQVE9fREVTPXkK
Q09ORklHX0NSWVBUT19GQ1JZUFQ9bQpDT05GSUdfQ1JZUFRPX0tIQVpBRD1tCkNPTkZJR19DUllQ
VE9fU0FMU0EyMD1tCkNPTkZJR19DUllQVE9fQ0hBQ0hBMjA9bQpDT05GSUdfQ1JZUFRPX1NFRUQ9
bQpDT05GSUdfQ1JZUFRPX1NFUlBFTlQ9bQpDT05GSUdfQ1JZUFRPX1NNND1tCkNPTkZJR19DUllQ
VE9fVEVBPW0KQ09ORklHX0NSWVBUT19UV09GSVNIPW0KQ09ORklHX0NSWVBUT19UV09GSVNIX0NP
TU1PTj1tCgojCiMgQ29tcHJlc3Npb24KIwpDT05GSUdfQ1JZUFRPX0RFRkxBVEU9eQpDT05GSUdf
Q1JZUFRPX0xaTz15CiMgQ09ORklHX0NSWVBUT184NDIgaXMgbm90IHNldAojIENPTkZJR19DUllQ
VE9fTFo0IGlzIG5vdCBzZXQKIyBDT05GSUdfQ1JZUFRPX0xaNEhDIGlzIG5vdCBzZXQKQ09ORklH
X0NSWVBUT19aU1REPXkKCiMKIyBSYW5kb20gTnVtYmVyIEdlbmVyYXRpb24KIwpDT05GSUdfQ1JZ
UFRPX0FOU0lfQ1BSTkc9eQpDT05GSUdfQ1JZUFRPX0RSQkdfTUVOVT15CkNPTkZJR19DUllQVE9f
RFJCR19ITUFDPXkKIyBDT05GSUdfQ1JZUFRPX0RSQkdfSEFTSCBpcyBub3Qgc2V0CiMgQ09ORklH
X0NSWVBUT19EUkJHX0NUUiBpcyBub3Qgc2V0CkNPTkZJR19DUllQVE9fRFJCRz15CkNPTkZJR19D
UllQVE9fSklUVEVSRU5UUk9QWT15CiMgQ09ORklHX0NSWVBUT19VU0VSX0FQSV9IQVNIIGlzIG5v
dCBzZXQKIyBDT05GSUdfQ1JZUFRPX1VTRVJfQVBJX1NLQ0lQSEVSIGlzIG5vdCBzZXQKIyBDT05G
SUdfQ1JZUFRPX1VTRVJfQVBJX1JORyBpcyBub3Qgc2V0CiMgQ09ORklHX0NSWVBUT19VU0VSX0FQ
SV9BRUFEIGlzIG5vdCBzZXQKIyBDT05GSUdfQ1JZUFRPX1NUQVRTIGlzIG5vdCBzZXQKQ09ORklH
X0NSWVBUT19IQVNIX0lORk89eQpDT05GSUdfQ1JZUFRPX0hXPXkKQ09ORklHX0NSWVBUT19ERVZf
RlNMX0NBQU1fQ09NTU9OPXkKQ09ORklHX0NSWVBUT19ERVZfRlNMX0NBQU1fQ1JZUFRPX0FQSV9E
RVNDPXkKQ09ORklHX0NSWVBUT19ERVZfRlNMX0NBQU1fQUhBU0hfQVBJX0RFU0M9eQpDT05GSUdf
Q1JZUFRPX0RFVl9GU0xfQ0FBTV9TRUNWSU89eQpDT05GSUdfQ1JZUFRPX0RFVl9GU0xfQ0FBTT15
CiMgQ09ORklHX0NSWVBUT19ERVZfRlNMX0NBQU1fREVCVUcgaXMgbm90IHNldApDT05GSUdfQ1JZ
UFRPX0RFVl9GU0xfQ0FBTV9KUj15CkNPTkZJR19DUllQVE9fREVWX0ZTTF9DQUFNX1JJTkdTSVpF
PTkKIyBDT05GSUdfQ1JZUFRPX0RFVl9GU0xfQ0FBTV9JTlRDIGlzIG5vdCBzZXQKQ09ORklHX0NS
WVBUT19ERVZfRlNMX0NBQU1fQ1JZUFRPX0FQST15CkNPTkZJR19DUllQVE9fREVWX0ZTTF9DQUFN
X0NSWVBUT19BUElfUUk9eQpDT05GSUdfQ1JZUFRPX0RFVl9GU0xfQ0FBTV9BSEFTSF9BUEk9eQpD
T05GSUdfQ1JZUFRPX0RFVl9GU0xfQ0FBTV9QS0NfQVBJPXkKQ09ORklHX0NSWVBUT19ERVZfRlNM
X0NBQU1fUk5HX0FQST15CiMgQ09ORklHX0NSWVBUT19ERVZfRlNMX0NBQU1fVEtfQVBJIGlzIG5v
dCBzZXQKIyBDT05GSUdfQ1JZUFRPX0RFVl9GU0xfQ0FBTV9STkdfVEVTVCBpcyBub3Qgc2V0CkNP
TkZJR19DUllQVE9fREVWX0ZTTF9DQUFNX1NNPXkKQ09ORklHX0NSWVBUT19ERVZfRlNMX0NBQU1f
U01fU0xPVFNJWkU9NwpDT05GSUdfQ1JZUFRPX0RFVl9GU0xfQ0FBTV9TTV9URVNUPW0KQ09ORklH
X0NSWVBUT19ERVZfRlNMX0NBQU1fSlJfVUlPPXkKQ09ORklHX0NSWVBUT19ERVZfRlNMX0RQQUEy
X0NBQU09eQojIENPTkZJR19DUllQVE9fREVWX1NBSEFSQSBpcyBub3Qgc2V0CiMgQ09ORklHX0NS
WVBUT19ERVZfQVRNRUxfRUNDIGlzIG5vdCBzZXQKIyBDT05GSUdfQ1JZUFRPX0RFVl9BVE1FTF9T
SEEyMDRBIGlzIG5vdCBzZXQKIyBDT05GSUdfQ1JZUFRPX0RFVl9DQ1AgaXMgbm90IHNldAojIENP
TkZJR19DUllQVE9fREVWX01YU19EQ1AgaXMgbm90IHNldAojIENPTkZJR19DUllQVE9fREVWX05J
VFJPWF9DTk41NVhYIGlzIG5vdCBzZXQKIyBDT05GSUdfQ1JZUFRPX0RFVl9DQVZJVU1fWklQIGlz
IG5vdCBzZXQKQ09ORklHX0NSWVBUT19ERVZfVklSVElPPW0KIyBDT05GSUdfQ1JZUFRPX0RFVl9T
QUZFWENFTCBpcyBub3Qgc2V0CiMgQ09ORklHX0NSWVBUT19ERVZfQ0NSRUUgaXMgbm90IHNldAoj
IENPTkZJR19DUllQVE9fREVWX0hJU0lfU0VDIGlzIG5vdCBzZXQKIyBDT05GSUdfQ1JZUFRPX0RF
Vl9ISVNJX1pJUCBpcyBub3Qgc2V0CkNPTkZJR19BU1lNTUVUUklDX0tFWV9UWVBFPXkKQ09ORklH
X0FTWU1NRVRSSUNfUFVCTElDX0tFWV9TVUJUWVBFPXkKQ09ORklHX1g1MDlfQ0VSVElGSUNBVEVf
UEFSU0VSPXkKIyBDT05GSUdfUEtDUzhfUFJJVkFURV9LRVlfUEFSU0VSIGlzIG5vdCBzZXQKQ09O
RklHX1BLQ1M3X01FU1NBR0VfUEFSU0VSPXkKIyBDT05GSUdfUEtDUzdfVEVTVF9LRVkgaXMgbm90
IHNldAojIENPTkZJR19TSUdORURfUEVfRklMRV9WRVJJRklDQVRJT04gaXMgbm90IHNldAoKIwoj
IENlcnRpZmljYXRlcyBmb3Igc2lnbmF0dXJlIGNoZWNraW5nCiMKQ09ORklHX1NZU1RFTV9UUlVT
VEVEX0tFWVJJTkc9eQpDT05GSUdfU1lTVEVNX1RSVVNURURfS0VZUz0iIgojIENPTkZJR19TWVNU
RU1fRVhUUkFfQ0VSVElGSUNBVEUgaXMgbm90IHNldAojIENPTkZJR19TRUNPTkRBUllfVFJVU1RF
RF9LRVlSSU5HIGlzIG5vdCBzZXQKIyBDT05GSUdfU1lTVEVNX0JMQUNLTElTVF9LRVlSSU5HIGlz
IG5vdCBzZXQKIyBlbmQgb2YgQ2VydGlmaWNhdGVzIGZvciBzaWduYXR1cmUgY2hlY2tpbmcKCiMK
IyBMaWJyYXJ5IHJvdXRpbmVzCiMKQ09ORklHX1JBSUQ2X1BRPW0KQ09ORklHX1JBSUQ2X1BRX0JF
TkNITUFSSz15CiMgQ09ORklHX1BBQ0tJTkcgaXMgbm90IHNldApDT05GSUdfQklUUkVWRVJTRT15
CkNPTkZJR19IQVZFX0FSQ0hfQklUUkVWRVJTRT15CkNPTkZJR19HRU5FUklDX1NUUk5DUFlfRlJP
TV9VU0VSPXkKQ09ORklHX0dFTkVSSUNfU1RSTkxFTl9VU0VSPXkKQ09ORklHX0dFTkVSSUNfTkVU
X1VUSUxTPXkKIyBDT05GSUdfQ09SRElDIGlzIG5vdCBzZXQKQ09ORklHX1JBVElPTkFMPXkKQ09O
RklHX0dFTkVSSUNfUENJX0lPTUFQPXkKQ09ORklHX1NUTVBfREVWSUNFPXkKQ09ORklHX0FSQ0hf
VVNFX0NNUFhDSEdfTE9DS1JFRj15CkNPTkZJR19BUkNIX0hBU19GQVNUX01VTFRJUExJRVI9eQpD
T05GSUdfSU5ESVJFQ1RfUElPPXkKIyBDT05GSUdfQ1JDX0NDSVRUIGlzIG5vdCBzZXQKQ09ORklH
X0NSQzE2PXkKQ09ORklHX0NSQ19UMTBESUY9eQpDT05GSUdfQ1JDX0lUVV9UPXkKQ09ORklHX0NS
QzMyPXkKIyBDT05GSUdfQ1JDMzJfU0VMRlRFU1QgaXMgbm90IHNldApDT05GSUdfQ1JDMzJfU0xJ
Q0VCWTg9eQojIENPTkZJR19DUkMzMl9TTElDRUJZNCBpcyBub3Qgc2V0CiMgQ09ORklHX0NSQzMy
X1NBUldBVEUgaXMgbm90IHNldAojIENPTkZJR19DUkMzMl9CSVQgaXMgbm90IHNldAojIENPTkZJ
R19DUkM2NCBpcyBub3Qgc2V0CiMgQ09ORklHX0NSQzQgaXMgbm90IHNldApDT05GSUdfQ1JDNz15
CkNPTkZJR19MSUJDUkMzMkM9bQojIENPTkZJR19DUkM4IGlzIG5vdCBzZXQKQ09ORklHX1hYSEFT
SD15CkNPTkZJR19BVURJVF9HRU5FUklDPXkKQ09ORklHX0FVRElUX0FSQ0hfQ09NUEFUX0dFTkVS
SUM9eQpDT05GSUdfQVVESVRfQ09NUEFUX0dFTkVSSUM9eQojIENPTkZJR19SQU5ET00zMl9TRUxG
VEVTVCBpcyBub3Qgc2V0CkNPTkZJR19aTElCX0lORkxBVEU9eQpDT05GSUdfWkxJQl9ERUZMQVRF
PXkKQ09ORklHX0xaT19DT01QUkVTUz15CkNPTkZJR19MWk9fREVDT01QUkVTUz15CkNPTkZJR19M
WjRfREVDT01QUkVTUz15CkNPTkZJR19aU1REX0NPTVBSRVNTPXkKQ09ORklHX1pTVERfREVDT01Q
UkVTUz15CkNPTkZJR19YWl9ERUM9eQpDT05GSUdfWFpfREVDX1g4Nj15CkNPTkZJR19YWl9ERUNf
UE9XRVJQQz15CkNPTkZJR19YWl9ERUNfSUE2ND15CkNPTkZJR19YWl9ERUNfQVJNPXkKQ09ORklH
X1haX0RFQ19BUk1USFVNQj15CkNPTkZJR19YWl9ERUNfU1BBUkM9eQpDT05GSUdfWFpfREVDX0JD
Sj15CiMgQ09ORklHX1haX0RFQ19URVNUIGlzIG5vdCBzZXQKQ09ORklHX0RFQ09NUFJFU1NfR1pJ
UD15CkNPTkZJR19ERUNPTVBSRVNTX0JaSVAyPXkKQ09ORklHX0RFQ09NUFJFU1NfTFpNQT15CkNP
TkZJR19ERUNPTVBSRVNTX1haPXkKQ09ORklHX0RFQ09NUFJFU1NfTFpPPXkKQ09ORklHX0RFQ09N
UFJFU1NfTFo0PXkKQ09ORklHX0dFTkVSSUNfQUxMT0NBVE9SPXkKQ09ORklHX1hBUlJBWV9NVUxU
ST15CkNPTkZJR19BU1NPQ0lBVElWRV9BUlJBWT15CkNPTkZJR19IQVNfSU9NRU09eQpDT05GSUdf
SEFTX0lPUE9SVF9NQVA9eQpDT05GSUdfSEFTX0RNQT15CkNPTkZJR19ORUVEX1NHX0RNQV9MRU5H
VEg9eQpDT05GSUdfTkVFRF9ETUFfTUFQX1NUQVRFPXkKQ09ORklHX0FSQ0hfRE1BX0FERFJfVF82
NEJJVD15CkNPTkZJR19ETUFfREVDTEFSRV9DT0hFUkVOVD15CkNPTkZJR19BUkNIX0hBU19TRVRV
UF9ETUFfT1BTPXkKQ09ORklHX0FSQ0hfSEFTX1RFQVJET1dOX0RNQV9PUFM9eQpDT05GSUdfQVJD
SF9IQVNfU1lOQ19ETUFfRk9SX0RFVklDRT15CkNPTkZJR19BUkNIX0hBU19TWU5DX0RNQV9GT1Jf
Q1BVPXkKQ09ORklHX0FSQ0hfSEFTX0RNQV9QUkVQX0NPSEVSRU5UPXkKQ09ORklHX0FSQ0hfSEFT
X0RNQV9DT0hFUkVOVF9UT19QRk49eQpDT05GSUdfU1dJT1RMQj15CkNPTkZJR19ETUFfUkVNQVA9
eQpDT05GSUdfRE1BX0RJUkVDVF9SRU1BUD15CkNPTkZJR19ETUFfQ01BPXkKCiMKIyBEZWZhdWx0
IGNvbnRpZ3VvdXMgbWVtb3J5IGFyZWEgc2l6ZToKIwpDT05GSUdfQ01BX1NJWkVfTUJZVEVTPTMy
MApDT05GSUdfQ01BX1NJWkVfU0VMX01CWVRFUz15CiMgQ09ORklHX0NNQV9TSVpFX1NFTF9QRVJD
RU5UQUdFIGlzIG5vdCBzZXQKIyBDT05GSUdfQ01BX1NJWkVfU0VMX01JTiBpcyBub3Qgc2V0CiMg
Q09ORklHX0NNQV9TSVpFX1NFTF9NQVggaXMgbm90IHNldApDT05GSUdfQ01BX0FMSUdOTUVOVD04
CiMgQ09ORklHX0RNQV9BUElfREVCVUcgaXMgbm90IHNldApDT05GSUdfU0dMX0FMTE9DPXkKQ09O
RklHX0NQVV9STUFQPXkKQ09ORklHX0RRTD15CkNPTkZJR19HTE9CPXkKIyBDT05GSUdfR0xPQl9T
RUxGVEVTVCBpcyBub3Qgc2V0CkNPTkZJR19OTEFUVFI9eQpDT05GSUdfQ0xaX1RBQj15CkNPTkZJ
R19JUlFfUE9MTD15CkNPTkZJR19NUElMSUI9eQpDT05GSUdfRElNTElCPXkKQ09ORklHX0xJQkZE
VD15CkNPTkZJR19PSURfUkVHSVNUUlk9eQpDT05GSUdfVUNTMl9TVFJJTkc9eQpDT05GSUdfSEFW
RV9HRU5FUklDX1ZEU089eQpDT05GSUdfR0VORVJJQ19HRVRUSU1FT0ZEQVk9eQpDT05GSUdfRk9O
VF9TVVBQT1JUPXkKIyBDT05GSUdfRk9OVFMgaXMgbm90IHNldApDT05GSUdfRk9OVF84eDg9eQpD
T05GSUdfRk9OVF84eDE2PXkKQ09ORklHX1NHX1BPT0w9eQpDT05GSUdfU0JJVE1BUD15CiMgQ09O
RklHX1NUUklOR19TRUxGVEVTVCBpcyBub3Qgc2V0CiMgZW5kIG9mIExpYnJhcnkgcm91dGluZXMK
CiMKIyBLZXJuZWwgaGFja2luZwojCgojCiMgcHJpbnRrIGFuZCBkbWVzZyBvcHRpb25zCiMKQ09O
RklHX1BSSU5US19USU1FPXkKIyBDT05GSUdfUFJJTlRLX0NBTExFUiBpcyBub3Qgc2V0CkNPTkZJ
R19DT05TT0xFX0xPR0xFVkVMX0RFRkFVTFQ9NwpDT05GSUdfQ09OU09MRV9MT0dMRVZFTF9RVUlF
VD00CkNPTkZJR19NRVNTQUdFX0xPR0xFVkVMX0RFRkFVTFQ9NAojIENPTkZJR19CT09UX1BSSU5U
S19ERUxBWSBpcyBub3Qgc2V0CiMgQ09ORklHX0RZTkFNSUNfREVCVUcgaXMgbm90IHNldAojIGVu
ZCBvZiBwcmludGsgYW5kIGRtZXNnIG9wdGlvbnMKCiMKIyBDb21waWxlLXRpbWUgY2hlY2tzIGFu
ZCBjb21waWxlciBvcHRpb25zCiMKQ09ORklHX0RFQlVHX0lORk89eQojIENPTkZJR19ERUJVR19J
TkZPX1JFRFVDRUQgaXMgbm90IHNldAojIENPTkZJR19ERUJVR19JTkZPX1NQTElUIGlzIG5vdCBz
ZXQKIyBDT05GSUdfREVCVUdfSU5GT19EV0FSRjQgaXMgbm90IHNldAojIENPTkZJR19ERUJVR19J
TkZPX0JURiBpcyBub3Qgc2V0CiMgQ09ORklHX0dEQl9TQ1JJUFRTIGlzIG5vdCBzZXQKQ09ORklH
X0VOQUJMRV9NVVNUX0NIRUNLPXkKQ09ORklHX0ZSQU1FX1dBUk49MjA0OAojIENPTkZJR19TVFJJ
UF9BU01fU1lNUyBpcyBub3Qgc2V0CiMgQ09ORklHX1JFQURBQkxFX0FTTSBpcyBub3Qgc2V0CkNP
TkZJR19ERUJVR19GUz15CiMgQ09ORklHX0hFQURFUlNfSU5TVEFMTCBpcyBub3Qgc2V0CkNPTkZJ
R19PUFRJTUlaRV9JTkxJTklORz15CiMgQ09ORklHX0RFQlVHX1NFQ1RJT05fTUlTTUFUQ0ggaXMg
bm90IHNldApDT05GSUdfU0VDVElPTl9NSVNNQVRDSF9XQVJOX09OTFk9eQpDT05GSUdfQVJDSF9X
QU5UX0ZSQU1FX1BPSU5URVJTPXkKQ09ORklHX0ZSQU1FX1BPSU5URVI9eQojIENPTkZJR19ERUJV
R19GT1JDRV9XRUFLX1BFUl9DUFUgaXMgbm90IHNldAojIGVuZCBvZiBDb21waWxlLXRpbWUgY2hl
Y2tzIGFuZCBjb21waWxlciBvcHRpb25zCgpDT05GSUdfTUFHSUNfU1lTUlE9eQpDT05GSUdfTUFH
SUNfU1lTUlFfREVGQVVMVF9FTkFCTEU9MHgxCkNPTkZJR19NQUdJQ19TWVNSUV9TRVJJQUw9eQpD
T05GSUdfREVCVUdfS0VSTkVMPXkKQ09ORklHX0RFQlVHX01JU0M9eQoKIwojIE1lbW9yeSBEZWJ1
Z2dpbmcKIwojIENPTkZJR19QQUdFX0VYVEVOU0lPTiBpcyBub3Qgc2V0CiMgQ09ORklHX0RFQlVH
X1BBR0VBTExPQyBpcyBub3Qgc2V0CiMgQ09ORklHX1BBR0VfT1dORVIgaXMgbm90IHNldAojIENP
TkZJR19QQUdFX1BPSVNPTklORyBpcyBub3Qgc2V0CiMgQ09ORklHX0RFQlVHX1JPREFUQV9URVNU
IGlzIG5vdCBzZXQKIyBDT05GSUdfREVCVUdfT0JKRUNUUyBpcyBub3Qgc2V0CiMgQ09ORklHX1NM
VUJfREVCVUdfT04gaXMgbm90IHNldAojIENPTkZJR19TTFVCX1NUQVRTIGlzIG5vdCBzZXQKQ09O
RklHX0hBVkVfREVCVUdfS01FTUxFQUs9eQojIENPTkZJR19ERUJVR19LTUVNTEVBSyBpcyBub3Qg
c2V0CiMgQ09ORklHX0RFQlVHX1NUQUNLX1VTQUdFIGlzIG5vdCBzZXQKIyBDT05GSUdfREVCVUdf
Vk0gaXMgbm90IHNldApDT05GSUdfQVJDSF9IQVNfREVCVUdfVklSVFVBTD15CiMgQ09ORklHX0RF
QlVHX1ZJUlRVQUwgaXMgbm90IHNldApDT05GSUdfREVCVUdfTUVNT1JZX0lOSVQ9eQojIENPTkZJ
R19ERUJVR19QRVJfQ1BVX01BUFMgaXMgbm90IHNldApDT05GSUdfSEFWRV9BUkNIX0tBU0FOPXkK
Q09ORklHX0hBVkVfQVJDSF9LQVNBTl9TV19UQUdTPXkKQ09ORklHX0NDX0hBU19LQVNBTl9HRU5F
UklDPXkKIyBDT05GSUdfS0FTQU4gaXMgbm90IHNldApDT05GSUdfS0FTQU5fU1RBQ0s9MQojIGVu
ZCBvZiBNZW1vcnkgRGVidWdnaW5nCgpDT05GSUdfQVJDSF9IQVNfS0NPVj15CkNPTkZJR19DQ19I
QVNfU0FOQ09WX1RSQUNFX1BDPXkKIyBDT05GSUdfS0NPViBpcyBub3Qgc2V0CiMgQ09ORklHX0RF
QlVHX1NISVJRIGlzIG5vdCBzZXQKCiMKIyBEZWJ1ZyBMb2NrdXBzIGFuZCBIYW5ncwojCiMgQ09O
RklHX1NPRlRMT0NLVVBfREVURUNUT1IgaXMgbm90IHNldAojIENPTkZJR19ERVRFQ1RfSFVOR19U
QVNLIGlzIG5vdCBzZXQKIyBDT05GSUdfV1FfV0FUQ0hET0cgaXMgbm90IHNldAojIGVuZCBvZiBE
ZWJ1ZyBMb2NrdXBzIGFuZCBIYW5ncwoKIyBDT05GSUdfUEFOSUNfT05fT09QUyBpcyBub3Qgc2V0
CkNPTkZJR19QQU5JQ19PTl9PT1BTX1ZBTFVFPTAKQ09ORklHX1BBTklDX1RJTUVPVVQ9MAojIENP
TkZJR19TQ0hFRF9ERUJVRyBpcyBub3Qgc2V0CkNPTkZJR19TQ0hFRF9JTkZPPXkKIyBDT05GSUdf
U0NIRURTVEFUUyBpcyBub3Qgc2V0CiMgQ09ORklHX1NDSEVEX1NUQUNLX0VORF9DSEVDSyBpcyBu
b3Qgc2V0CiMgQ09ORklHX0RFQlVHX1RJTUVLRUVQSU5HIGlzIG5vdCBzZXQKIyBDT05GSUdfREVC
VUdfUFJFRU1QVCBpcyBub3Qgc2V0CgojCiMgTG9jayBEZWJ1Z2dpbmcgKHNwaW5sb2NrcywgbXV0
ZXhlcywgZXRjLi4uKQojCkNPTkZJR19MT0NLX0RFQlVHR0lOR19TVVBQT1JUPXkKIyBDT05GSUdf
UFJPVkVfTE9DS0lORyBpcyBub3Qgc2V0CiMgQ09ORklHX0xPQ0tfU1RBVCBpcyBub3Qgc2V0CiMg
Q09ORklHX0RFQlVHX1JUX01VVEVYRVMgaXMgbm90IHNldAojIENPTkZJR19ERUJVR19TUElOTE9D
SyBpcyBub3Qgc2V0CiMgQ09ORklHX0RFQlVHX01VVEVYRVMgaXMgbm90IHNldAojIENPTkZJR19E
RUJVR19XV19NVVRFWF9TTE9XUEFUSCBpcyBub3Qgc2V0CiMgQ09ORklHX0RFQlVHX1JXU0VNUyBp
cyBub3Qgc2V0CiMgQ09ORklHX0RFQlVHX0xPQ0tfQUxMT0MgaXMgbm90IHNldAojIENPTkZJR19E
RUJVR19BVE9NSUNfU0xFRVAgaXMgbm90IHNldAojIENPTkZJR19ERUJVR19MT0NLSU5HX0FQSV9T
RUxGVEVTVFMgaXMgbm90IHNldAojIENPTkZJR19MT0NLX1RPUlRVUkVfVEVTVCBpcyBub3Qgc2V0
CiMgQ09ORklHX1dXX01VVEVYX1NFTEZURVNUIGlzIG5vdCBzZXQKIyBlbmQgb2YgTG9jayBEZWJ1
Z2dpbmcgKHNwaW5sb2NrcywgbXV0ZXhlcywgZXRjLi4uKQoKIyBDT05GSUdfU1RBQ0tUUkFDRSBp
cyBub3Qgc2V0CiMgQ09ORklHX1dBUk5fQUxMX1VOU0VFREVEX1JBTkRPTSBpcyBub3Qgc2V0CiMg
Q09ORklHX0RFQlVHX0tPQkpFQ1QgaXMgbm90IHNldApDT05GSUdfSEFWRV9ERUJVR19CVUdWRVJC
T1NFPXkKQ09ORklHX0RFQlVHX0JVR1ZFUkJPU0U9eQojIENPTkZJR19ERUJVR19MSVNUIGlzIG5v
dCBzZXQKIyBDT05GSUdfREVCVUdfUExJU1QgaXMgbm90IHNldAojIENPTkZJR19ERUJVR19TRyBp
cyBub3Qgc2V0CiMgQ09ORklHX0RFQlVHX05PVElGSUVSUyBpcyBub3Qgc2V0CiMgQ09ORklHX0RF
QlVHX0NSRURFTlRJQUxTIGlzIG5vdCBzZXQKCiMKIyBSQ1UgRGVidWdnaW5nCiMKIyBDT05GSUdf
UkNVX1BFUkZfVEVTVCBpcyBub3Qgc2V0CiMgQ09ORklHX1JDVV9UT1JUVVJFX1RFU1QgaXMgbm90
IHNldApDT05GSUdfUkNVX0NQVV9TVEFMTF9USU1FT1VUPTIxCiMgQ09ORklHX1JDVV9UUkFDRSBp
cyBub3Qgc2V0CiMgQ09ORklHX1JDVV9FUVNfREVCVUcgaXMgbm90IHNldAojIGVuZCBvZiBSQ1Ug
RGVidWdnaW5nCgojIENPTkZJR19ERUJVR19XUV9GT1JDRV9SUl9DUFUgaXMgbm90IHNldAojIENP
TkZJR19ERUJVR19CTE9DS19FWFRfREVWVCBpcyBub3Qgc2V0CiMgQ09ORklHX0NQVV9IT1RQTFVH
X1NUQVRFX0NPTlRST0wgaXMgbm90IHNldAojIENPTkZJR19OT1RJRklFUl9FUlJPUl9JTkpFQ1RJ
T04gaXMgbm90IHNldAojIENPTkZJR19GQVVMVF9JTkpFQ1RJT04gaXMgbm90IHNldAojIENPTkZJ
R19MQVRFTkNZVE9QIGlzIG5vdCBzZXQKQ09ORklHX0hBVkVfRlVOQ1RJT05fVFJBQ0VSPXkKQ09O
RklHX0hBVkVfRlVOQ1RJT05fR1JBUEhfVFJBQ0VSPXkKQ09ORklHX0hBVkVfRFlOQU1JQ19GVFJB
Q0U9eQpDT05GSUdfSEFWRV9GVFJBQ0VfTUNPVU5UX1JFQ09SRD15CkNPTkZJR19IQVZFX1NZU0NB
TExfVFJBQ0VQT0lOVFM9eQpDT05GSUdfSEFWRV9DX1JFQ09SRE1DT1VOVD15CkNPTkZJR19UUkFD
SU5HX1NVUFBPUlQ9eQojIENPTkZJR19GVFJBQ0UgaXMgbm90IHNldApDT05GSUdfUlVOVElNRV9U
RVNUSU5HX01FTlU9eQojIENPTkZJR19MS0RUTSBpcyBub3Qgc2V0CiMgQ09ORklHX1RFU1RfTElT
VF9TT1JUIGlzIG5vdCBzZXQKIyBDT05GSUdfVEVTVF9TT1JUIGlzIG5vdCBzZXQKIyBDT05GSUdf
QkFDS1RSQUNFX1NFTEZfVEVTVCBpcyBub3Qgc2V0CiMgQ09ORklHX1JCVFJFRV9URVNUIGlzIG5v
dCBzZXQKIyBDT05GSUdfUkVFRF9TT0xPTU9OX1RFU1QgaXMgbm90IHNldAojIENPTkZJR19JTlRF
UlZBTF9UUkVFX1RFU1QgaXMgbm90IHNldAojIENPTkZJR19QRVJDUFVfVEVTVCBpcyBub3Qgc2V0
CiMgQ09ORklHX0FUT01JQzY0X1NFTEZURVNUIGlzIG5vdCBzZXQKIyBDT05GSUdfVEVTVF9IRVhE
VU1QIGlzIG5vdCBzZXQKIyBDT05GSUdfVEVTVF9TVFJJTkdfSEVMUEVSUyBpcyBub3Qgc2V0CiMg
Q09ORklHX1RFU1RfU1RSU0NQWSBpcyBub3Qgc2V0CiMgQ09ORklHX1RFU1RfS1NUUlRPWCBpcyBu
b3Qgc2V0CiMgQ09ORklHX1RFU1RfUFJJTlRGIGlzIG5vdCBzZXQKIyBDT05GSUdfVEVTVF9CSVRN
QVAgaXMgbm90IHNldAojIENPTkZJR19URVNUX0JJVEZJRUxEIGlzIG5vdCBzZXQKIyBDT05GSUdf
VEVTVF9VVUlEIGlzIG5vdCBzZXQKIyBDT05GSUdfVEVTVF9YQVJSQVkgaXMgbm90IHNldAojIENP
TkZJR19URVNUX09WRVJGTE9XIGlzIG5vdCBzZXQKIyBDT05GSUdfVEVTVF9SSEFTSFRBQkxFIGlz
IG5vdCBzZXQKIyBDT05GSUdfVEVTVF9IQVNIIGlzIG5vdCBzZXQKIyBDT05GSUdfVEVTVF9JREEg
aXMgbm90IHNldAojIENPTkZJR19URVNUX0xLTSBpcyBub3Qgc2V0CiMgQ09ORklHX1RFU1RfVk1B
TExPQyBpcyBub3Qgc2V0CiMgQ09ORklHX1RFU1RfVVNFUl9DT1BZIGlzIG5vdCBzZXQKIyBDT05G
SUdfVEVTVF9CUEYgaXMgbm90IHNldAojIENPTkZJR19URVNUX0JMQUNLSE9MRV9ERVYgaXMgbm90
IHNldAojIENPTkZJR19GSU5EX0JJVF9CRU5DSE1BUksgaXMgbm90IHNldAojIENPTkZJR19URVNU
X0ZJUk1XQVJFIGlzIG5vdCBzZXQKIyBDT05GSUdfVEVTVF9TWVNDVEwgaXMgbm90IHNldAojIENP
TkZJR19URVNUX1VERUxBWSBpcyBub3Qgc2V0CiMgQ09ORklHX1RFU1RfU1RBVElDX0tFWVMgaXMg
bm90IHNldAojIENPTkZJR19URVNUX0tNT0QgaXMgbm90IHNldAojIENPTkZJR19URVNUX01FTUNB
VF9QIGlzIG5vdCBzZXQKIyBDT05GSUdfVEVTVF9TVEFDS0lOSVQgaXMgbm90IHNldAojIENPTkZJ
R19URVNUX01FTUlOSVQgaXMgbm90IHNldApDT05GSUdfTUVNVEVTVD15CiMgQ09ORklHX0JVR19P
Tl9EQVRBX0NPUlJVUFRJT04gaXMgbm90IHNldAojIENPTkZJR19TQU1QTEVTIGlzIG5vdCBzZXQK
Q09ORklHX0hBVkVfQVJDSF9LR0RCPXkKIyBDT05GSUdfS0dEQiBpcyBub3Qgc2V0CkNPTkZJR19B
UkNIX0hBU19VQlNBTl9TQU5JVElaRV9BTEw9eQojIENPTkZJR19VQlNBTiBpcyBub3Qgc2V0CkNP
TkZJR19VQlNBTl9BTElHTk1FTlQ9eQpDT05GSUdfQVJDSF9IQVNfREVWTUVNX0lTX0FMTE9XRUQ9
eQpDT05GSUdfU1RSSUNUX0RFVk1FTT15CiMgQ09ORklHX0lPX1NUUklDVF9ERVZNRU0gaXMgbm90
IHNldAojIENPTkZJR19BUk02NF9QVERVTVBfREVCVUdGUyBpcyBub3Qgc2V0CkNPTkZJR19QSURf
SU5fQ09OVEVYVElEUj15CiMgQ09ORklHX0FSTTY0X1JBTkRPTUlaRV9URVhUX09GRlNFVCBpcyBu
b3Qgc2V0CiMgQ09ORklHX0RFQlVHX1dYIGlzIG5vdCBzZXQKIyBDT05GSUdfREVCVUdfQUxJR05f
Uk9EQVRBIGlzIG5vdCBzZXQKIyBDT05GSUdfREVCVUdfRUZJIGlzIG5vdCBzZXQKIyBDT05GSUdf
QVJNNjRfUkVMT0NfVEVTVCBpcyBub3Qgc2V0CkNPTkZJR19DT1JFU0lHSFQ9eQpDT05GSUdfQ09S
RVNJR0hUX0xJTktTX0FORF9TSU5LUz15CkNPTkZJR19DT1JFU0lHSFRfTElOS19BTkRfU0lOS19U
TUM9eQojIENPTkZJR19DT1JFU0lHSFRfQ0FUVSBpcyBub3Qgc2V0CiMgQ09ORklHX0NPUkVTSUdI
VF9TSU5LX1RQSVUgaXMgbm90IHNldAojIENPTkZJR19DT1JFU0lHSFRfU0lOS19FVEJWMTAgaXMg
bm90IHNldApDT05GSUdfQ09SRVNJR0hUX1NPVVJDRV9FVE00WD15CiMgQ09ORklHX0NPUkVTSUdI
VF9TVE0gaXMgbm90IHNldAojIENPTkZJR19DT1JFU0lHSFRfQ1BVX0RFQlVHIGlzIG5vdCBzZXQK
IyBlbmQgb2YgS2VybmVsIGhhY2tpbmcK

--00000000000047f33505c24056ac--
