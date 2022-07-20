Return-Path: <nikitagupta2509@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 144B5C433EF
	for <webhook@archiver.kernel.org>; Wed, 20 Jul 2022 10:44:36 +0000 (UTC)
Subject: Re: Error while testing "core-image-minimal" through "bitbake
 core-image-minimal -c testimage -v" #linux #warning #toolchain #dunfell
To: yocto@lists.yoctoproject.org
From: "Nikita Gupta" <nikitagupta2509@gmail.com>
X-Originating-Location: IN (110.76.168.102)
X-Originating-Platform: Linux Chrome 103
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 20 Jul 2022 03:44:29 -0700
References: <22536.1658312708486447759@lists.yoctoproject.org>
In-Reply-To: <22536.1658312708486447759@lists.yoctoproject.org>
Message-ID: <11682.1658313869370401344@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="q6Yxeb6yi5M1WCQQXRQ6"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Jul 2022 10:44:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57597

--q6Yxeb6yi5M1WCQQXRQ6
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Alexander

I am putting some of lines of qemu output of nographic here .

[=C2=A0 =C2=A0 0.053290] ACPI: INT_SRC_OVR (bus 0 bus_irq 10 global_irq 10 =
high level)
[=C2=A0 =C2=A0 0.053300] ACPI: INT_SRC_OVR (bus 0 bus_irq 11 global_irq 11 =
high level)
[=C2=A0 =C2=A0 0.053495] Using ACPI (MADT) for SMP configuration informatio=
n
[=C2=A0 =C2=A0 0.053544] ACPI: HPET id: 0x8086a201 base: 0xfed00000
[=C2=A0 =C2=A0 0.053830] smpboot: Allowing 1 CPUs, 0 hotplug CPUs
[=C2=A0 =C2=A0 0.054483] [mem 0x10000000-0xfffbffff] available for PCI devi=
ces
[=C2=A0 =C2=A0 0.054526] Booting paravirtualized kernel on bare hardware
[=C2=A0 =C2=A0 0.054875] clocksource: refined-jiffies: mask: 0xffffffff max=
_cycles: 0xffffffff, max_idle_ns: 1910s
[=C2=A0 =C2=A0 0.055308] setup_percpu: NR_CPUS:64 nr_cpumask_bits:64 nr_cpu=
_ids:1 nr_node_ids:1
[=C2=A0 =C2=A0 0.066824] percpu: Embedded 56 pages/cpu s191384 r8192 d29800=
 u2097152
[=C2=A0 =C2=A0 0.068969] Built 1 zonelists, mobility grouping on.=C2=A0 Tot=
al pages: 64356
[=C2=A0 =C2=A0 0.069155] Kernel command line: root=3D/dev/vda rw=C2=A0 cons=
ole=3DttyS0 mem=3D256M ip=3D192.168.7.2::192.168.7.
[=C2=A0 =C2=A0 0.135277] Dentry cache hash table entries: 32768 (order: 6, =
262144 bytes, linear)
[=C2=A0 =C2=A0 0.135665] Inode-cache hash table entries: 16384 (order: 5, 1=
31072 bytes, linear)
[=C2=A0 =C2=A0 0.137117] mem auto-init: stack:off, heap alloc:off, heap fre=
e:off
[=C2=A0 =C2=A0 0.140409] Memory: 232140K/261604K available (14340K kernel c=
ode, 1407K rwdata, 3196K rodata, 1612K)
[=C2=A0 =C2=A0 0.152763] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, C=
PUs=3D1, Nodes=3D1
[=C2=A0 =C2=A0 0.153835] Kernel/User page tables isolation: enabled
[=C2=A0 =C2=A0 0.155757] ftrace: allocating 41816 entries in 164 pages
[=C2=A0 =C2=A0 0.232233] rcu: Preemptible hierarchical RCU implementation.
[=C2=A0 =C2=A0 0.232365] rcu: RCU restricting CPUs from NR_CPUS=3D64 to nr_=
cpu_ids=3D1.
[=C2=A0 =C2=A0 0.232452] Tasks RCU enabled.
[=C2=A0 =C2=A0 0.232526] rcu: RCU calculated value of scheduler-enlistment =
delay is 100 jiffies.
[=C2=A0 =C2=A0 0.232562] rcu: Adjusting geometry for rcu_fanout_leaf=3D16, =
nr_cpu_ids=3D1
[=C2=A0 =C2=A0 0.253797] NR_IRQS: 4352, nr_irqs: 256, preallocated irqs: 16
[=C2=A0 =C2=A0 0.263911] random: get_random_bytes called from start_kernel+=
0x325/0x4db with crng_init=3D0
[=C2=A0 =C2=A0 0.268071] Console: colour VGA+ 80x25
[=C2=A0 =C2=A0 0.310885] printk: console [ttyS0] enabled
[=C2=A0 =C2=A0 0.314617] ACPI: Core revision 20190816
[=C2=A0 =C2=A0 0.323461] clocksource: hpet: mask: 0xffffffff max_cycles: 0x=
ffffffff, max_idle_ns: 19112604467 ns
[=C2=A0 =C2=A0 0.331315] APIC: Switch to symmetric I/O mode setup
[=C2=A0 =C2=A0 0.375864] ..TIMER: vector=3D0x30 apic1=3D0 pin1=3D2 apic2=3D=
-1 pin2=3D-1
[=C2=A0 =C2=A0 0.381414] clocksource: tsc-early: mask: 0xffffffffffffffff m=
ax_cycles: 0x185aca918fe, max_idle_ns:s
[=C2=A0 =C2=A0 0.383024] Calibrating delay loop (skipped), value calculated=
 using timer frequency.. 3379.20 BogoM)
[=C2=A0 =C2=A0 0.385009] pid_max: default: 32768 minimum: 301
[=C2=A0 =C2=A0 0.386726] LSM: Security Framework initializing
[=C2=A0 =C2=A0 0.388807] Mount-cache hash table entries: 512 (order: 0, 409=
6 bytes, linear)
[=C2=A0 =C2=A0 0.388944] Mountpoint-cache hash table entries: 512 (order: 0=
, 4096 bytes, linear)
[=C2=A0 =C2=A0 0.415798] process: using mwait in idle threads
[=C2=A0 =C2=A0 0.416144] Last level iTLB entries: 4KB 0, 2MB 0, 4MB 0
[=C2=A0 =C2=A0 0.416930] Last level dTLB entries: 4KB 0, 2MB 0, 4MB 0, 1GB =
0
[=C2=A0 =C2=A0 0.418102] Spectre V1 : Mitigation: usercopy/swapgs barriers =
and __user pointer sanitization
[=C2=A0 =C2=A0 0.419029] Spectre V2 : Mitigation: Retpolines
[=C2=A0 =C2=A0 0.419928] Spectre V2 : Spectre v2 / SpectreRSB mitigation: F=
illing RSB on context switch
[=C2=A0 =C2=A0 0.420958] Speculative Store Bypass: Vulnerable
[=C2=A0 =C2=A0 0.421698] MDS: Vulnerable: Clear CPU buffers attempted, no m=
icrocode
[=C2=A0 =C2=A0 0.626147] random: fast init done
[=C2=A0 =C2=A0 0.772307] Freeing SMP alternatives memory: 44K
[=C2=A0 =C2=A0 0.879347] smpboot: CPU0: Intel(R) Core(TM)2 Duo CPU=C2=A0 =
=C2=A0 =C2=A0T7700=C2=A0 @ 2.40GHz (family: 0x6, model: 0xf,)
[=C2=A0 =C2=A0 0.887084] Performance Events: unsupported p6 CPU model 15 no=
 PMU driver, software events only.
[=C2=A0 =C2=A0 0.889602] rcu: Hierarchical SRCU implementation.
[=C2=A0 =C2=A0 0.894836] smp: Bringing up secondary CPUs ...
[=C2=A0 =C2=A0 0.894970] smp: Brought up 1 node, 1 CPU
[=C2=A0 =C2=A0 0.895954] smpboot: Max logical packages: 1
[=C2=A0 =C2=A0 0.896451] smpboot: Total of 1 processors activated (3379.20 =
BogoMIPS)
[=C2=A0 =C2=A0 0.909320] devtmpfs: initialized
[=C2=A0 =C2=A0 0.921047] clocksource: jiffies: mask: 0xffffffff max_cycles:=
 0xffffffff, max_idle_ns: 191126044627s
[=C2=A0 =C2=A0 0.922081] futex hash table entries: 256 (order: 2, 16384 byt=
es, linear)
[=C2=A0 =C2=A0 0.924750] xor: measuring software checksum speed
[=C2=A0 =C2=A0 0.935030]=C2=A0 =C2=A0 prefetch64-sse:=C2=A0 2032.000 MB/sec
[=C2=A0 =C2=A0 0.945932]=C2=A0 =C2=A0 generic_sse:=C2=A0 2136.000 MB/sec
[=C2=A0 =C2=A0 0.946519] xor: using function: generic_sse (2136.000 MB/sec)
[=C2=A0 =C2=A0 0.947198] pinctrl core: initialized pinctrl subsystem
[=C2=A0 =C2=A0 0.955770] NET: Registered protocol family 16
[=C2=A0 =C2=A0 0.966246] cpuidle: using governor menu
[=C2=A0 =C2=A0 0.967806] ACPI: bus type PCI registered
[=C2=A0 =C2=A0 0.970419] PCI: Using configuration type 1 for base access
[=C2=A0 =C2=A0 1.026186] raid6: sse2x4=C2=A0 =C2=A0gen()=C2=A0 =C2=A0492 MB=
/s
[=C2=A0 =C2=A0 1.044095] raid6: sse2x4=C2=A0 =C2=A0xor()=C2=A0 =C2=A0261 MB=
/s
[=C2=A0 =C2=A0 1.061027] raid6: sse2x2=C2=A0 =C2=A0gen()=C2=A0 =C2=A0523 MB=
/s
[=C2=A0 =C2=A0 1.078256] raid6: sse2x2=C2=A0 =C2=A0xor()=C2=A0 =C2=A0259 MB=
/s
[=C2=A0 =C2=A0 1.096030] raid6: sse2x1=C2=A0 =C2=A0gen()=C2=A0 =C2=A0425 MB=
/s
[=C2=A0 =C2=A0 1.113986] raid6: sse2x1=C2=A0 =C2=A0xor()=C2=A0 =C2=A0246 MB=
/s
[=C2=A0 =C2=A0 1.114936] raid6: using algorithm sse2x2 gen() 523 MB/s
[=C2=A0 =C2=A0 1.115975] raid6: .... xor() 259 MB/s, rmw enabled
[=C2=A0 =C2=A0 1.117147] raid6: using ssse3x2 recovery algorithm
[=C2=A0 =C2=A0 1.119767] ACPI: Added _OSI(Module Device)
[=C2=A0 =C2=A0 1.119947] ACPI: Added _OSI(Processor Device)
[=C2=A0 =C2=A0 1.120422] ACPI: Added _OSI(3.0 _SCP Extensions)
[=C2=A0 =C2=A0 1.120918] ACPI: Added _OSI(Processor Aggregator Device)
[=C2=A0 =C2=A0 1.122005] ACPI: Added _OSI(Linux-Dell-Video)
[=C2=A0 =C2=A0 1.122506] ACPI: Added _OSI(Linux-Lenovo-NV-HDMI-Audio)
[=C2=A0 =C2=A0 1.122922] ACPI: Added _OSI(Linux-HPI-Hybrid-Graphics)
[=C2=A0 =C2=A0 1.140652] ACPI: 1 ACPI AML tables successfully acquired and =
loaded
[=C2=A0 =C2=A0 1.161811] ACPI: Interpreter enabled
[=C2=A0 =C2=A0 1.163464] ACPI: (supports S0 S3 S5)
[=C2=A0 =C2=A0 1.163979] ACPI: Using IOAPIC for interrupt routing
[=C2=A0 =C2=A0 1.165261] PCI: Using host bridge windows from ACPI; if neces=
sary, use "pci=3Dnocrs" and report a bug
[=C2=A0 =C2=A0 1.167766] ACPI: Enabled 2 GPEs in block 00 to 0F
[=C2=A0 =C2=A0 1.207391] ACPI: PCI Root Bridge [PCI0] (domain 0000 [bus 00-=
ff])
[=C2=A0 =C2=A0 1.208367] acpi PNP0A03:00: _OSC: OS supports [ASPM ClockPM S=
egments MSI HPX-Type3]
[=C2=A0 =C2=A0 1.210180] acpi PNP0A03:00: fail to add MMCONFIG information,=
 can't access extended PCI configurati.
[=C2=A0 =C2=A0 1.214285] PCI host bridge to bus 0000:00
[=C2=A0 =C2=A0 1.215024] pci_bus 0000:00: root bus resource [io=C2=A0 0x000=
0-0x0cf7 window]
[=C2=A0 =C2=A0 1.215968] pci_bus 0000:00: root bus resource [io=C2=A0 0x0d0=
0-0xffff window]
[=C2=A0 =C2=A0 1.216981] pci_bus 0000:00: root bus resource [mem 0x000a0000=
-0x000bffff window]
[=C2=A0 =C2=A0 1.217926] pci_bus 0000:00: root bus resource [mem 0x10000000=
-0xfebfffff window]
[=C2=A0 =C2=A0 1.218920] pci_bus 0000:00: root bus resource [mem 0x10000000=
0-0x17fffffff window]
[=C2=A0 =C2=A0 1.220119] pci_bus 0000:00: root bus resource [bus 00-ff]
[=C2=A0 =C2=A0 1.228162] pci 0000:00:01.1: [8086:7010] type 00 class 0x0101=
80
[=C2=A0 =C2=A0 1.233048] pci 0000:00:01.1: reg 0x20: [io=C2=A0 0xc0e0-0xc0e=
f]
[=C2=A0 =C2=A0 1.234367] pci 0000:00:01.1: legacy IDE quirk: reg 0x10: [io=
=C2=A0 0x01f0-0x01f7]
[=C2=A0 =C2=A0 1.235947] pci 0000:00:01.1: legacy IDE quirk: reg 0x14: [io=
=C2=A0 0x03f6]
[=C2=A0 =C2=A0 1.236934] pci 0000:00:01.1: legacy IDE quirk: reg 0x18: [io=
=C2=A0 0x0170-0x0177]
[=C2=A0 =C2=A0 1.237717] pci 0000:00:01.1: legacy IDE quirk: reg 0x1c: [io=
=C2=A0 0x0376]
[=C2=A0 =C2=A0 1.239483] pci 0000:00:01.2: [8086:7020] type 00 class 0x0c03=
00
[=C2=A0 =C2=A0 1.241609] pci 0000:00:01.2: reg 0x20: [io=C2=A0 0xc080-0xc09=
f]
[=C2=A0 =C2=A0 1.245137] pci 0000:00:01.3: [8086:7113] type 00 class 0x0680=
00
[=C2=A0 =C2=A0 1.246990] pci 0000:00:01.3: quirk: [io=C2=A0 0x0600-0x063f] =
claimed by PIIX4 ACPI
[=C2=A0 =C2=A0 1.248982] pci 0000:00:01.3: quirk: [io=C2=A0 0x0700-0x070f] =
claimed by PIIX4 SMB
[=C2=A0 =C2=A0 1.250849] pci 0000:00:02.0: [1234:1111] type 00 class 0x0300=
00
[=C2=A0 =C2=A0 1.252532] pci 0000:00:02.0: reg 0x10: [mem 0xfd000000-0xfdff=
ffff pref]
[=C2=A0 =C2=A0 1.254439] pci 0000:00:02.0: reg 0x18: [mem 0xfebd0000-0xfebd=
0fff]
[=C2=A0 =C2=A0 1.259319] pci 0000:00:02.0: reg 0x30: [mem 0xfebc0000-0xfebc=
ffff pref]
[=C2=A0 =C2=A0 1.261511] pci 0000:00:03.0: [1af4:1000] type 00 class 0x0200=
00
[=C2=A0 =C2=A0 1.262963] pci 0000:00:03.0: reg 0x10: [io=C2=A0 0xc0a0-0xc0b=
f]
[=C2=A0 =C2=A0 1.264399] pci 0000:00:03.0: reg 0x14: [mem 0xfebd1000-0xfebd=
1fff]
[=C2=A0 =C2=A0 1.267584] pci 0000:00:03.0: reg 0x20: [mem 0xfe000000-0xfe00=
3fff 64bit pref]
[=C2=A0 =C2=A0 1.269382] pci 0000:00:03.0: reg 0x30: [mem 0xfeb80000-0xfebb=
ffff pref]
[=C2=A0 =C2=A0 1.271515] pci 0000:00:04.0: [1af4:1005] type 00 class 0x00ff=
00
[=C2=A0 =C2=A0 1.273410] pci 0000:00:04.0: reg 0x10: [io=C2=A0 0xc0c0-0xc0d=
f]
[=C2=A0 =C2=A0 1.276581] pci 0000:00:04.0: reg 0x20: [mem 0xfe004000-0xfe00=
7fff 64bit pref]
[=C2=A0 =C2=A0 1.278443] pci 0000:00:05.0: [1af4:1001] type 00 class 0x0100=
00
[=C2=A0 =C2=A0 1.279958] pci 0000:00:05.0: reg 0x10: [io=C2=A0 0xc000-0xc07=
f]
[=C2=A0 =C2=A0 1.281211] pci 0000:00:05.0: reg 0x14: [mem 0xfebd2000-0xfebd=
2fff]
[=C2=A0 =C2=A0 1.284515] pci 0000:00:05.0: reg 0x20: [mem 0xfe008000-0xfe00=
bfff 64bit pref]
[=C2=A0 =C2=A0 1.294292] ACPI: PCI Interrupt Link [LNKA] (IRQs 5 *10 11)
[=C2=A0 =C2=A0 1.295942] ACPI: PCI Interrupt Link [LNKB] (IRQs 5 *10 11)
[=C2=A0 =C2=A0 1.297224] ACPI: PCI Interrupt Link [LNKC] (IRQs 5 10 *11)
[=C2=A0 =C2=A0 1.298272] ACPI: PCI Interrupt Link [LNKD] (IRQs 5 10 *11)
[=C2=A0 =C2=A0 1.299118] ACPI: PCI Interrupt Link [LNKS] (IRQs *9)
[=C2=A0 =C2=A0 1.305368] pci 0000:00:02.0: vgaarb: setting as boot VGA devi=
ce
[=C2=A0 =C2=A0 1.305905] pci 0000:00:02.0: vgaarb: VGA device added: decode=
s=3Dio+mem,owns=3Dio+mem,locks=3Dnone
[=C2=A0 =C2=A0 1.305970] pci 0000:00:02.0: vgaarb: bridge control possible
[=C2=A0 =C2=A0 1.306637] vgaarb: loaded
[=C2=A0 =C2=A0 1.308290] SCSI subsystem initialized
[=C2=A0 =C2=A0 1.309565] ACPI: bus type USB registered
[=C2=A0 =C2=A0 1.310261] usbcore: registered new interface driver usbfs
[=C2=A0 =C2=A0 1.311172] usbcore: registered new interface driver hub
[=C2=A0 =C2=A0 1.311974] usbcore: registered new device driver usb
[=C2=A0 =C2=A0 1.314504] pps_core: LinuxPPS API ver. 1 registered
[=C2=A0 =C2=A0 1.314975] pps_core: Software ver. 5.3.6 - Copyright 2005-200=
7 Rodolfo Giometti <giometti@linux.it>
[=C2=A0 =C2=A0 1.316037] PTP clock support registered
[=C2=A0 =C2=A0 1.318393] PCI: Using ACPI for IRQ routing
[=C2=A0 =C2=A0 1.332774] Bluetooth: Core ver 2.22
[=C2=A0 =C2=A0 1.333104] NET: Registered protocol family 31
[=C2=A0 =C2=A0 1.333949] Bluetooth: HCI device and connection manager initi=
alized
[=C2=A0 =C2=A0 1.335055] Bluetooth: HCI socket layer initialized
[=C2=A0 =C2=A0 1.335724] Bluetooth: L2CAP socket layer initialized
[=C2=A0 =C2=A0 1.336097] Bluetooth: SCO socket layer initialized
[=C2=A0 =C2=A0 1.340083] hpet: 3 channels of 0 reserved for per-cpu timers
[=C2=A0 =C2=A0 1.341256] hpet0: at MMIO 0xfed00000, IRQs 2, 8, 0
[=C2=A0 =C2=A0 1.342941] hpet0: 3 comparators, 64-bit 100.000000 MHz counte=
r
[=C2=A0 =C2=A0 1.349759] clocksource: Switched to clocksource tsc-early
[=C2=A0 =C2=A0 1.783492] pnp: PnP ACPI init
[=C2=A0 =C2=A0 1.789182] pnp: PnP ACPI: found 7 devices
[=C2=A0 =C2=A0 1.807251] thermal_sys: Registered thermal governor 'step_wis=
e'
[=C2=A0 =C2=A0 1.807387] thermal_sys: Registered thermal governor 'user_spa=
ce'
[=C2=A0 =C2=A0 1.824442] clocksource: acpi_pm: mask: 0xffffff max_cycles: 0=
xffffff, max_idle_ns: 2085701024 ns
[=C2=A0 =C2=A0 1.828445] pci_bus 0000:00: resource 4 [io=C2=A0 0x0000-0x0cf=
7 window]
[=C2=A0 =C2=A0 1.830071] pci_bus 0000:00: resource 5 [io=C2=A0 0x0d00-0xfff=
f window]
[=C2=A0 =C2=A0 1.832002] pci_bus 0000:00: resource 6 [mem 0x000a0000-0x000b=
ffff window]
[=C2=A0 =C2=A0 1.833410] pci_bus 0000:00: resource 7 [mem 0x10000000-0xfebf=
ffff window]
[=C2=A0 =C2=A0 1.834741] pci_bus 0000:00: resource 8 [mem 0x100000000-0x17f=
ffffff window]
[=C2=A0 =C2=A0 1.837537] NET: Registered protocol family 2
[=C2=A0 =C2=A0 1.839729] IP idents hash table entries: 4096 (order: 3, 3276=
8 bytes, linear)
[=C2=A0 =C2=A0 1.865735] tcp_listen_portaddr_hash hash table entries: 256 (=
order: 0, 4096 bytes, linear)
[=C2=A0 =C2=A0 1.867608] TCP established hash table entries: 2048 (order: 2=
, 16384 bytes, linear)
[=C2=A0 =C2=A0 1.868746] TCP bind hash table entries: 2048 (order: 3, 32768=
 bytes, linear)
[=C2=A0 =C2=A0 1.869797] TCP: Hash tables configured (established 2048 bind=
 2048)
[=C2=A0 =C2=A0 1.883744] UDP hash table entries: 256 (order: 1, 8192 bytes,=
 linear)
[=C2=A0 =C2=A0 1.884827] UDP-Lite hash table entries: 256 (order: 1, 8192 b=
ytes, linear)
[=C2=A0 =C2=A0 1.888819] NET: Registered protocol family 1
[=C2=A0 =C2=A0 1.893298] RPC: Registered named UNIX socket transport module=
.
[=C2=A0 =C2=A0 1.894880] RPC: Registered udp transport module.
[=C2=A0 =C2=A0 1.895821] RPC: Registered tcp transport module.
[=C2=A0 =C2=A0 1.896792] RPC: Registered tcp NFSv4.1 backchannel transport =
module.
[=C2=A0 =C2=A0 1.898265] pci 0000:00:01.0: PIIX3: Enabling Passive Release
[=C2=A0 =C2=A0 1.899583] pci 0000:00:00.0: Limiting direct PCI/PCI transfer=
s
[=C2=A0 =C2=A0 1.901234] pci 0000:00:01.0: Activating ISA DMA hang workarou=
nds
[=C2=A0 =C2=A0 1.914435] pci 0000:00:01.0: quirk_isa_dma_hangs+0x0/0x20 too=
k 12838 usecs
[=C2=A0 =C2=A0 2.135341] PCI Interrupt Link [LNKD] enabled at IRQ 11
[=C2=A0 =C2=A0 2.341888] pci 0000:00:01.2: quirk_usb_early_handoff+0x0/0x65=
0 took 415769 usecs
[=C2=A0 =C2=A0 2.343275] pci 0000:00:02.0: Video device with shadowed ROM a=
t [mem 0x000c0000-0x000dffff]
[=C2=A0 =C2=A0 2.345068] PCI: CLS 0 bytes, default 64
[=C2=A0 =C2=A0 2.359823] check: Scanning for low memory corruption every 60=
 seconds
[=C2=A0 =C2=A0 2.364056] Initialise system trusted keyrings
[=C2=A0 =C2=A0 2.365862] workingset: timestamp_bits=3D46 max_order=3D16 buc=
ket_order=3D0
[=C2=A0 =C2=A0 2.393568] NFS: Registering the id_resolver key type
[=C2=A0 =C2=A0 2.394661] Key type id_resolver registered
[=C2=A0 =C2=A0 2.395253] Key type id_legacy registered
[=C2=A0 =C2=A0 2.398828] Key type cifs.idmap registered
[=C2=A0 =C2=A0 2.426560] Key type asymmetric registered
[=C2=A0 =C2=A0 2.427166] Asymmetric key parser 'x509' registered
[=C2=A0 =C2=A0 2.427826] Block layer SCSI generic (bsg) driver version 0.4 =
loaded (major 251)
[=C2=A0 =C2=A0 2.428763] io scheduler mq-deadline registered
[=C2=A0 =C2=A0 2.429376] io scheduler kyber registered
[=C2=A0 =C2=A0 2.443085] input: Power Button as /devices/LNXSYSTM:00/LNXPWR=
BN:00/input/input0
[=C2=A0 =C2=A0 2.452480] ACPI: Power Button [PWRF]
[=C2=A0 =C2=A0 2.636339] PCI Interrupt Link [LNKC] enabled at IRQ 10
[=C2=A0 =C2=A0 3.043706] PCI Interrupt Link [LNKA] enabled at IRQ 10
[=C2=A0 =C2=A0 3.046003] Serial: 8250/16550 driver, 4 ports, IRQ sharing di=
sabled
[=C2=A0 =C2=A0 3.080365] 00:05: ttyS0 at I/O 0x3f8 (irq =3D 4, base_baud =
=3D 115200) is a 16550A
[=C2=A0 =C2=A0 3.115413] 00:06: ttyS1 at I/O 0x2f8 (irq =3D 3, base_baud =
=3D 115200) is a 16550A
[=C2=A0 =C2=A0 3.130219] Linux agpgart interface v0.103
[=C2=A0 =C2=A0 3.132176] bochs-drm 0000:00:02.0: remove_conflicting_pci_fra=
mebuffers: bar 0: 0xfd000000 -> 0xfdfff
[=C2=A0 =C2=A0 3.141489] crng init done
3.142481] bochs-drm 0000:00:02.0: remove_conflicting_pci_framebuffers: bar =
2: 0xfebd0000 -> 0xfebdf
[=C2=A0 =C2=A0 3.145663] bochs-drm 0000:00:02.0: vgaarb: deactivate vga con=
sole
[=C2=A0 =C2=A0 3.147438] Console: switching to colour dummy device 80x25
[=C2=A0 =C2=A0 3.150326] [drm] Found bochs VGA, ID 0xb0c0.
[=C2=A0 =C2=A0 3.150809] [drm] Framebuffer size 16384 kB @ 0xfd000000, mmio=
 @ 0xfebd0000.
[=C2=A0 =C2=A0 3.152273] [TTM] Zone=C2=A0 kernel: Available graphics memory=
: 116092 KiB
[=C2=A0 =C2=A0 3.153052] [TTM] Initializing pool allocator
[=C2=A0 =C2=A0 3.153658] [TTM] Initializing DMA pool allocator
[=C2=A0 =C2=A0 3.157316] [drm] Found EDID data blob.
[=C2=A0 =C2=A0 3.162182] [drm] Initialized bochs-drm 1.0.0 20130925 for 000=
0:00:02.0 on minor 0
[=C2=A0 =C2=A0 3.200140] fbcon: bochs-drmdrmfb (fb0) is primary device
[=C2=A0 =C2=A0 3.232092] Console: switching to colour frame buffer device 1=
28x48
[=C2=A0 =C2=A0 3.247507] bochs-drm 0000:00:02.0: fb0: bochs-drmdrmfb frame =
buffer device
[=C2=A0 =C2=A0 3.287157] brd: module loaded
[=C2=A0 =C2=A0 3.338996] loop: module loaded
[=C2=A0 =C2=A0 3.346707] virtio_blk virtio2: [vda] 23994 512-byte logical b=
locks (12.3 MB/11.7 MiB)
[=C2=A0 =C2=A0 3.389639] Uniform Multi-Platform E-IDE driver
[=C2=A0 =C2=A0 3.390654] piix 0000:00:01.1: IDE controller (0x8086:0x7010 r=
ev 0x00)
[=C2=A0 =C2=A0 3.392365] piix 0000:00:01.1: not 100% native mode: will prob=
e irqs later
[=C2=A0 =C2=A0 3.393854] legacy IDE will be removed in 2021, please switch =
to libata
[=C2=A0 =C2=A0 3.393854] Report any missing HW support to linux-ide@vger.ke=
rnel.org
[=C2=A0 =C2=A0 3.396536]=C2=A0 =C2=A0 =C2=A0ide0: BM-DMA at 0xc0e0-0xc0e7
[=C2=A0 =C2=A0 3.405884]=C2=A0 =C2=A0 =C2=A0ide1: BM-DMA at 0xc0e8-0xc0ef
[=C2=A0 =C2=A0 3.410281] tsc: Refined TSC clocksource calibration: 1689.599=
 MHz
[=C2=A0 =C2=A0 3.411557] clocksource: tsc: mask: 0xffffffffffffffff max_cyc=
les: 0x185ac5ca321, max_idle_ns: 44079s
[=C2=A0 =C2=A0 3.413037] clocksource: Switched to clocksource tsc
[=C2=A0 =C2=A0 4.627674] hdc: QEMU DVD-ROM, ATAPI CD/DVD-ROM drive
[=C2=A0 =C2=A0 5.254056] hdc: MWDMA2 mode selected
[=C2=A0 =C2=A0 5.255216] ide0 at 0x1f0-0x1f7,0x3f6 on irq 14
[=C2=A0 =C2=A0 5.255797] ide1 at 0x170-0x177,0x376 on irq 15
[=C2=A0 =C2=A0 5.257637] ide-gd driver 1.18
[=C2=A0 =C2=A0 5.258220] ide-cd driver 5.00
[=C2=A0 =C2=A0 5.261670] ide-cd: hdc: ATAPI 4X DVD-ROM drive, 512kB Cache
[=C2=A0 =C2=A0 5.262259] cdrom: Uniform CD-ROM driver Revision: 3.20
[=C2=A0 =C2=A0 5.325752] e100: Intel(R) PRO/100 Network Driver, 3.5.24-k2-N=
API
[=C2=A0 =C2=A0 5.326801] e100: Copyright(c) 1999-2006 Intel Corporation
[=C2=A0 =C2=A0 5.327565] e1000: Intel(R) PRO/1000 Network Driver - version =
7.3.21-k8-NAPI
[=C2=A0 =C2=A0 5.328444] e1000: Copyright (c) 1999-2006 Intel Corporation.
[=C2=A0 =C2=A0 5.329179] e1000e: Intel(R) PRO/1000 Network Driver - 3.2.6-k
[=C2=A0 =C2=A0 5.329878] e1000e: Copyright(c) 1999 - 2015 Intel Corporation=
.
[=C2=A0 =C2=A0 5.330642] igb: Intel(R) Gigabit Ethernet Network Driver - ve=
rsion 5.6.0-k
[=C2=A0 =C2=A0 5.331302] igb: Copyright (c) 2007-2014 Intel Corporation.
[=C2=A0 =C2=A0 5.331892] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI=
) Driver
[=C2=A0 =C2=A0 5.332454] ehci-pci: EHCI PCI platform driver
[=C2=A0 =C2=A0 5.333094] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Dr=
iver
[=C2=A0 =C2=A0 5.333846] ohci-pci: OHCI PCI platform driver
[=C2=A0 =C2=A0 5.334450] uhci_hcd: USB Universal Host Controller Interface =
driver
[=C2=A0 =C2=A0 5.485426] uhci_hcd 0000:00:01.2: UHCI Host Controller
[=C2=A0 =C2=A0 5.486339] uhci_hcd 0000:00:01.2: new USB bus registered, ass=
igned bus number 1
[=C2=A0 =C2=A0 5.487652] uhci_hcd 0000:00:01.2: irq 11, io base 0x0000c080
[=C2=A0 =C2=A0 5.493247] hub 1-0:1.0: USB hub found
[=C2=A0 =C2=A0 5.494019] hub 1-0:1.0: 2 ports detected
[=C2=A0 =C2=A0 5.502529] usbcore: registered new interface driver usb-stora=
ge
[=C2=A0 =C2=A0 5.503369] usbcore: registered new interface driver usbserial=
_generic
[=C2=A0 =C2=A0 5.504629] usbserial: USB Serial support registered for gener=
ic
[=C2=A0 =C2=A0 5.505283] usbcore: registered new interface driver ftdi_sio
[=C2=A0 =C2=A0 5.505839] usbserial: USB Serial support registered for FTDI =
USB Serial Device
[=C2=A0 =C2=A0 5.506584] usbcore: registered new interface driver pl2303
[=C2=A0 =C2=A0 5.507128] usbserial: USB Serial support registered for pl230=
3
[=C2=A0 =C2=A0 5.508227] i8042: PNP: PS/2 Controller [PNP0303:KBD,PNP0f13:M=
OU] at 0x60,0x64 irq 1,12
[=C2=A0 =C2=A0 5.510883] serio: i8042 KBD port at 0x60,0x64 irq 1
[=C2=A0 =C2=A0 5.511896] serio: i8042 AUX port at 0x60,0x64 irq 12
[=C2=A0 =C2=A0 5.522420] mousedev: PS/2 mouse device common for all mice
[=C2=A0 =C2=A0 5.526890] input: AT Translated Set 2 keyboard as /devices/pl=
atform/i8042/serio0/input/input1
[=C2=A0 =C2=A0 5.528503] rtc_cmos 00:00: RTC can wake from S4
[=C2=A0 =C2=A0 5.534544] rtc_cmos 00:00: registered as rtc0
[=C2=A0 =C2=A0 5.556479] rtc_cmos 00:00: alarms up to one day, y3k, 114 byt=
es nvram, hpet irqs
[=C2=A0 =C2=A0 5.561094] device-mapper: ioctl: 4.41.0-ioctl (2019-09-16) in=
itialised: dm-devel@redhat.com
[=C2=A0 =C2=A0 5.563200] intel_pstate: CPU model not supported
[=C2=A0 =C2=A0 5.563869] sdhci: Secure Digital Host Controller Interface dr=
iver
[=C2=A0 =C2=A0 5.564514] sdhci: Copyright(c) Pierre Ossman
[=C2=A0 =C2=A0 5.565088] sdhci-pltfm: SDHCI platform and OF driver helper
[=C2=A0 =C2=A0 5.566636] usbcore: registered new interface driver usbhid
[=C2=A0 =C2=A0 5.567241] usbhid: USB HID core driver
[=C2=A0 =C2=A0 5.567922] drop_monitor: Initializing network drop monitor se=
rvice
[=C2=A0 =C2=A0 5.568892] u32 classifier
[=C2=A0 =C2=A0 5.569207]=C2=A0 =C2=A0 =C2=A0input device check on
[=C2=A0 =C2=A0 5.569564]=C2=A0 =C2=A0 =C2=A0Actions configured
[=C2=A0 =C2=A0 5.571099] NET: Registered protocol family 10
[=C2=A0 =C2=A0 5.586617] Segment Routing with IPv6
[=C2=A0 =C2=A0 5.587629] sit: IPv6, IPv4 and MPLS over IPv4 tunneling drive=
r
[=C2=A0 =C2=A0 5.590474] NET: Registered protocol family 17
[=C2=A0 =C2=A0 5.591687] Key type dns_resolver registered
[=C2=A0 =C2=A0 5.593676] IPI shorthand broadcast: enabled
[=C2=A0 =C2=A0 5.594374] sched_clock: Marking stable (5485271338, 108914060=
)->(5981448748, -387263350)
[=C2=A0 =C2=A0 5.595828] Loading compiled-in X.509 certificates
[=C2=A0 =C2=A0 5.596642] Key type ._fscrypt registered
[=C2=A0 =C2=A0 5.597146] Key type .fscrypt registered
[=C2=A0 =C2=A0 5.601249] Btrfs loaded, crc32c=3Dcrc32c-generic
[=C2=A0 =C2=A0 5.622879] Key type encrypted registered
[=C2=A0 =C2=A0 5.626265] printk: console [netcon0] enabled
[=C2=A0 =C2=A0 5.626738] netconsole: network logging started
[=C2=A0 =C2=A0 5.627736] rtc_cmos 00:00: setting system clock to 2022-07-20=
T10:36:10 UTC (1658313370)
[=C2=A0 =C2=A0 5.673637] IP-Config: Complete:
[=C2=A0 =C2=A0 5.674257]=C2=A0 =C2=A0 =C2=A0 device=3Deth0, hwaddr=3D52:54:=
00:12:34:02, ipaddr=3D192.168.7.2, mask=3D255.255.255.0, gw=3D11
[=C2=A0 =C2=A0 5.675261]=C2=A0 =C2=A0 =C2=A0 host=3D192.168.7.2, domain=3D,=
 nis-domain=3D(none)
[=C2=A0 =C2=A0 5.675828]=C2=A0 =C2=A0 =C2=A0 bootserver=3D255.255.255.255, =
rootserver=3D255.255.255.255, rootpath=3D
[=C2=A0 =C2=A0 5.729332] usb 1-1: new full-speed USB device number 2 using =
uhci_hcd
[=C2=A0 =C2=A0 5.922791] input: QEMU QEMU USB Tablet as /devices/pci0000:00=
/0000:00:01.2/usb1/1-1/1-1:1.0/0003:064
[=C2=A0 =C2=A0 5.924768] hid-generic 0003:0627:0001.0001: input: USB HID v0=
.01 Mouse [QEMU QEMU USB Tablet] on us0
[=C2=A0 =C2=A0 6.155241] input: ImExPS/2 Generic Explorer Mouse as /devices=
/platform/i8042/serio1/input/input3
[=C2=A0 =C2=A0 6.157869] md: Waiting for all devices to be available before=
 autodetect
6.158853] md: If you don't use raid, use raid=3Dnoautodetect
[=C2=A0 =C2=A0 6.162222] md: Autodetecting RAID arrays.
[=C2=A0 =C2=A0 6.162754] md: autorun ...
[=C2=A0 =C2=A0 6.163171] md: ... autorun DONE.
[=C2=A0 =C2=A0 6.272996] EXT4-fs (vda): recovery complete
[=C2=A0 =C2=A0 6.276592] EXT4-fs (vda): mounted filesystem with ordered dat=
a mode. Opts: (null)
[=C2=A0 =C2=A0 6.278241] VFS: Mounted root (ext4 filesystem) on device 253:=
0.
[=C2=A0 =C2=A0 6.322833] devtmpfs: mounted
[=C2=A0 =C2=A0 6.354516] IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link becomes =
ready
[=C2=A0 =C2=A0 6.465480] Freeing unused kernel image memory: 1612K
[=C2=A0 =C2=A0 6.467795] Write protecting the kernel read-only data: 20480k
[=C2=A0 =C2=A0 6.471841] Freeing unused kernel image memory: 2004K
[=C2=A0 =C2=A0 6.473580] Freeing unused kernel image memory: 900K
[=C2=A0 =C2=A0 6.474647] Run /sbin/init as init process
INIT: version 2.96 booting
Starting udev
[=C2=A0 =C2=A0 7.915621] udevd[106]: starting version 3.2.9
[=C2=A0 =C2=A0 8.067716] udevd[107]: starting eudev-3.2.9
[=C2=A0 =C2=A010.295030] EXT4-fs (vda): re-mounted. Opts: (null)
INIT: Entering runlevel: 5
Configuring network interfaces... ip: RTNETLINK answers: File exists
Starting syslogd/klogd: done

Poky (Yocto Project Reference Distro) 3.1.16 qemux86-64 /dev/ttyS0

qemux86-64 login:
Poky (Yocto Project Reference Distro) 3.1.16 qemux86-64 /dev/ttyS0

qemux86-64 login: clear
Password:
Login incorrect
qemux86-64 login: root
root@qemux86-64:~# ls

--q6Yxeb6yi5M1WCQQXRQ6
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Alexander<br /><br />I am putting some of lines of qemu output of nog=
raphic here .<br /><br />
<div>[&nbsp; &nbsp; 0.053290] ACPI: INT_SRC_OVR (bus 0 bus_irq 10 global_ir=
q 10 high level)</div>
<div>[&nbsp; &nbsp; 0.053300] ACPI: INT_SRC_OVR (bus 0 bus_irq 11 global_ir=
q 11 high level)</div>
<div>[&nbsp; &nbsp; 0.053495] Using ACPI (MADT) for SMP configuration infor=
mation</div>
<div>[&nbsp; &nbsp; 0.053544] ACPI: HPET id: 0x8086a201 base: 0xfed00000</d=
iv>
<div>[&nbsp; &nbsp; 0.053830] smpboot: Allowing 1 CPUs, 0 hotplug CPUs</div=
>
<div>[&nbsp; &nbsp; 0.054483] [mem 0x10000000-0xfffbffff] available for PCI=
 devices</div>
<div>[&nbsp; &nbsp; 0.054526] Booting paravirtualized kernel on bare hardwa=
re</div>
<div>[&nbsp; &nbsp; 0.054875] clocksource: refined-jiffies: mask: 0xfffffff=
f max_cycles: 0xffffffff, max_idle_ns: 1910s</div>
<div>[&nbsp; &nbsp; 0.055308] setup_percpu: NR_CPUS:64 nr_cpumask_bits:64 n=
r_cpu_ids:1 nr_node_ids:1</div>
<div>[&nbsp; &nbsp; 0.066824] percpu: Embedded 56 pages/cpu s191384 r8192 d=
29800 u2097152</div>
<div>[&nbsp; &nbsp; 0.068969] Built 1 zonelists, mobility grouping on.&nbsp=
; Total pages: 64356</div>
<div>[&nbsp; &nbsp; 0.069155] Kernel command line: root=3D/dev/vda rw&nbsp;=
 console=3DttyS0 mem=3D256M ip=3D192.168.7.2::192.168.7.&nbsp;</div>
<div>[&nbsp; &nbsp; 0.135277] Dentry cache hash table entries: 32768 (order=
: 6, 262144 bytes, linear)</div>
<div>[&nbsp; &nbsp; 0.135665] Inode-cache hash table entries: 16384 (order:=
 5, 131072 bytes, linear)</div>
<div>[&nbsp; &nbsp; 0.137117] mem auto-init: stack:off, heap alloc:off, hea=
p free:off</div>
<div>[&nbsp; &nbsp; 0.140409] Memory: 232140K/261604K available (14340K ker=
nel code, 1407K rwdata, 3196K rodata, 1612K)</div>
<div>[&nbsp; &nbsp; 0.152763] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=
=3D0, CPUs=3D1, Nodes=3D1</div>
<div>[&nbsp; &nbsp; 0.153835] Kernel/User page tables isolation: enabled</d=
iv>
<div>[&nbsp; &nbsp; 0.155757] ftrace: allocating 41816 entries in 164 pages=
</div>
<div>[&nbsp; &nbsp; 0.232233] rcu: Preemptible hierarchical RCU implementat=
ion.</div>
<div>[&nbsp; &nbsp; 0.232365] rcu:  RCU restricting CPUs from NR_CPUS=3D64 =
to nr_cpu_ids=3D1.</div>
<div>[&nbsp; &nbsp; 0.232452]  Tasks RCU enabled.</div>
<div>[&nbsp; &nbsp; 0.232526] rcu: RCU calculated value of scheduler-enlist=
ment delay is 100 jiffies.</div>
<div>[&nbsp; &nbsp; 0.232562] rcu: Adjusting geometry for rcu_fanout_leaf=
=3D16, nr_cpu_ids=3D1</div>
<div>[&nbsp; &nbsp; 0.253797] NR_IRQS: 4352, nr_irqs: 256, preallocated irq=
s: 16</div>
<div>[&nbsp; &nbsp; 0.263911] random: get_random_bytes called from start_ke=
rnel+0x325/0x4db with crng_init=3D0</div>
<div>[&nbsp; &nbsp; 0.268071] Console: colour VGA+ 80x25</div>
<div>[&nbsp; &nbsp; 0.310885] printk: console [ttyS0] enabled</div>
<div>[&nbsp; &nbsp; 0.314617] ACPI: Core revision 20190816</div>
<div>
<div>[&nbsp; &nbsp; 0.323461] clocksource: hpet: mask: 0xffffffff max_cycle=
s: 0xffffffff, max_idle_ns: 19112604467 ns</div>
<div>[&nbsp; &nbsp; 0.331315] APIC: Switch to symmetric I/O mode setup</div=
>
<div>[&nbsp; &nbsp; 0.375864] ..TIMER: vector=3D0x30 apic1=3D0 pin1=3D2 api=
c2=3D-1 pin2=3D-1</div>
<div>[&nbsp; &nbsp; 0.381414] clocksource: tsc-early: mask: 0xfffffffffffff=
fff max_cycles: 0x185aca918fe, max_idle_ns:s</div>
<div>[&nbsp; &nbsp; 0.383024] Calibrating delay loop (skipped), value calcu=
lated using timer frequency.. 3379.20 BogoM)</div>
<div>[&nbsp; &nbsp; 0.385009] pid_max: default: 32768 minimum: 301</div>
<div>[&nbsp; &nbsp; 0.386726] LSM: Security Framework initializing</div>
<div>[&nbsp; &nbsp; 0.388807] Mount-cache hash table entries: 512 (order: 0=
, 4096 bytes, linear)</div>
<div>[&nbsp; &nbsp; 0.388944] Mountpoint-cache hash table entries: 512 (ord=
er: 0, 4096 bytes, linear)</div>
<div>[&nbsp; &nbsp; 0.415798] process: using mwait in idle threads</div>
<div>[&nbsp; &nbsp; 0.416144] Last level iTLB entries: 4KB 0, 2MB 0, 4MB 0<=
/div>
<div>[&nbsp; &nbsp; 0.416930] Last level dTLB entries: 4KB 0, 2MB 0, 4MB 0,=
 1GB 0</div>
<div>[&nbsp; &nbsp; 0.418102] Spectre V1 : Mitigation: usercopy/swapgs barr=
iers and __user pointer sanitization</div>
<div>[&nbsp; &nbsp; 0.419029] Spectre V2 : Mitigation: Retpolines</div>
<div>[&nbsp; &nbsp; 0.419928] Spectre V2 : Spectre v2 / SpectreRSB mitigati=
on: Filling RSB on context switch</div>
<div>[&nbsp; &nbsp; 0.420958] Speculative Store Bypass: Vulnerable</div>
<div>[&nbsp; &nbsp; 0.421698] MDS: Vulnerable: Clear CPU buffers attempted,=
 no microcode</div>
<div>[&nbsp; &nbsp; 0.626147] random: fast init done</div>
<div>[&nbsp; &nbsp; 0.772307] Freeing SMP alternatives memory: 44K</div>
<div>[&nbsp; &nbsp; 0.879347] smpboot: CPU0: Intel(R) Core(TM)2 Duo CPU&nbs=
p; &nbsp; &nbsp;T7700&nbsp; @ 2.40GHz (family: 0x6, model: 0xf,)</div>
<div>[&nbsp; &nbsp; 0.887084] Performance Events: unsupported p6 CPU model =
15 no PMU driver, software events only.</div>
<div>[&nbsp; &nbsp; 0.889602] rcu: Hierarchical SRCU implementation.</div>
<div>[&nbsp; &nbsp; 0.894836] smp: Bringing up secondary CPUs ...</div>
<div>[&nbsp; &nbsp; 0.894970] smp: Brought up 1 node, 1 CPU</div>
<div>[&nbsp; &nbsp; 0.895954] smpboot: Max logical packages: 1</div>
<div>[&nbsp; &nbsp; 0.896451] smpboot: Total of 1 processors activated (337=
9.20 BogoMIPS)</div>
<div>[&nbsp; &nbsp; 0.909320] devtmpfs: initialized</div>
<div>[&nbsp; &nbsp; 0.921047] clocksource: jiffies: mask: 0xffffffff max_cy=
cles: 0xffffffff, max_idle_ns: 191126044627s</div>
<div>[&nbsp; &nbsp; 0.922081] futex hash table entries: 256 (order: 2, 1638=
4 bytes, linear)</div>
<div>[&nbsp; &nbsp; 0.924750] xor: measuring software checksum speed</div>
<div>[&nbsp; &nbsp; 0.935030]&nbsp; &nbsp; prefetch64-sse:&nbsp; 2032.000 M=
B/sec</div>
<div>[&nbsp; &nbsp; 0.945932]&nbsp; &nbsp; generic_sse:&nbsp; 2136.000 MB/s=
ec</div>
<div>[&nbsp; &nbsp; 0.946519] xor: using function: generic_sse (2136.000 MB=
/sec)</div>
<div>[&nbsp; &nbsp; 0.947198] pinctrl core: initialized pinctrl subsystem</=
div>
</div>
<div>
<div>[&nbsp; &nbsp; 0.955770] NET: Registered protocol family 16</div>
<div>[&nbsp; &nbsp; 0.966246] cpuidle: using governor menu</div>
<div>[&nbsp; &nbsp; 0.967806] ACPI: bus type PCI registered</div>
<div>[&nbsp; &nbsp; 0.970419] PCI: Using configuration type 1 for base acce=
ss</div>
<div>[&nbsp; &nbsp; 1.026186] raid6: sse2x4&nbsp; &nbsp;gen()&nbsp; &nbsp;4=
92 MB/s</div>
<div>[&nbsp; &nbsp; 1.044095] raid6: sse2x4&nbsp; &nbsp;xor()&nbsp; &nbsp;2=
61 MB/s</div>
<div>[&nbsp; &nbsp; 1.061027] raid6: sse2x2&nbsp; &nbsp;gen()&nbsp; &nbsp;5=
23 MB/s</div>
<div>[&nbsp; &nbsp; 1.078256] raid6: sse2x2&nbsp; &nbsp;xor()&nbsp; &nbsp;2=
59 MB/s</div>
<div>[&nbsp; &nbsp; 1.096030] raid6: sse2x1&nbsp; &nbsp;gen()&nbsp; &nbsp;4=
25 MB/s</div>
<div>[&nbsp; &nbsp; 1.113986] raid6: sse2x1&nbsp; &nbsp;xor()&nbsp; &nbsp;2=
46 MB/s</div>
<div>[&nbsp; &nbsp; 1.114936] raid6: using algorithm sse2x2 gen() 523 MB/s<=
/div>
<div>[&nbsp; &nbsp; 1.115975] raid6: .... xor() 259 MB/s, rmw enabled</div>
<div>[&nbsp; &nbsp; 1.117147] raid6: using ssse3x2 recovery algorithm</div>
<div>[&nbsp; &nbsp; 1.119767] ACPI: Added _OSI(Module Device)</div>
<div>[&nbsp; &nbsp; 1.119947] ACPI: Added _OSI(Processor Device)</div>
<div>[&nbsp; &nbsp; 1.120422] ACPI: Added _OSI(3.0 _SCP Extensions)</div>
<div>[&nbsp; &nbsp; 1.120918] ACPI: Added _OSI(Processor Aggregator Device)=
</div>
<div>[&nbsp; &nbsp; 1.122005] ACPI: Added _OSI(Linux-Dell-Video)</div>
<div>[&nbsp; &nbsp; 1.122506] ACPI: Added _OSI(Linux-Lenovo-NV-HDMI-Audio)<=
/div>
<div>[&nbsp; &nbsp; 1.122922] ACPI: Added _OSI(Linux-HPI-Hybrid-Graphics)</=
div>
<div>[&nbsp; &nbsp; 1.140652] ACPI: 1 ACPI AML tables successfully acquired=
 and loaded</div>
<div>[&nbsp; &nbsp; 1.161811] ACPI: Interpreter enabled</div>
<div>[&nbsp; &nbsp; 1.163464] ACPI: (supports S0 S3 S5)</div>
<div>[&nbsp; &nbsp; 1.163979] ACPI: Using IOAPIC for interrupt routing</div=
>
<div>[&nbsp; &nbsp; 1.165261] PCI: Using host bridge windows from ACPI; if =
necessary, use "pci=3Dnocrs" and report a bug</div>
<div>[&nbsp; &nbsp; 1.167766] ACPI: Enabled 2 GPEs in block 00 to 0F</div>
<div>[&nbsp; &nbsp; 1.207391] ACPI: PCI Root Bridge [PCI0] (domain 0000 [bu=
s 00-ff])</div>
<div>[&nbsp; &nbsp; 1.208367] acpi PNP0A03:00: _OSC: OS supports [ASPM Cloc=
kPM Segments MSI HPX-Type3]</div>
<div>[&nbsp; &nbsp; 1.210180] acpi PNP0A03:00: fail to add MMCONFIG informa=
tion, can't access extended PCI configurati.</div>
<div>[&nbsp; &nbsp; 1.214285] PCI host bridge to bus 0000:00</div>
<div>[&nbsp; &nbsp; 1.215024] pci_bus 0000:00: root bus resource [io&nbsp; =
0x0000-0x0cf7 window]</div>
<div>[&nbsp; &nbsp; 1.215968] pci_bus 0000:00: root bus resource [io&nbsp; =
0x0d00-0xffff window]</div>
<div>[&nbsp; &nbsp; 1.216981] pci_bus 0000:00: root bus resource [mem 0x000=
a0000-0x000bffff window]</div>
<div>[&nbsp; &nbsp; 1.217926] pci_bus 0000:00: root bus resource [mem 0x100=
00000-0xfebfffff window]</div>
<div>[&nbsp; &nbsp; 1.218920] pci_bus 0000:00: root bus resource [mem 0x100=
000000-0x17fffffff window]</div>
<div>[&nbsp; &nbsp; 1.220119] pci_bus 0000:00: root bus resource [bus 00-ff=
]</div>
</div>
<div>
<div>[&nbsp; &nbsp; 1.228162] pci 0000:00:01.1: [8086:7010] type 00 class 0=
x010180</div>
<div>[&nbsp; &nbsp; 1.233048] pci 0000:00:01.1: reg 0x20: [io&nbsp; 0xc0e0-=
0xc0ef]</div>
<div>[&nbsp; &nbsp; 1.234367] pci 0000:00:01.1: legacy IDE quirk: reg 0x10:=
 [io&nbsp; 0x01f0-0x01f7]</div>
<div>[&nbsp; &nbsp; 1.235947] pci 0000:00:01.1: legacy IDE quirk: reg 0x14:=
 [io&nbsp; 0x03f6]</div>
<div>[&nbsp; &nbsp; 1.236934] pci 0000:00:01.1: legacy IDE quirk: reg 0x18:=
 [io&nbsp; 0x0170-0x0177]</div>
<div>[&nbsp; &nbsp; 1.237717] pci 0000:00:01.1: legacy IDE quirk: reg 0x1c:=
 [io&nbsp; 0x0376]</div>
<div>[&nbsp; &nbsp; 1.239483] pci 0000:00:01.2: [8086:7020] type 00 class 0=
x0c0300</div>
<div>[&nbsp; &nbsp; 1.241609] pci 0000:00:01.2: reg 0x20: [io&nbsp; 0xc080-=
0xc09f]</div>
<div>[&nbsp; &nbsp; 1.245137] pci 0000:00:01.3: [8086:7113] type 00 class 0=
x068000</div>
<div>[&nbsp; &nbsp; 1.246990] pci 0000:00:01.3: quirk: [io&nbsp; 0x0600-0x0=
63f] claimed by PIIX4 ACPI</div>
<div>[&nbsp; &nbsp; 1.248982] pci 0000:00:01.3: quirk: [io&nbsp; 0x0700-0x0=
70f] claimed by PIIX4 SMB</div>
<div>[&nbsp; &nbsp; 1.250849] pci 0000:00:02.0: [1234:1111] type 00 class 0=
x030000</div>
<div>[&nbsp; &nbsp; 1.252532] pci 0000:00:02.0: reg 0x10: [mem 0xfd000000-0=
xfdffffff pref]</div>
<div>[&nbsp; &nbsp; 1.254439] pci 0000:00:02.0: reg 0x18: [mem 0xfebd0000-0=
xfebd0fff]</div>
<div>[&nbsp; &nbsp; 1.259319] pci 0000:00:02.0: reg 0x30: [mem 0xfebc0000-0=
xfebcffff pref]</div>
<div>[&nbsp; &nbsp; 1.261511] pci 0000:00:03.0: [1af4:1000] type 00 class 0=
x020000</div>
<div>[&nbsp; &nbsp; 1.262963] pci 0000:00:03.0: reg 0x10: [io&nbsp; 0xc0a0-=
0xc0bf]</div>
<div>[&nbsp; &nbsp; 1.264399] pci 0000:00:03.0: reg 0x14: [mem 0xfebd1000-0=
xfebd1fff]</div>
<div>[&nbsp; &nbsp; 1.267584] pci 0000:00:03.0: reg 0x20: [mem 0xfe000000-0=
xfe003fff 64bit pref]</div>
<div>[&nbsp; &nbsp; 1.269382] pci 0000:00:03.0: reg 0x30: [mem 0xfeb80000-0=
xfebbffff pref]</div>
<div>[&nbsp; &nbsp; 1.271515] pci 0000:00:04.0: [1af4:1005] type 00 class 0=
x00ff00</div>
<div>[&nbsp; &nbsp; 1.273410] pci 0000:00:04.0: reg 0x10: [io&nbsp; 0xc0c0-=
0xc0df]</div>
<div>[&nbsp; &nbsp; 1.276581] pci 0000:00:04.0: reg 0x20: [mem 0xfe004000-0=
xfe007fff 64bit pref]</div>
<div>[&nbsp; &nbsp; 1.278443] pci 0000:00:05.0: [1af4:1001] type 00 class 0=
x010000</div>
<div>[&nbsp; &nbsp; 1.279958] pci 0000:00:05.0: reg 0x10: [io&nbsp; 0xc000-=
0xc07f]</div>
<div>[&nbsp; &nbsp; 1.281211] pci 0000:00:05.0: reg 0x14: [mem 0xfebd2000-0=
xfebd2fff]</div>
<div>[&nbsp; &nbsp; 1.284515] pci 0000:00:05.0: reg 0x20: [mem 0xfe008000-0=
xfe00bfff 64bit pref]</div>
<div>[&nbsp; &nbsp; 1.294292] ACPI: PCI Interrupt Link [LNKA] (IRQs 5 *10 1=
1)</div>
<div>[&nbsp; &nbsp; 1.295942] ACPI: PCI Interrupt Link [LNKB] (IRQs 5 *10 1=
1)</div>
<div>[&nbsp; &nbsp; 1.297224] ACPI: PCI Interrupt Link [LNKC] (IRQs 5 10 *1=
1)</div>
<div>[&nbsp; &nbsp; 1.298272] ACPI: PCI Interrupt Link [LNKD] (IRQs 5 10 *1=
1)</div>
<div>[&nbsp; &nbsp; 1.299118] ACPI: PCI Interrupt Link [LNKS] (IRQs *9)</di=
v>
<div>[&nbsp; &nbsp; 1.305368] pci 0000:00:02.0: vgaarb: setting as boot VGA=
 device</div>
<div>[&nbsp; &nbsp; 1.305905] pci 0000:00:02.0: vgaarb: VGA device added: d=
ecodes=3Dio+mem,owns=3Dio+mem,locks=3Dnone</div>
<div>[&nbsp; &nbsp; 1.305970] pci 0000:00:02.0: vgaarb: bridge control poss=
ible</div>
<div>[&nbsp; &nbsp; 1.306637] vgaarb: loaded</div>
<div>[&nbsp; &nbsp; 1.308290] SCSI subsystem initialized</div>
<div>[&nbsp; &nbsp; 1.309565] ACPI: bus type USB registered</div>
</div>
<div>
<div>[&nbsp; &nbsp; 1.310261] usbcore: registered new interface driver usbf=
s</div>
<div>[&nbsp; &nbsp; 1.311172] usbcore: registered new interface driver hub<=
/div>
<div>[&nbsp; &nbsp; 1.311974] usbcore: registered new device driver usb</di=
v>
<div>[&nbsp; &nbsp; 1.314504] pps_core: LinuxPPS API ver. 1 registered</div=
>
<div>[&nbsp; &nbsp; 1.314975] pps_core: Software ver. 5.3.6 - Copyright 200=
5-2007 Rodolfo Giometti &lt;giometti@linux.it&gt;</div>
<div>[&nbsp; &nbsp; 1.316037] PTP clock support registered</div>
<div>[&nbsp; &nbsp; 1.318393] PCI: Using ACPI for IRQ routing</div>
<div>[&nbsp; &nbsp; 1.332774] Bluetooth: Core ver 2.22</div>
<div>[&nbsp; &nbsp; 1.333104] NET: Registered protocol family 31</div>
<div>[&nbsp; &nbsp; 1.333949] Bluetooth: HCI device and connection manager =
initialized</div>
<div>[&nbsp; &nbsp; 1.335055] Bluetooth: HCI socket layer initialized</div>
<div>[&nbsp; &nbsp; 1.335724] Bluetooth: L2CAP socket layer initialized</di=
v>
<div>[&nbsp; &nbsp; 1.336097] Bluetooth: SCO socket layer initialized</div>
<div>[&nbsp; &nbsp; 1.340083] hpet: 3 channels of 0 reserved for per-cpu ti=
mers</div>
<div>[&nbsp; &nbsp; 1.341256] hpet0: at MMIO 0xfed00000, IRQs 2, 8, 0</div>
<div>[&nbsp; &nbsp; 1.342941] hpet0: 3 comparators, 64-bit 100.000000 MHz c=
ounter</div>
<div>[&nbsp; &nbsp; 1.349759] clocksource: Switched to clocksource tsc-earl=
y</div>
<div>[&nbsp; &nbsp; 1.783492] pnp: PnP ACPI init</div>
<div>[&nbsp; &nbsp; 1.789182] pnp: PnP ACPI: found 7 devices</div>
<div>[&nbsp; &nbsp; 1.807251] thermal_sys: Registered thermal governor 'ste=
p_wise'</div>
<div>[&nbsp; &nbsp; 1.807387] thermal_sys: Registered thermal governor 'use=
r_space'</div>
<div>[&nbsp; &nbsp; 1.824442] clocksource: acpi_pm: mask: 0xffffff max_cycl=
es: 0xffffff, max_idle_ns: 2085701024 ns</div>
<div>[&nbsp; &nbsp; 1.828445] pci_bus 0000:00: resource 4 [io&nbsp; 0x0000-=
0x0cf7 window]</div>
<div>[&nbsp; &nbsp; 1.830071] pci_bus 0000:00: resource 5 [io&nbsp; 0x0d00-=
0xffff window]</div>
<div>[&nbsp; &nbsp; 1.832002] pci_bus 0000:00: resource 6 [mem 0x000a0000-0=
x000bffff window]</div>
<div>[&nbsp; &nbsp; 1.833410] pci_bus 0000:00: resource 7 [mem 0x10000000-0=
xfebfffff window]</div>
<div>[&nbsp; &nbsp; 1.834741] pci_bus 0000:00: resource 8 [mem 0x100000000-=
0x17fffffff window]</div>
<div>[&nbsp; &nbsp; 1.837537] NET: Registered protocol family 2</div>
<div>[&nbsp; &nbsp; 1.839729] IP idents hash table entries: 4096 (order: 3,=
 32768 bytes, linear)</div>
<div>[&nbsp; &nbsp; 1.865735] tcp_listen_portaddr_hash hash table entries: =
256 (order: 0, 4096 bytes, linear)</div>
<div>[&nbsp; &nbsp; 1.867608] TCP established hash table entries: 2048 (ord=
er: 2, 16384 bytes, linear)</div>
<div>[&nbsp; &nbsp; 1.868746] TCP bind hash table entries: 2048 (order: 3, =
32768 bytes, linear)</div>
<div>[&nbsp; &nbsp; 1.869797] TCP: Hash tables configured (established 2048=
 bind 2048)</div>
<div>[&nbsp; &nbsp; 1.883744] UDP hash table entries: 256 (order: 1, 8192 b=
ytes, linear)</div>
<div>[&nbsp; &nbsp; 1.884827] UDP-Lite hash table entries: 256 (order: 1, 8=
192 bytes, linear)</div>
<div>[&nbsp; &nbsp; 1.888819] NET: Registered protocol family 1</div>
</div>
<div>
<div>[&nbsp; &nbsp; 1.893298] RPC: Registered named UNIX socket transport m=
odule.</div>
<div>[&nbsp; &nbsp; 1.894880] RPC: Registered udp transport module.</div>
<div>[&nbsp; &nbsp; 1.895821] RPC: Registered tcp transport module.</div>
<div>[&nbsp; &nbsp; 1.896792] RPC: Registered tcp NFSv4.1 backchannel trans=
port module.</div>
<div>[&nbsp; &nbsp; 1.898265] pci 0000:00:01.0: PIIX3: Enabling Passive Rel=
ease</div>
<div>[&nbsp; &nbsp; 1.899583] pci 0000:00:00.0: Limiting direct PCI/PCI tra=
nsfers</div>
<div>[&nbsp; &nbsp; 1.901234] pci 0000:00:01.0: Activating ISA DMA hang wor=
karounds</div>
<div>[&nbsp; &nbsp; 1.914435] pci 0000:00:01.0: quirk_isa_dma_hangs+0x0/0x2=
0 took 12838 usecs</div>
<div>[&nbsp; &nbsp; 2.135341] PCI Interrupt Link [LNKD] enabled at IRQ 11</=
div>
<div>[&nbsp; &nbsp; 2.341888] pci 0000:00:01.2: quirk_usb_early_handoff+0x0=
/0x650 took 415769 usecs</div>
<div>[&nbsp; &nbsp; 2.343275] pci 0000:00:02.0: Video device with shadowed =
ROM at [mem 0x000c0000-0x000dffff]</div>
<div>[&nbsp; &nbsp; 2.345068] PCI: CLS 0 bytes, default 64</div>
<div>[&nbsp; &nbsp; 2.359823] check: Scanning for low memory corruption eve=
ry 60 seconds</div>
<div>[&nbsp; &nbsp; 2.364056] Initialise system trusted keyrings</div>
<div>[&nbsp; &nbsp; 2.365862] workingset: timestamp_bits=3D46 max_order=3D1=
6 bucket_order=3D0</div>
<div>[&nbsp; &nbsp; 2.393568] NFS: Registering the id_resolver key type</di=
v>
<div>[&nbsp; &nbsp; 2.394661] Key type id_resolver registered</div>
<div>[&nbsp; &nbsp; 2.395253] Key type id_legacy registered</div>
<div>[&nbsp; &nbsp; 2.398828] Key type cifs.idmap registered</div>
<div>[&nbsp; &nbsp; 2.426560] Key type asymmetric registered</div>
<div>[&nbsp; &nbsp; 2.427166] Asymmetric key parser 'x509' registered</div>
<div>[&nbsp; &nbsp; 2.427826] Block layer SCSI generic (bsg) driver version=
 0.4 loaded (major 251)</div>
<div>[&nbsp; &nbsp; 2.428763] io scheduler mq-deadline registered</div>
<div>[&nbsp; &nbsp; 2.429376] io scheduler kyber registered</div>
<div>[&nbsp; &nbsp; 2.443085] input: Power Button as /devices/LNXSYSTM:00/L=
NXPWRBN:00/input/input0</div>
<div>[&nbsp; &nbsp; 2.452480] ACPI: Power Button [PWRF]</div>
<div>[&nbsp; &nbsp; 2.636339] PCI Interrupt Link [LNKC] enabled at IRQ 10</=
div>
<div>[&nbsp; &nbsp; 3.043706] PCI Interrupt Link [LNKA] enabled at IRQ 10</=
div>
<div>[&nbsp; &nbsp; 3.046003] Serial: 8250/16550 driver, 4 ports, IRQ shari=
ng disabled</div>
<div>[&nbsp; &nbsp; 3.080365] 00:05: ttyS0 at I/O 0x3f8 (irq =3D 4, base_ba=
ud =3D 115200) is a 16550A</div>
<div>[&nbsp; &nbsp; 3.115413] 00:06: ttyS1 at I/O 0x2f8 (irq =3D 3, base_ba=
ud =3D 115200) is a 16550A</div>
<div>[&nbsp; &nbsp; 3.130219] Linux agpgart interface v0.103</div>
<div>[&nbsp; &nbsp; 3.132176] bochs-drm 0000:00:02.0: remove_conflicting_pc=
i_framebuffers: bar 0: 0xfd000000 -&gt; 0xfdfff</div>
<div>[&nbsp; &nbsp; 3.141489] crng init done</div>
</div>
<div>
<div>&nbsp; &nbsp; 3.142481] bochs-drm 0000:00:02.0: remove_conflicting_pci=
_framebuffers: bar 2: 0xfebd0000 -&gt; 0xfebdf</div>
<div>[&nbsp; &nbsp; 3.145663] bochs-drm 0000:00:02.0: vgaarb: deactivate vg=
a console</div>
<div>[&nbsp; &nbsp; 3.147438] Console: switching to colour dummy device 80x=
25</div>
<div>[&nbsp; &nbsp; 3.150326] [drm] Found bochs VGA, ID 0xb0c0.</div>
<div>[&nbsp; &nbsp; 3.150809] [drm] Framebuffer size 16384 kB @ 0xfd000000,=
 mmio @ 0xfebd0000.</div>
<div>[&nbsp; &nbsp; 3.152273] [TTM] Zone&nbsp; kernel: Available graphics m=
emory: 116092 KiB</div>
<div>[&nbsp; &nbsp; 3.153052] [TTM] Initializing pool allocator</div>
<div>[&nbsp; &nbsp; 3.153658] [TTM] Initializing DMA pool allocator</div>
<div>[&nbsp; &nbsp; 3.157316] [drm] Found EDID data blob.</div>
<div>[&nbsp; &nbsp; 3.162182] [drm] Initialized bochs-drm 1.0.0 20130925 fo=
r 0000:00:02.0 on minor 0</div>
<div>[&nbsp; &nbsp; 3.200140] fbcon: bochs-drmdrmfb (fb0) is primary device=
</div>
<div>[&nbsp; &nbsp; 3.232092] Console: switching to colour frame buffer dev=
ice 128x48</div>
<div>[&nbsp; &nbsp; 3.247507] bochs-drm 0000:00:02.0: fb0: bochs-drmdrmfb f=
rame buffer device</div>
<div>[&nbsp; &nbsp; 3.287157] brd: module loaded</div>
<div>[&nbsp; &nbsp; 3.338996] loop: module loaded</div>
<div>[&nbsp; &nbsp; 3.346707] virtio_blk virtio2: [vda] 23994 512-byte logi=
cal blocks (12.3 MB/11.7 MiB)</div>
<div>[&nbsp; &nbsp; 3.389639] Uniform Multi-Platform E-IDE driver</div>
<div>[&nbsp; &nbsp; 3.390654] piix 0000:00:01.1: IDE controller (0x8086:0x7=
010 rev 0x00)</div>
<div>[&nbsp; &nbsp; 3.392365] piix 0000:00:01.1: not 100% native mode: will=
 probe irqs later</div>
<div>[&nbsp; &nbsp; 3.393854] legacy IDE will be removed in 2021, please sw=
itch to libata</div>
<div>[&nbsp; &nbsp; 3.393854] Report any missing HW support to linux-ide@vg=
er.kernel.org</div>
<div>[&nbsp; &nbsp; 3.396536]&nbsp; &nbsp; &nbsp;ide0: BM-DMA at 0xc0e0-0xc=
0e7</div>
<div>[&nbsp; &nbsp; 3.405884]&nbsp; &nbsp; &nbsp;ide1: BM-DMA at 0xc0e8-0xc=
0ef</div>
<div>[&nbsp; &nbsp; 3.410281] tsc: Refined TSC clocksource calibration: 168=
9.599 MHz</div>
<div>[&nbsp; &nbsp; 3.411557] clocksource: tsc: mask: 0xffffffffffffffff ma=
x_cycles: 0x185ac5ca321, max_idle_ns: 44079s</div>
<div>[&nbsp; &nbsp; 3.413037] clocksource: Switched to clocksource tsc</div=
>
<div>[&nbsp; &nbsp; 4.627674] hdc: QEMU DVD-ROM, ATAPI CD/DVD-ROM drive</di=
v>
<div>[&nbsp; &nbsp; 5.254056] hdc: MWDMA2 mode selected</div>
<div>[&nbsp; &nbsp; 5.255216] ide0 at 0x1f0-0x1f7,0x3f6 on irq 14</div>
<div>[&nbsp; &nbsp; 5.255797] ide1 at 0x170-0x177,0x376 on irq 15</div>
<div>[&nbsp; &nbsp; 5.257637] ide-gd driver 1.18</div>
<div>[&nbsp; &nbsp; 5.258220] ide-cd driver 5.00</div>
</div>
<div>
<div>[&nbsp; &nbsp; 5.261670] ide-cd: hdc: ATAPI 4X DVD-ROM drive, 512kB Ca=
che</div>
<div>[&nbsp; &nbsp; 5.262259] cdrom: Uniform CD-ROM driver Revision: 3.20</=
div>
<div>[&nbsp; &nbsp; 5.325752] e100: Intel(R) PRO/100 Network Driver, 3.5.24=
-k2-NAPI</div>
<div>[&nbsp; &nbsp; 5.326801] e100: Copyright(c) 1999-2006 Intel Corporatio=
n</div>
<div>[&nbsp; &nbsp; 5.327565] e1000: Intel(R) PRO/1000 Network Driver - ver=
sion 7.3.21-k8-NAPI</div>
<div>[&nbsp; &nbsp; 5.328444] e1000: Copyright (c) 1999-2006 Intel Corporat=
ion.</div>
<div>[&nbsp; &nbsp; 5.329179] e1000e: Intel(R) PRO/1000 Network Driver - 3.=
2.6-k</div>
<div>[&nbsp; &nbsp; 5.329878] e1000e: Copyright(c) 1999 - 2015 Intel Corpor=
ation.</div>
<div>[&nbsp; &nbsp; 5.330642] igb: Intel(R) Gigabit Ethernet Network Driver=
 - version 5.6.0-k</div>
<div>[&nbsp; &nbsp; 5.331302] igb: Copyright (c) 2007-2014 Intel Corporatio=
n.</div>
<div>[&nbsp; &nbsp; 5.331892] ehci_hcd: USB 2.0 'Enhanced' Host Controller =
(EHCI) Driver</div>
<div>[&nbsp; &nbsp; 5.332454] ehci-pci: EHCI PCI platform driver</div>
<div>[&nbsp; &nbsp; 5.333094] ohci_hcd: USB 1.1 'Open' Host Controller (OHC=
I) Driver</div>
<div>[&nbsp; &nbsp; 5.333846] ohci-pci: OHCI PCI platform driver</div>
<div>[&nbsp; &nbsp; 5.334450] uhci_hcd: USB Universal Host Controller Inter=
face driver</div>
<div>[&nbsp; &nbsp; 5.485426] uhci_hcd 0000:00:01.2: UHCI Host Controller</=
div>
<div>[&nbsp; &nbsp; 5.486339] uhci_hcd 0000:00:01.2: new USB bus registered=
, assigned bus number 1</div>
<div>[&nbsp; &nbsp; 5.487652] uhci_hcd 0000:00:01.2: irq 11, io base 0x0000=
c080</div>
<div>[&nbsp; &nbsp; 5.493247] hub 1-0:1.0: USB hub found</div>
<div>[&nbsp; &nbsp; 5.494019] hub 1-0:1.0: 2 ports detected</div>
<div>[&nbsp; &nbsp; 5.502529] usbcore: registered new interface driver usb-=
storage</div>
<div>[&nbsp; &nbsp; 5.503369] usbcore: registered new interface driver usbs=
erial_generic</div>
<div>[&nbsp; &nbsp; 5.504629] usbserial: USB Serial support registered for =
generic</div>
<div>[&nbsp; &nbsp; 5.505283] usbcore: registered new interface driver ftdi=
_sio</div>
<div>[&nbsp; &nbsp; 5.505839] usbserial: USB Serial support registered for =
FTDI USB Serial Device</div>
<div>[&nbsp; &nbsp; 5.506584] usbcore: registered new interface driver pl23=
03</div>
<div>[&nbsp; &nbsp; 5.507128] usbserial: USB Serial support registered for =
pl2303</div>
<div>[&nbsp; &nbsp; 5.508227] i8042: PNP: PS/2 Controller [PNP0303:KBD,PNP0=
f13:MOU] at 0x60,0x64 irq 1,12</div>
<div>[&nbsp; &nbsp; 5.510883] serio: i8042 KBD port at 0x60,0x64 irq 1</div=
>
<div>[&nbsp; &nbsp; 5.511896] serio: i8042 AUX port at 0x60,0x64 irq 12</di=
v>
<div>[&nbsp; &nbsp; 5.522420] mousedev: PS/2 mouse device common for all mi=
ce</div>
<div>[&nbsp; &nbsp; 5.526890] input: AT Translated Set 2 keyboard as /devic=
es/platform/i8042/serio0/input/input1</div>
<div>[&nbsp; &nbsp; 5.528503] rtc_cmos 00:00: RTC can wake from S4</div>
</div>
<div>
<div>[&nbsp; &nbsp; 5.534544] rtc_cmos 00:00: registered as rtc0</div>
<div>[&nbsp; &nbsp; 5.556479] rtc_cmos 00:00: alarms up to one day, y3k, 11=
4 bytes nvram, hpet irqs</div>
<div>[&nbsp; &nbsp; 5.561094] device-mapper: ioctl: 4.41.0-ioctl (2019-09-1=
6) initialised: dm-devel@redhat.com</div>
<div>[&nbsp; &nbsp; 5.563200] intel_pstate: CPU model not supported</div>
<div>[&nbsp; &nbsp; 5.563869] sdhci: Secure Digital Host Controller Interfa=
ce driver</div>
<div>[&nbsp; &nbsp; 5.564514] sdhci: Copyright(c) Pierre Ossman</div>
<div>[&nbsp; &nbsp; 5.565088] sdhci-pltfm: SDHCI platform and OF driver hel=
per</div>
<div>[&nbsp; &nbsp; 5.566636] usbcore: registered new interface driver usbh=
id</div>
<div>[&nbsp; &nbsp; 5.567241] usbhid: USB HID core driver</div>
<div>[&nbsp; &nbsp; 5.567922] drop_monitor: Initializing network drop monit=
or service</div>
<div>[&nbsp; &nbsp; 5.568892] u32 classifier</div>
<div>[&nbsp; &nbsp; 5.569207]&nbsp; &nbsp; &nbsp;input device check on</div=
>
<div>[&nbsp; &nbsp; 5.569564]&nbsp; &nbsp; &nbsp;Actions configured</div>
<div>[&nbsp; &nbsp; 5.571099] NET: Registered protocol family 10</div>
<div>[&nbsp; &nbsp; 5.586617] Segment Routing with IPv6</div>
<div>[&nbsp; &nbsp; 5.587629] sit: IPv6, IPv4 and MPLS over IPv4 tunneling =
driver</div>
<div>[&nbsp; &nbsp; 5.590474] NET: Registered protocol family 17</div>
<div>[&nbsp; &nbsp; 5.591687] Key type dns_resolver registered</div>
<div>[&nbsp; &nbsp; 5.593676] IPI shorthand broadcast: enabled</div>
<div>[&nbsp; &nbsp; 5.594374] sched_clock: Marking stable (5485271338, 1089=
14060)-&gt;(5981448748, -387263350)</div>
<div>[&nbsp; &nbsp; 5.595828] Loading compiled-in X.509 certificates</div>
<div>[&nbsp; &nbsp; 5.596642] Key type ._fscrypt registered</div>
<div>[&nbsp; &nbsp; 5.597146] Key type .fscrypt registered</div>
<div>[&nbsp; &nbsp; 5.601249] Btrfs loaded, crc32c=3Dcrc32c-generic</div>
<div>[&nbsp; &nbsp; 5.622879] Key type encrypted registered</div>
<div>[&nbsp; &nbsp; 5.626265] printk: console [netcon0] enabled</div>
<div>[&nbsp; &nbsp; 5.626738] netconsole: network logging started</div>
<div>[&nbsp; &nbsp; 5.627736] rtc_cmos 00:00: setting system clock to 2022-=
07-20T10:36:10 UTC (1658313370)</div>
<div>[&nbsp; &nbsp; 5.673637] IP-Config: Complete:</div>
<div>[&nbsp; &nbsp; 5.674257]&nbsp; &nbsp; &nbsp; device=3Deth0, hwaddr=3D5=
2:54:00:12:34:02, ipaddr=3D192.168.7.2, mask=3D255.255.255.0, gw=3D11</div>
<div>[&nbsp; &nbsp; 5.675261]&nbsp; &nbsp; &nbsp; host=3D192.168.7.2, domai=
n=3D, nis-domain=3D(none)</div>
<div>[&nbsp; &nbsp; 5.675828]&nbsp; &nbsp; &nbsp; bootserver=3D255.255.255.=
255, rootserver=3D255.255.255.255, rootpath=3D</div>
<div>[&nbsp; &nbsp; 5.729332] usb 1-1: new full-speed USB device number 2 u=
sing uhci_hcd</div>
<div>[&nbsp; &nbsp; 5.922791] input: QEMU QEMU USB Tablet as /devices/pci00=
00:00/0000:00:01.2/usb1/1-1/1-1:1.0/0003:064</div>
<div>[&nbsp; &nbsp; 5.924768] hid-generic 0003:0627:0001.0001: input: USB H=
ID v0.01 Mouse [QEMU QEMU USB Tablet] on us0</div>
<div>[&nbsp; &nbsp; 6.155241] input: ImExPS/2 Generic Explorer Mouse as /de=
vices/platform/i8042/serio1/input/input3</div>
<div>[&nbsp; &nbsp; 6.157869] md: Waiting for all devices to be available b=
efore autodetect</div>
</div>
<div>
<div>&nbsp; &nbsp; 6.158853] md: If you don't use raid, use raid=3Dnoautode=
tect</div>
<div>[&nbsp; &nbsp; 6.162222] md: Autodetecting RAID arrays.</div>
<div>[&nbsp; &nbsp; 6.162754] md: autorun ...</div>
<div>[&nbsp; &nbsp; 6.163171] md: ... autorun DONE.</div>
<div>[&nbsp; &nbsp; 6.272996] EXT4-fs (vda): recovery complete</div>
<div>[&nbsp; &nbsp; 6.276592] EXT4-fs (vda): mounted filesystem with ordere=
d data mode. Opts: (null)</div>
<div>[&nbsp; &nbsp; 6.278241] VFS: Mounted root (ext4 filesystem) on device=
 253:0.</div>
<div>[&nbsp; &nbsp; 6.322833] devtmpfs: mounted</div>
<div>[&nbsp; &nbsp; 6.354516] IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link bec=
omes ready</div>
<div>[&nbsp; &nbsp; 6.465480] Freeing unused kernel image memory: 1612K</di=
v>
<div>[&nbsp; &nbsp; 6.467795] Write protecting the kernel read-only data: 2=
0480k</div>
<div>[&nbsp; &nbsp; 6.471841] Freeing unused kernel image memory: 2004K</di=
v>
<div>[&nbsp; &nbsp; 6.473580] Freeing unused kernel image memory: 900K</div=
>
<div>[&nbsp; &nbsp; 6.474647] Run /sbin/init as init process</div>
<div>INIT: version 2.96 booting</div>
<div>Starting udev</div>
<div>[&nbsp; &nbsp; 7.915621] udevd[106]: starting version 3.2.9</div>
<div>[&nbsp; &nbsp; 8.067716] udevd[107]: starting eudev-3.2.9</div>
<div>[&nbsp; &nbsp;10.295030] EXT4-fs (vda): re-mounted. Opts: (null)</div>
<div>INIT: Entering runlevel: 5</div>
<div>Configuring network interfaces... ip: RTNETLINK answers: File exists</=
div>
<div>Starting syslogd/klogd: done</div>
<div>&nbsp;</div>
<div>Poky (Yocto Project Reference Distro) 3.1.16 qemux86-64 /dev/ttyS0</di=
v>
<div>&nbsp;</div>
<div>qemux86-64 login:&nbsp;</div>
<div>Poky (Yocto Project Reference Distro) 3.1.16 qemux86-64 /dev/ttyS0</di=
v>
<div>&nbsp;</div>
<div>qemux86-64 login: clear</div>
<div>Password:&nbsp;</div>
<div>Login incorrect</div>
<div>qemux86-64 login: root</div>
<div>root@qemux86-64:~# ls</div>
</div>
<div>&nbsp;</div>

--q6Yxeb6yi5M1WCQQXRQ6--

