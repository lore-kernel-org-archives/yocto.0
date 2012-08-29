Return-Path: <jfabernathy@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BB63E013FE
	for <yocto@yoctoproject.org>; Wed, 29 Aug 2012 05:52:12 -0700 (PDT)
Received: by obbtb18 with SMTP id tb18so1017996obb.35
	for <yocto@yoctoproject.org>; Wed, 29 Aug 2012 05:52:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=9Cd/2TIIlGBelpnC0Y6AcLP0si7LeQsZapGBFRvlOxE=;
	b=ka193gH65oQfJoJr2SGOL4VFlCJWvGi/38dwf/cVeh/Q0FKNrwIi2dQKoV4J3xhsi2
	VqimrVvaPLNDLulJSIn0WBn0Hwm/E+WecK9EQPvigbtveKLIq2N0sGJ58TRBaeLHaGh6
	nzJk6vT1/71fJ88Zmy+3llxXdjgbwnJyvSUO+cbUJShQCpPdFJTrehDfXxtDKgLZDBMu
	t5rTKlcMrnDs73zOajco9eozOUOcallNdObFz5VoNjEYTZU4FPE0qoeWbeowh5rD6h7H
	ud2W7cGKPvld1nNAWV5vI5ldz0nnBhIeTbgDzm65XD4Re+Si0DZLFwEf2Kn3Dit0JlRs
	by+w==
MIME-Version: 1.0
Received: by 10.182.75.9 with SMTP id y9mr1054453obv.86.1346244731437; Wed, 29
	Aug 2012 05:52:11 -0700 (PDT)
Received: by 10.76.143.225 with HTTP; Wed, 29 Aug 2012 05:52:11 -0700 (PDT)
In-Reply-To: <CAJTo0LaMQkoGqojaDdFOXeELvRJow=sosoKWYnGgV_ONtRjgCg@mail.gmail.com>
References: <5037B5F5.5040105@gmail.com>
	<27A36DD288D740FA887185346F191582@intel.com>
	<5037C63E.6050507@gmail.com>
	<AB1D85DF566F4611935A07ABBD4D003E@intel.com>
	<5037C9B6.2040306@gmail.com>
	<CAJTo0LaMQkoGqojaDdFOXeELvRJow=sosoKWYnGgV_ONtRjgCg@mail.gmail.com>
Date: Wed, 29 Aug 2012 08:52:11 -0400
Message-ID: <CANFv2E=8vKRKWaK_M_OyhOY_nH5KMA08y2NcAXJLW1yPukVN0w@mail.gmail.com>
From: James Abernathy <jfabernathy@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: configuring WiFi in Yocto
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 29 Aug 2012 12:52:12 -0000
Content-Type: multipart/alternative; boundary=14dae939994fff815304c86706e8

--14dae939994fff815304c86706e8
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Aug 29, 2012 at 7:46 AM, Burton, Ross <ross.burton@intel.com> wrote:

> On 24 August 2012 19:36, Jim Abernathy <jfabernathy@gmail.com> wrote:
> > On 08/24/2012 02:23 PM, Ross Burton wrote:
> > See the linux-firmware packages. There are a few split out sub packages,
> and
> > then linux-firmware contains the rest.
> >
> > I see the rtl8192 firmware included in the linux-firmware recipe, but not
> > sure if there is a step to force a load of the firmware.
>
> Whoops, accidentally took this off-list by using my phone.
>
> If this is still broken, can you attach the output of dmesg, ifconfig
> and iwconfig on a fresh boot?
> ifconfig
>

I'm still having issues with WiFi.
iwconfig yields:
lo             no wireless extensions
eth0         no wireless extensions

ifconfig yields:

eth0 Link encap:Ethernet HWaddr 00:22:4D:80:36:1F

inet addr:10.0.1.57 Bcast:0.0.0.0 Mask:255.255.255.0

inet6 addr: fe80::222:4dff:fe80:361f/64 Scope:Link

UP BROADCAST RUNNING MULTICAST MTU:1500 Metric:1

RX packets:34 errors:0 dropped:0 overruns:0 frame:0

TX packets:50 errors:0 dropped:0 overruns:0 carrier:0

collisions:0 txqueuelen:1000

RX bytes:6478 (6.3 KiB) TX bytes:9592 (9.3 KiB)

Interrupt:16 Memory:80400000-80420000

lo Link encap:Local Loopback

inet addr:127.0.0.1 Mask:255.0.0.0

inet6 addr: ::1/128 Scope:Host

UP LOOPBACK RUNNING MTU:16436 Metric:1

RX packets:0 errors:0 dropped:0 overruns:0 frame:0

TX packets:0 errors:0 dropped:0 overruns:0 carrier:0

collisions:0 txqueuelen:0

RX bytes:0 (0.0 B) TX bytes:0 (0.0 B)

Finally, dmesg is below:

Initializing cgroup subsys cpuset

Initializing cgroup subsys cpu

Linux version 3.0.32-yocto-standard (jim@jim-ubuntu-x64) (gcc version 4.6.4
20120303 (prerelease) (GCC) ) #1 SMP PREEMPT Fri Aug 24 13:19:48 EDT 2012

Disabled fast string operations

BIOS-provided physical RAM map:

BIOS-e820: 0000000000000000 - 000000000008f000 (usable)

BIOS-e820: 000000000008f000 - 0000000000090000 (reserved)

BIOS-e820: 0000000000090000 - 000000000009e800 (usable)

BIOS-e820: 000000000009e800 - 00000000000a0000 (reserved)

BIOS-e820: 00000000000e0000 - 0000000000100000 (reserved)

BIOS-e820: 0000000000100000 - 000000007ee95000 (usable)

BIOS-e820: 000000007ee95000 - 000000007eebf000 (reserved)

BIOS-e820: 000000007eebf000 - 000000007eefc000 (usable)

BIOS-e820: 000000007eefc000 - 000000007efbf000 (ACPI NVS)

BIOS-e820: 000000007efbf000 - 000000007efef000 (usable)

BIOS-e820: 000000007efef000 - 000000007efff000 (ACPI data)

BIOS-e820: 000000007efff000 - 000000007f000000 (usable)

BIOS-e820: 000000007f000000 - 0000000080000000 (reserved)

BIOS-e820: 00000000e0000000 - 00000000e4000000 (reserved)

BIOS-e820: 00000000ffe00000 - 0000000100000000 (reserved)

Notice: NX (Execute Disable) protection cannot be enabled: non-PAE kernel!

DMI 2.7 present.

DMI: /DN2800MT, BIOS MTCDT10N.86A.0156.2012.0612.1547 06/12/2012

e820 update range: 0000000000000000 - 0000000000010000 (usable) ==>
(reserved)

e820 remove range: 00000000000a0000 - 0000000000100000 (usable)

last_pfn = 0x7f000 max_arch_pfn = 0x100000

MTRR default type: uncachable

MTRR fixed ranges enabled:

00000-9FFFF write-back

A0000-BFFFF uncachable

C0000-DFFFF write-protect

E0000-FFFFF uncachable

MTRR variable ranges enabled:

0 base 000000000 mask F80000000 write-back

1 base 07F000000 mask FFF000000 uncachable

2 base 0FFE00000 mask FFFE00000 write-protect

3 disabled

4 disabled

5 disabled

6 disabled

x86 PAT enabled: cpu 0, old 0x7040600070406, new 0x7010600070106

found SMP MP-table at [c00fbe40] fbe40

initial memory mapped : 0 - 01c00000

Base memory trampoline at [c009a000] 9a000 size 16384

init_memory_mapping: 0000000000000000-00000000377fe000

0000000000 - 0000400000 page 4k

0000400000 - 0037400000 page 2M

0037400000 - 00377fe000 page 4k

kernel direct mapping tables up to 377fe000 @ 1bfb000-1c00000

RAMDISK: 7e913000 - 7ee94000

Allocated new RAMDISK: 3727d000 - 377fd49d

Move RAMDISK from 000000007e913000 - 000000007ee9349c to 3727d000 - 377fd49c

ACPI: RSDP 000f2390 00024 (v02 INTEL )

ACPI: XSDT 7effe120 00064 (v01 INTEL DN2800MT 0000009C 01000013)

ACPI: FACP 7eff6000 000F4 (v03 INTEL DN2800MT 0000009C MSFT 0100000D)

ACPI: DSDT 7eff8000 05CA6 (v02 INTEL DN2800MT 0000009C MSFT 0100000D)

ACPI: FACS 7ef85000 00040

ACPI: SSDT 7eff7000 0043E (v01 INTEL DN2800MT 0000009C MSFT 0100000D)

ACPI: APIC 7eff5000 00084 (v02 INTEL DN2800MT 0000009C MSFT 0100000D)

ACPI: MCFG 7eff4000 0003C (v01 INTEL DN2800MT 0000009C MSFT 0100000D)

ACPI: HPET 7eff3000 00038 (v01 INTEL DN2800MT 0000009C MSFT 0100000D)

ACPI: SSDT 7eff1000 00655 (v01 PmRef CpuPm 00003000 INTL 20061109)

ACPI: SSDT 7eff0000 00259 (v01 PmRef Cpu0Tst 00003000 INTL 20061109)

ACPI: SSDT 7efef000 0020F (v01 PmRef ApTst 00003000 INTL 20061109)

ACPI: Local APIC address 0xfee00000

1144MB HIGHMEM available.

887MB LOWMEM available.

mapped low ram: 0 - 377fe000

low ram: 0 - 377fe000

Zone PFN ranges:

DMA 0x00000010 -> 0x00001000

Normal 0x00001000 -> 0x000377fe

HighMem 0x000377fe -> 0x0007f000

Movable zone start PFN for each node

early_node_map[6] active PFN ranges

0: 0x00000010 -> 0x0000008f

0: 0x00000090 -> 0x0000009e

0: 0x00000100 -> 0x0007ee95

0: 0x0007eebf -> 0x0007eefc

0: 0x0007efbf -> 0x0007efef

0: 0x0007efff -> 0x0007f000

On node 0 totalpages: 519824

free_area_init_node: node 0, pgdat c1764d80, node_mem_map f629c200

DMA zone: 32 pages used for memmap

DMA zone: 0 pages reserved

DMA zone: 3949 pages, LIFO batch:0

Normal zone: 1744 pages used for memmap

Normal zone: 221486 pages, LIFO batch:31

HighMem zone: 2289 pages used for memmap

HighMem zone: 290324 pages, LIFO batch:31

Using APIC driver default

ACPI: PM-Timer IO Port: 0x408

ACPI: Local APIC address 0xfee00000

ACPI: LAPIC (acpi_id[0x01] lapic_id[0x00] enabled)

ACPI: LAPIC (acpi_id[0x02] lapic_id[0x01] enabled)

ACPI: LAPIC (acpi_id[0x03] lapic_id[0x02] enabled)

ACPI: LAPIC (acpi_id[0x04] lapic_id[0x03] enabled)

ACPI: LAPIC_NMI (acpi_id[0x01] high level lint[0x1])

ACPI: LAPIC_NMI (acpi_id[0x02] high level lint[0x1])

ACPI: LAPIC_NMI (acpi_id[0x03] high level lint[0x1])

ACPI: LAPIC_NMI (acpi_id[0x04] high level lint[0x1])

ACPI: IOAPIC (id[0x08] address[0xfec00000] gsi_base[0])

IOAPIC[0]: apic_id 8, version 32, address 0xfec00000, GSI 0-23

ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)

ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 high level)

ACPI: IRQ0 used by override.

ACPI: IRQ2 used by override.

ACPI: IRQ9 used by override.

Using ACPI (MADT) for SMP configuration information

ACPI: HPET id: 0x8086a201 base: 0xfed00000

SMP: Allowing 4 CPUs, 0 hotplug CPUs

nr_irqs_gsi: 40

Allocating PCI resources starting at 80000000 (gap: 80000000:60000000)

setup_percpu: NR_CPUS:8 nr_cpumask_bits:8 nr_cpu_ids:4 nr_node_ids:1

PERCPU: Embedded 11 pages/cpu @f6264000 s23808 r0 d21248 u45056

pcpu-alloc: s23808 r0 d21248 u45056 alloc=11*4096

pcpu-alloc: [0] 0 [0] 1 [0] 2 [0] 3

Built 1 zonelists in Zone order, mobility grouping on. Total pages: 515759

Kernel command line: initrd=/initrd LABEL=boot root=/dev/ram0
console=ttyS0,115200 console=tty0 BOOT_IMAGE=/vmlinuz

PID hash table entries: 4096 (order: 2, 16384 bytes)

Dentry cache hash table entries: 131072 (order: 7, 524288 bytes)

Inode-cache hash table entries: 65536 (order: 6, 262144 bytes)

Initializing CPU#0

allocated 8322816 bytes of page_cgroup

please try 'cgroup_disable=memory' option if you don't want memory cgroups

Initializing HighMem for node 0 (000377fe:0007f000)

Memory: 2039596k/2080768k available (5160k kernel code, 39700k reserved,
2443k data, 500k init, 1170452k highmem)

virtual kernel memory layout:

fixmap : 0xfff17000 - 0xfffff000 ( 928 kB)

pkmap : 0xff800000 - 0xffc00000 (4096 kB)

vmalloc : 0xf7ffe000 - 0xff7fe000 ( 120 MB)

lowmem : 0xc0000000 - 0xf77fe000 ( 887 MB)

.init : 0xc176d000 - 0xc17ea000 ( 500 kB)

.data : 0xc150a149 - 0xc176ce40 (2443 kB)

.text : 0xc1000000 - 0xc150a149 (5160 kB)

Checking if this processor honours the WP bit even in supervisor mode...Ok.

SLUB: Genslabs=15, HWalign=64, Order=0-3, MinObjects=0, CPUs=4, Nodes=1

Preemptible hierarchical RCU implementation.

NR_IRQS:512

CPU 0 irqstacks, hard=f540e000 soft=f5420000

Extended CMOS year: 2000

Console: colour VGA+ 80x25

console [tty0] enabled

console [ttyS0] enabled

hpet clockevent registered

Fast TSC calibration using PIT

Detected 1866.928 MHz processor.

Calibrating delay loop (skipped), value calculated using timer frequency..
3733.85 BogoMIPS (lpj=7467712)

pid_max: default: 32768 minimum: 301

Security Framework initialized

Mount-cache hash table entries: 512

Initializing cgroup subsys debug

Initializing cgroup subsys cpuacct

Initializing cgroup subsys memory

Initializing cgroup subsys devices

Initializing cgroup subsys freezer

Initializing cgroup subsys blkio

Disabled fast string operations

CPU: Physical Processor ID: 0

CPU: Processor Core ID: 0

using mwait in idle threads.

ACPI: Core revision 20110413

ftrace: allocating 22266 entries in 44 pages

Enabling APIC mode: Flat. Using 1 I/O APICs

..TIMER: vector=0x30 apic1=0 pin1=2 apic2=-1 pin2=-1

CPU0: Intel(R) Atom(TM) CPU N2800 @ 1.86GHz stepping 01

Performance Events: PEBS fmt0+, generic architected perfmon, Intel PMU
driver.

... version: 3

... bit width: 40

... generic registers: 2

... value mask: 000000ffffffffff

... max period: 000000007fffffff

... fixed-purpose events: 3

... event mask: 0000000700000003

CPU 1 irqstacks, hard=f54ba000 soft=f54bc000

Booting Node 0, Processors #1

smpboot cpu 1: start_ip = 9a000

Initializing CPU#1

Disabled fast string operations

CPU 2 irqstacks, hard=f54c6000 soft=f54c8000

#2

smpboot cpu 2: start_ip = 9a000

Initializing CPU#2

Disabled fast string operations

CPU 3 irqstacks, hard=f54d2000 soft=f54d4000

#3 Ok.

smpboot cpu 3: start_ip = 9a000

Initializing CPU#3

Disabled fast string operations

Brought up 4 CPUs

Total of 4 processors activated (14933.91 BogoMIPS).

devtmpfs: initialized

NET: Registered protocol family 16

ACPI FADT declares the system doesn't support PCIe ASPM, so disable it

ACPI: bus type pci registered

PCI: MMCONFIG for domain 0000 [bus 00-3f] at [mem 0xe0000000-0xe3ffffff]
(base 0xe0000000)

PCI: MMCONFIG at [mem 0xe0000000-0xe3ffffff] reserved in E820

PCI: Using MMCONFIG for extended config space

PCI: Using configuration type 1 for base access

bio: create slab <bio-0> at 0

ACPI: EC: Look up EC in DSDT

ACPI: Executed 1 blocks of module-level executable AML code

[Firmware Bug]: ACPI: BIOS _OSI(Linux) query ignored

ACPI: SSDT 7eebec18 002A7 (v01 PmRef Cpu0Ist 00003000 INTL 20061109)

ACPI: Dynamic OEM Table Load:

ACPI: SSDT (null) 002A7 (v01 PmRef Cpu0Ist 00003000 INTL 20061109)

ACPI: SSDT 7eebde18 001CF (v01 PmRef ApIst 00003000 INTL 20061109)

ACPI: Dynamic OEM Table Load:

ACPI: SSDT (null) 001CF (v01 PmRef ApIst 00003000 INTL 20061109)

ACPI: Interpreter enabled

ACPI: (supports S0 S3 S5)

ACPI: Using IOAPIC for interrupt routing

PCI: Using host bridge windows from ACPI; if necessary, use "pci=nocrs" and
report a bug

\_SB_.PCI0:_OSC invalid UUID

_OSC request data:1 8 1f

ACPI: PCI Root Bridge [PCI0] (domain 0000 [bus 00-ff])

pci_root PNP0A08:00: host bridge window [io 0x0000-0x0cf7]

pci_root PNP0A08:00: host bridge window [io 0x0d00-0xffff]

pci_root PNP0A08:00: host bridge window [mem 0x000a0000-0x000bffff]

pci_root PNP0A08:00: host bridge window [mem 0x000c0000-0x000dffff]

pci_root PNP0A08:00: host bridge window [mem 0x000e0000-0x000effff]

pci_root PNP0A08:00: host bridge window [mem 0x000f0000-0x000fffff]

pci_root PNP0A08:00: host bridge window [mem 0x7f800000-0x7fffffff]

pci_root PNP0A08:00: host bridge window [mem 0x80000000-0xfebfffff]

pci_root PNP0A08:00: host bridge window [mem 0xfed40000-0xfed44fff]

pci 0000:00:00.0: [8086:0bf2] type 0 class 0x000600

pci 0000:00:02.0: [8086:0be2] type 0 class 0x000300

pci 0000:00:02.0: reg 10: [mem 0x80600000-0x806fffff]

pci 0000:00:02.0: reg 14: [io 0x40d0-0x40d7]

pci 0000:00:1b.0: [8086:27d8] type 0 class 0x000403

pci 0000:00:1b.0: reg 10: [mem 0x80800000-0x80803fff 64bit]

pci 0000:00:1b.0: PME# supported from D0 D3hot D3cold

pci 0000:00:1b.0: PME# disabled

pci 0000:00:1c.0: [8086:27d0] type 1 class 0x000604

pci 0000:00:1c.0: PME# supported from D0 D3hot D3cold

pci 0000:00:1c.0: PME# disabled

pci 0000:00:1c.3: [8086:27d6] type 1 class 0x000604

pci 0000:00:1c.3: PME# supported from D0 D3hot D3cold

pci 0000:00:1c.3: PME# disabled

pci 0000:00:1d.0: [8086:27c8] type 0 class 0x000c03

pci 0000:00:1d.0: reg 20: [io 0x40a0-0x40bf]

pci 0000:00:1d.1: [8086:27c9] type 0 class 0x000c03

pci 0000:00:1d.1: reg 20: [io 0x4080-0x409f]

pci 0000:00:1d.2: [8086:27ca] type 0 class 0x000c03

pci 0000:00:1d.2: reg 20: [io 0x4060-0x407f]

pci 0000:00:1d.3: [8086:27cb] type 0 class 0x000c03

pci 0000:00:1d.3: reg 20: [io 0x4040-0x405f]

pci 0000:00:1d.7: [8086:27cc] type 0 class 0x000c03

pci 0000:00:1d.7: reg 10: [mem 0x80704400-0x807047ff]

pci 0000:00:1d.7: PME# supported from D0 D3hot D3cold

pci 0000:00:1d.7: PME# disabled

pci 0000:00:1e.0: [8086:2448] type 1 class 0x000604

pci 0000:00:1f.0: [8086:27bc] type 0 class 0x000601

pci 0000:00:1f.0: [Firmware Bug]: TigerPoint LPC.BM_STS cleared

pci 0000:00:1f.2: [8086:27c1] type 0 class 0x000106

pci 0000:00:1f.2: reg 10: [io 0x40c8-0x40cf]

pci 0000:00:1f.2: reg 14: [io 0x40dc-0x40df]

pci 0000:00:1f.2: reg 18: [io 0x40c0-0x40c7]

pci 0000:00:1f.2: reg 1c: [io 0x40d8-0x40db]

pci 0000:00:1f.2: reg 20: [io 0x4020-0x402f]

pci 0000:00:1f.2: reg 24: [mem 0x80704000-0x807043ff]

pci 0000:00:1f.2: PME# supported from D3hot

pci 0000:00:1f.2: PME# disabled

pci 0000:00:1f.3: [8086:27da] type 0 class 0x000c05

pci 0000:00:1f.3: reg 20: [io 0x4000-0x401f]

pci 0000:01:00.0: [8086:10d3] type 0 class 0x000200

pci 0000:01:00.0: reg 10: [mem 0x80400000-0x8041ffff]

pci 0000:01:00.0: reg 14: [mem 0x80000000-0x803fffff]

pci 0000:01:00.0: reg 18: [io 0x3000-0x301f]

pci 0000:01:00.0: reg 1c: [mem 0x80420000-0x80423fff]

pci 0000:01:00.0: PME# supported from D0 D3hot D3cold

pci 0000:01:00.0: PME# disabled

pci 0000:00:1c.0: PCI bridge to [bus 01-01]

pci 0000:00:1c.0: bridge window [io 0x3000-0x3fff]

pci 0000:00:1c.0: bridge window [mem 0x80000000-0x804fffff]

pci 0000:00:1c.0: bridge window [mem 0xfff00000-0x000fffff pref] (disabled)

pci 0000:02:00.0: [10ec:8176] type 0 class 0x000280

pci 0000:02:00.0: reg 10: [io 0x2000-0x20ff]

pci 0000:02:00.0: reg 18: [mem 0x80500000-0x80503fff 64bit]

pci 0000:02:00.0: supports D1 D2

pci 0000:02:00.0: PME# supported from D0 D1 D2 D3hot D3cold

pci 0000:02:00.0: PME# disabled

pci 0000:00:1c.3: PCI bridge to [bus 02-02]

pci 0000:00:1c.3: bridge window [io 0x2000-0x2fff]

pci 0000:00:1c.3: bridge window [mem 0x80500000-0x805fffff]

pci 0000:00:1c.3: bridge window [mem 0xfff00000-0x000fffff pref] (disabled)

pci 0000:00:1e.0: PCI bridge to [bus 03-03] (subtractive decode)

pci 0000:00:1e.0: bridge window [io 0xf000-0x0000] (disabled)

pci 0000:00:1e.0: bridge window [mem 0xfff00000-0x000fffff] (disabled)

pci 0000:00:1e.0: bridge window [mem 0xfff00000-0x000fffff pref] (disabled)

pci 0000:00:1e.0: bridge window [io 0x0000-0x0cf7] (subtractive decode)

pci 0000:00:1e.0: bridge window [io 0x0d00-0xffff] (subtractive decode)

pci 0000:00:1e.0: bridge window [mem 0x000a0000-0x000bffff] (subtractive
decode)

pci 0000:00:1e.0: bridge window [mem 0x000c0000-0x000dffff] (subtractive
decode)

pci 0000:00:1e.0: bridge window [mem 0x000e0000-0x000effff] (subtractive
decode)

pci 0000:00:1e.0: bridge window [mem 0x000f0000-0x000fffff] (subtractive
decode)

pci 0000:00:1e.0: bridge window [mem 0x7f800000-0x7fffffff] (subtractive
decode)

pci 0000:00:1e.0: bridge window [mem 0x80000000-0xfebfffff] (subtractive
decode)

pci 0000:00:1e.0: bridge window [mem 0xfed40000-0xfed44fff] (subtractive
decode)

pci_bus 0000:00: on NUMA node 0

ACPI: PCI Interrupt Routing Table [\_SB_.PCI0._PRT]

ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.P0P1._PRT]

ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP01._PRT]

ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP04._PRT]

\_SB_.PCI0:_OSC invalid UUID

_OSC request data:1 f 1f

pci0000:00: Unable to request _OSC control (_OSC support mask: 0x0f)

ACPI: PCI Interrupt Link [LNKA] (IRQs 1 3 4 5 6 7 10 12 14 15) *11

ACPI: PCI Interrupt Link [LNKB] (IRQs 1 3 4 5 6 7 11 12 14 15) *0, disabled.

ACPI: PCI Interrupt Link [LNKC] (IRQs 1 3 4 5 6 7 10 12 14 15) *9

ACPI: PCI Interrupt Link [LNKD] (IRQs 1 3 4 5 6 7 11 12 14 15) *10

ACPI: PCI Interrupt Link [LNKE] (IRQs 1 3 4 5 6 7 10 12 14 15) *0, disabled.

ACPI: PCI Interrupt Link [LNKF] (IRQs 1 3 4 5 6 7 11 12 14 15) *0, disabled.

ACPI: PCI Interrupt Link [LNKG] (IRQs 1 3 4 5 6 7 10 12 14 15) *9

ACPI: PCI Interrupt Link [LNKH] (IRQs 1 3 4 5 6 7 *11 12 14 15)

vgaarb: device added: PCI:0000:00:02.0,decodes=io+mem,owns=io+mem,locks=none

vgaarb: loaded

vgaarb: bridge control possible 0000:00:02.0

SCSI subsystem initialized

libata version 3.00 loaded.

usbcore: registered new interface driver usbfs

usbcore: registered new interface driver hub

usbcore: registered new device driver usb

Advanced Linux Sound Architecture Driver Version 1.0.24.

PCI: Using ACPI for IRQ routing

PCI: pci_cache_line_size set to 64 bytes

reserve RAM buffer: 000000000008f000 - 000000000008ffff

reserve RAM buffer: 000000000009e800 - 000000000009ffff

reserve RAM buffer: 000000007ee95000 - 000000007fffffff

reserve RAM buffer: 000000007eefc000 - 000000007fffffff

reserve RAM buffer: 000000007efef000 - 000000007fffffff

reserve RAM buffer: 000000007f000000 - 000000007fffffff

hpet0: at MMIO 0xfed00000, IRQs 2, 8, 0

hpet0: 3 comparators, 64-bit 14.318180 MHz counter

Switching to clocksource hpet

Switched to NOHz mode on CPU #3

Switched to NOHz mode on CPU #2

Switched to NOHz mode on CPU #1

Switched to NOHz mode on CPU #0

pnp: PnP ACPI init

ACPI: bus type pnp registered

pnp 00:00: [bus 00-ff]

pnp 00:00: [io 0x0000-0x0cf7 window]

pnp 00:00: [io 0x0cf8-0x0cff]

pnp 00:00: [io 0x0d00-0xffff window]

pnp 00:00: [mem 0x000a0000-0x000bffff window]

pnp 00:00: [mem 0x000c0000-0x000dffff window]

pnp 00:00: [mem 0x000e0000-0x000effff window]

pnp 00:00: [mem 0x000f0000-0x000fffff window]

pnp 00:00: [mem 0x7f800000-0x7fffffff window]

pnp 00:00: [mem 0x80000000-0xfebfffff window]

pnp 00:00: [mem 0xfed40000-0xfed44fff window]

pnp 00:00: Plug and Play ACPI device, IDs PNP0a08 PNP0a03 (active)

pnp 00:01: [io 0x0000-0x001f]

pnp 00:01: [io 0x0081-0x0091]

pnp 00:01: [io 0x0093-0x009f]

pnp 00:01: [io 0x00c0-0x00df]

pnp 00:01: [dma 4]

pnp 00:01: Plug and Play ACPI device, IDs PNP0200 (active)

pnp 00:02: [mem 0xff000000-0xffffffff]

pnp 00:02: Plug and Play ACPI device, IDs INT0800 (active)

pnp 00:03: [mem 0xfed00000-0xfed003ff]

system 00:03: [mem 0xfed00000-0xfed003ff] has been reserved

system 00:03: Plug and Play ACPI device, IDs PNP0103 PNP0c01 (active)

pnp 00:04: [io 0x00f0]

pnp 00:04: [irq 13]

pnp 00:04: Plug and Play ACPI device, IDs PNP0c04 (active)

pnp 00:05: [io 0x002e-0x002f]

pnp 00:05: [io 0x004e-0x004f]

pnp 00:05: [io 0x0061]

pnp 00:05: [io 0x0063]

pnp 00:05: [io 0x0065]

pnp 00:05: [io 0x0067]

pnp 00:05: [io 0x0070]

pnp 00:05: [io 0x0080]

pnp 00:05: [io 0x0092]

pnp 00:05: [io 0x00b2-0x00b3]

pnp 00:05: [io 0x0680-0x069f]

pnp 00:05: [io 0x1000-0x100f]

pnp 00:05: [io 0xffff]

pnp 00:05: [io 0xffff]

pnp 00:05: [io 0x0400-0x047f]

pnp 00:05: [io 0x0500-0x057f]

pnp 00:05: [io 0x0600-0x061f]

system 00:05: [io 0x0680-0x069f] has been reserved

system 00:05: [io 0x1000-0x100f] has been reserved

system 00:05: [io 0xffff] has been reserved

system 00:05: [io 0xffff] has been reserved

system 00:05: [io 0x0400-0x047f] has been reserved

system 00:05: [io 0x0500-0x057f] has been reserved

system 00:05: [io 0x0600-0x061f] has been reserved

system 00:05: Plug and Play ACPI device, IDs PNP0c02 (active)

pnp 00:06: [io 0x06a0-0x06af]

pnp 00:06: [io 0x06b0-0x06ff]

system 00:06: [io 0x06a0-0x06af] has been reserved

system 00:06: [io 0x06b0-0x06ff] has been reserved

system 00:06: Plug and Play ACPI device, IDs PNP0c02 (active)

pnp 00:07: [io 0x0070-0x0077]

pnp 00:07: [irq 8]

pnp 00:07: Plug and Play ACPI device, IDs PNP0b00 (active)

pnp 00:08: [io 0x0378-0x037f]

pnp 00:08: [irq 7]

pnp 00:08: Plug and Play ACPI device, IDs PNP0400 (active)

pnp 00:09: [io 0x02f8-0x02ff]

pnp 00:09: [irq 3]

pnp 00:09: Plug and Play ACPI device, IDs PNP0501 (active)

pnp 00:0a: [io 0x03f8-0x03ff]

pnp 00:0a: [irq 4]

pnp 00:0a: Plug and Play ACPI device, IDs PNP0501 (active)

pnp 00:0b: [mem 0xfed1c000-0xfed1ffff]

pnp 00:0b: [mem 0x00000000-0x00003fff]

pnp 00:0b: [mem 0x00000000-0x00000fff]

pnp 00:0b: [mem 0x00000000-0x00000fff]

pnp 00:0b: [mem 0x00000000-0xffffffff disabled]

pnp 00:0b: [mem 0xfed45000-0xfed8ffff]

system 00:0b: [mem 0xfed1c000-0xfed1ffff] has been reserved

system 00:0b: [mem 0x00000000-0x00003fff] could not be reserved

system 00:0b: [mem 0x00000000-0x00000fff] could not be reserved

system 00:0b: [mem 0x00000000-0x00000fff] could not be reserved

system 00:0b: [mem 0xfed45000-0xfed8ffff] has been reserved

system 00:0b: Plug and Play ACPI device, IDs PNP0c02 (active)

pnp: PnP ACPI: found 12 devices

ACPI: ACPI bus type pnp unregistered

PCI: max bus depth: 1 pci_try_num: 2

pci 0000:00:1c.3: BAR 9: assigned [mem 0x80900000-0x80afffff 64bit pref]

pci 0000:00:1c.0: BAR 9: assigned [mem 0x80b00000-0x80cfffff 64bit pref]

pci 0000:00:1c.0: PCI bridge to [bus 01-01]

pci 0000:00:1c.0: bridge window [io 0x3000-0x3fff]

pci 0000:00:1c.0: bridge window [mem 0x80000000-0x804fffff]

pci 0000:00:1c.0: bridge window [mem 0x80b00000-0x80cfffff 64bit pref]

pci 0000:00:1c.3: PCI bridge to [bus 02-02]

pci 0000:00:1c.3: bridge window [io 0x2000-0x2fff]

pci 0000:00:1c.3: bridge window [mem 0x80500000-0x805fffff]

pci 0000:00:1c.3: bridge window [mem 0x80900000-0x80afffff 64bit pref]

pci 0000:00:1e.0: PCI bridge to [bus 03-03]

pci 0000:00:1e.0: bridge window [io disabled]

pci 0000:00:1e.0: bridge window [mem disabled]

pci 0000:00:1e.0: bridge window [mem pref disabled]

pci 0000:00:1c.0: PCI INT A -> GSI 16 (level, low) -> IRQ 16

pci 0000:00:1c.0: setting latency timer to 64

pci 0000:00:1c.3: PCI INT D -> GSI 19 (level, low) -> IRQ 19

pci 0000:00:1c.3: setting latency timer to 64

pci 0000:00:1e.0: setting latency timer to 64

pci_bus 0000:00: resource 4 [io 0x0000-0x0cf7]

pci_bus 0000:00: resource 5 [io 0x0d00-0xffff]

pci_bus 0000:00: resource 6 [mem 0x000a0000-0x000bffff]

pci_bus 0000:00: resource 7 [mem 0x000c0000-0x000dffff]

pci_bus 0000:00: resource 8 [mem 0x000e0000-0x000effff]

pci_bus 0000:00: resource 9 [mem 0x000f0000-0x000fffff]

pci_bus 0000:00: resource 10 [mem 0x7f800000-0x7fffffff]

pci_bus 0000:00: resource 11 [mem 0x80000000-0xfebfffff]

pci_bus 0000:00: resource 12 [mem 0xfed40000-0xfed44fff]

pci_bus 0000:01: resource 0 [io 0x3000-0x3fff]

pci_bus 0000:01: resource 1 [mem 0x80000000-0x804fffff]

pci_bus 0000:01: resource 2 [mem 0x80b00000-0x80cfffff 64bit pref]

pci_bus 0000:02: resource 0 [io 0x2000-0x2fff]

pci_bus 0000:02: resource 1 [mem 0x80500000-0x805fffff]

pci_bus 0000:02: resource 2 [mem 0x80900000-0x80afffff 64bit pref]

pci_bus 0000:03: resource 4 [io 0x0000-0x0cf7]

pci_bus 0000:03: resource 5 [io 0x0d00-0xffff]

pci_bus 0000:03: resource 6 [mem 0x000a0000-0x000bffff]

pci_bus 0000:03: resource 7 [mem 0x000c0000-0x000dffff]

pci_bus 0000:03: resource 8 [mem 0x000e0000-0x000effff]

pci_bus 0000:03: resource 9 [mem 0x000f0000-0x000fffff]

pci_bus 0000:03: resource 10 [mem 0x7f800000-0x7fffffff]

pci_bus 0000:03: resource 11 [mem 0x80000000-0xfebfffff]

pci_bus 0000:03: resource 12 [mem 0xfed40000-0xfed44fff]

NET: Registered protocol family 2

IP route cache hash table entries: 32768 (order: 5, 131072 bytes)

TCP established hash table entries: 131072 (order: 8, 1048576 bytes)

TCP bind hash table entries: 65536 (order: 7, 524288 bytes)

TCP: Hash tables configured (established 131072 bind 65536)

TCP reno registered

UDP hash table entries: 512 (order: 2, 16384 bytes)

UDP-Lite hash table entries: 512 (order: 2, 16384 bytes)

NET: Registered protocol family 1

RPC: Registered named UNIX socket transport module.

RPC: Registered udp transport module.

RPC: Registered tcp transport module.

RPC: Registered tcp NFSv4.1 backchannel transport module.

pci 0000:00:02.0: Boot video device

pci 0000:00:1d.0: PCI INT A -> GSI 23 (level, low) -> IRQ 23

pci 0000:00:1d.0: PCI INT A disabled

pci 0000:00:1d.1: PCI INT B -> GSI 19 (level, low) -> IRQ 19

pci 0000:00:1d.1: PCI INT B disabled

pci 0000:00:1d.2: PCI INT C -> GSI 18 (level, low) -> IRQ 18

pci 0000:00:1d.2: PCI INT C disabled

pci 0000:00:1d.3: PCI INT D -> GSI 16 (level, low) -> IRQ 16

pci 0000:00:1d.3: PCI INT D disabled

pci 0000:00:1d.7: PCI INT A -> GSI 23 (level, low) -> IRQ 23

pci 0000:00:1d.7: PCI INT A disabled

PCI: CLS 64 bytes, default 64

Trying to unpack rootfs image as initramfs...

Freeing initrd memory: 5636k freed

highmem bounce pool size: 64 pages

VFS: Disk quotas dquot_6.5.2

Dquot-cache hash table entries: 1024 (order 0, 4096 bytes)

msgmni has been set to 1708

Block layer SCSI generic (bsg) driver version 0.4 loaded (major 253)

io scheduler noop registered

io scheduler deadline registered

io scheduler cfq registered (default)

pcieport 0000:00:1c.0: setting latency timer to 64

pcieport 0000:00:1c.3: setting latency timer to 64

intel_idle: MWAIT substates: 0x3020220

intel_idle: does not run on family 6 model 54

input: Power Button as
/devices/LNXSYSTM:00/device:00/PNP0C0C:00/input/input0

ACPI: Power Button [PWRB]

input: Sleep Button as
/devices/LNXSYSTM:00/device:00/PNP0C0E:00/input/input1

ACPI: Sleep Button [SLPB]

input: Power Button as /devices/LNXSYSTM:00/LNXPWRBN:00/input/input2

ACPI: Power Button [PWRF]

ACPI: acpi_idle registered with cpuidle

Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled

serial8250: ttyS0 at I/O 0x3f8 (irq = 4) is a 16550A

serial8250: ttyS1 at I/O 0x2f8 (irq = 3) is a 16550A

00:09: ttyS1 at I/O 0x2f8 (irq = 3) is a 16550A

00:0a: ttyS0 at I/O 0x3f8 (irq = 4) is a 16550A

Linux agpgart interface v0.103

[drm] Initialized drm 1.1.0 20060810

brd: module loaded

loop: module loaded

ahci 0000:00:1f.2: version 3.0

ahci 0000:00:1f.2: PCI INT B -> GSI 19 (level, low) -> IRQ 19

ahci: SSS flag set, parallel bus scan disabled

ahci 0000:00:1f.2: AHCI 0001.0100 32 slots 4 ports 3 Gbps 0x3 impl SATA mode

ahci 0000:00:1f.2: flags: 64bit ncq stag pm led clo pio slum part

ahci 0000:00:1f.2: setting latency timer to 64

scsi0 : ahci

scsi1 : ahci

scsi2 : ahci

scsi3 : ahci

ata1: SATA max UDMA/133 abar m1024@0x80704000 port 0x80704100 irq 19

ata2: SATA max UDMA/133 abar m1024@0x80704000 port 0x80704180 irq 19

ata3: DUMMY

ata4: DUMMY

e1000: Intel(R) PRO/1000 Network Driver - version 7.3.21-k8-NAPI

e1000: Copyright (c) 1999-2006 Intel Corporation.

e1000e: Intel(R) PRO/1000 Network Driver - 1.3.10-k2

e1000e: Copyright(c) 1999 - 2011 Intel Corporation.

e1000e 0000:01:00.0: Disabling ASPM L0s

e1000e 0000:01:00.0: PCI INT A -> GSI 16 (level, low) -> IRQ 16

e1000e 0000:01:00.0: setting latency timer to 64

e1000e 0000:01:00.0: (unregistered net_device): Failed to initialize MSI-X
interrupts. Falling back to MSI interrupts.

e1000e 0000:01:00.0: (unregistered net_device): Failed to initialize MSI
interrupts. Falling back to legacy interrupts.

e1000e 0000:01:00.0: eth0: (PCI Express:2.5GT/s:Width x1) 00:22:4d:80:36:1f

e1000e 0000:01:00.0: eth0: Intel(R) PRO/1000 Network Connection

e1000e 0000:01:00.0: eth0: MAC: 3, PHY: 8, PBA No: FFFFFF-0FF

e100: Intel(R) PRO/100 Network Driver, 3.5.24-k2-NAPI

e100: Copyright(c) 1999-2006 Intel Corporation

console [netcon0] enabled

netconsole: network logging started

ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver

ehci_hcd 0000:00:1d.7: PCI INT A -> GSI 23 (level, low) -> IRQ 23

ehci_hcd 0000:00:1d.7: setting latency timer to 64

ehci_hcd 0000:00:1d.7: EHCI Host Controller

ehci_hcd 0000:00:1d.7: new USB bus registered, assigned bus number 1

ehci_hcd 0000:00:1d.7: using broken periodic workaround

ehci_hcd 0000:00:1d.7: debug port 1

ehci_hcd 0000:00:1d.7: cache line size of 64 is not supported

ehci_hcd 0000:00:1d.7: irq 23, io mem 0x80704400

ehci_hcd 0000:00:1d.7: USB 2.0 started, EHCI 1.00

hub 1-0:1.0: USB hub found

hub 1-0:1.0: 8 ports detected

ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver

uhci_hcd: USB Universal Host Controller Interface driver

uhci_hcd 0000:00:1d.0: PCI INT A -> GSI 23 (level, low) -> IRQ 23

uhci_hcd 0000:00:1d.0: setting latency timer to 64

uhci_hcd 0000:00:1d.0: UHCI Host Controller

uhci_hcd 0000:00:1d.0: new USB bus registered, assigned bus number 2

uhci_hcd 0000:00:1d.0: irq 23, io base 0x000040a0

hub 2-0:1.0: USB hub found

hub 2-0:1.0: 2 ports detected

uhci_hcd 0000:00:1d.1: PCI INT B -> GSI 19 (level, low) -> IRQ 19

uhci_hcd 0000:00:1d.1: setting latency timer to 64

uhci_hcd 0000:00:1d.1: UHCI Host Controller

uhci_hcd 0000:00:1d.1: new USB bus registered, assigned bus number 3

uhci_hcd 0000:00:1d.1: irq 19, io base 0x00004080

hub 3-0:1.0: USB hub found

hub 3-0:1.0: 2 ports detected

ata1: SATA link down (SStatus 0 SControl 300)

uhci_hcd 0000:00:1d.2: PCI INT C -> GSI 18 (level, low) -> IRQ 18

uhci_hcd 0000:00:1d.2: setting latency timer to 64

uhci_hcd 0000:00:1d.2: UHCI Host Controller

uhci_hcd 0000:00:1d.2: new USB bus registered, assigned bus number 4

uhci_hcd 0000:00:1d.2: irq 18, io base 0x00004060

hub 4-0:1.0: USB hub found

hub 4-0:1.0: 2 ports detected

uhci_hcd 0000:00:1d.3: PCI INT D -> GSI 16 (level, low) -> IRQ 16

uhci_hcd 0000:00:1d.3: setting latency timer to 64

uhci_hcd 0000:00:1d.3: UHCI Host Controller

uhci_hcd 0000:00:1d.3: new USB bus registered, assigned bus number 5

uhci_hcd 0000:00:1d.3: irq 16, io base 0x00004040

hub 5-0:1.0: USB hub found

hub 5-0:1.0: 2 ports detected

Refined TSC clocksource calibration: 1866.732 MHz.

Switching to clocksource tsc

Initializing USB Mass Storage driver...

usbcore: registered new interface driver usb-storage

USB Mass Storage support registered.

i8042: PNP: No PS/2 controller found. Probing ports directly.

serio: i8042 KBD port at 0x60,0x64 irq 1

serio: i8042 AUX port at 0x60,0x64 irq 12

mousedev: PS/2 mouse device common for all mice

rtc_cmos 00:07: RTC can wake from S4

rtc_cmos 00:07: rtc core: registered rtc_cmos as rtc0

rtc0: alarms up to one month, y3k, 242 bytes nvram, hpet irqs

md: linear personality registered for level -1

md: raid0 personality registered for level 0

md: raid1 personality registered for level 1

md: raid10 personality registered for level 10

md: multipath personality registered for level -4

md: faulty personality registered for level -5

device-mapper: ioctl: 4.20.0-ioctl (2011-02-02) initialised:
dm-devel@redhat.com

cpuidle: using governor ladder

cpuidle: using governor menu

sdhci: Secure Digital Host Controller Interface driver

sdhci: Copyright(c) Pierre Ossman

EFI Variables Facility v0.08 2004-May-17

usbcore: registered new interface driver usbhid

usbhid: USB HID core driver

HDA Intel 0000:00:1b.0: PCI INT A -> GSI 22 (level, low) -> IRQ 22

HDA Intel 0000:00:1b.0: setting latency timer to 64

HDMI status: Pin=3 Presence_Detect=0 ELD_Valid=0

hda_codec: ALC888-VD: BIOS auto-probing.

ALSA device list:

#0: HDA Intel at 0x80800000 irq 22

oprofile: using NMI interrupt.

TCP cubic registered

NET: Registered protocol family 17

Registering the dns_resolver key type

Using IPI No-Shortcut mode

registered taskstats version 1

rtc_cmos 00:07: setting system clock to 2012-08-29 12:44:16 UTC (1346244256)

pvrsrvkm 0000:00:02.0: PCI INT A -> GSI 16 (level, low) -> IRQ 16

pvrsrvkm 0000:00:02.0: setting latency timer to 64

[TTM] Zone kernel: Available graphics memory: 437390 kiB.

[TTM] Zone highmem: Available graphics memory: 1022616 kiB.

[TTM] Initializing pool allocator.

[drm:psb_driver_load] *ERROR* Enable MSI failed!

[drm] Supports vblank timestamp caching Rev 1 (10.10.2010).

[drm] No driver support for vblank timestamp query.

ACPI Warning: _BQC returned an invalid level (20110413/video-473)

ata2: SATA link down (SStatus 0 SControl 300)

acpi device:31: registered as cooling_device4

input: Video Bus as
/devices/LNXSYSTM:00/device:00/PNP0A08:00/LNXVIDEO:00/input/input3

ACPI: Video Device [GFX0] (multi-head: yes rom: no post: no)

usb 1-5: new high speed USB device number 3 using ehci_hcd

scsi4 : usb-storage 1-5:1.0

Overlay GTT address is 7c0000

usb 1-8: new high speed USB device number 4 using ehci_hcd

hub 1-8:1.0: USB hub found

hub 1-8:1.0: 4 ports detected

usb 3-1: new full speed USB device number 2 using uhci_hcd

hub 3-1:1.0: USB hub found

hub 3-1:1.0: 3 ports detected

usb 1-8.3: new high speed USB device number 5 using ehci_hcd

scsi 4:0:0:0: Direct-Access OCZ ATV_TURBO 1100 PQ: 0 ANSI: 0 CCS

sd 4:0:0:0: Attached scsi generic sg0 type 0

sd 4:0:0:0: [sda] 8028160 512-byte logical blocks: (4.11 GB/3.82 GiB)

sd 4:0:0:0: [sda] Write Protect is off

sd 4:0:0:0: [sda] Mode Sense: 43 00 00 00

sd 4:0:0:0: [sda] No Caching mode page present

sd 4:0:0:0: [sda] Assuming drive cache: write through

sd 4:0:0:0: [sda] No Caching mode page present

sd 4:0:0:0: [sda] Assuming drive cache: write through

sda: sda4

sd 4:0:0:0: [sda] No Caching mode page present

sd 4:0:0:0: [sda] Assuming drive cache: write through

sd 4:0:0:0: [sda] Attached SCSI removable disk

usb 3-1.1: new full speed USB device number 3 using uhci_hcd

input: Dell Dell USB Keyboard Hub as
/devices/pci0000:00/0000:00:1d.1/usb3/3-1/3-1.1/3-1.1:1.0/input/input4

generic-usb 0003:413C:2002.0001: input: USB HID v1.10 Keyboard [Dell Dell
USB Keyboard Hub] on usb-0000:00:1d.1-1.1/input0

input: Dell Dell USB Keyboard Hub as
/devices/pci0000:00/0000:00:1d.1/usb3/3-1/3-1.1/3-1.1:1.1/input/input5

generic-usb 0003:413C:2002.0002: input: USB HID v1.10 Device [Dell Dell USB
Keyboard Hub] on usb-0000:00:1d.1-1.1/input1

usb 3-1.3: new low speed USB device number 4 using uhci_hcd

fbcon: psbfb (fb0) is primary device

input: Microsoft Microsoft Notebook Receiver v2.0 as
/devices/pci0000:00/0000:00:1d.1/usb3/3-1/3-1.3/3-1.3:1.0/input/input6

generic-usb 0003:045E:00E1.0003: input: USB HID v1.11 Mouse [Microsoft
Microsoft Notebook Receiver v2.0] on usb-0000:00:1d.1-1.3/input0

Console: switching to colour frame buffer device 170x48

fb0: psbfb frame buffer device

drm: registered panic notifier

Cedartrail: apply sample cache workaround

Device ID: 2

[drm] Initialized pvrsrvkm 8.1.0 2009-03-10 for 0000:00:02.0 on minor 0

Freeing unused kernel memory: 500k freed

udev[60]: starting version 164

EXT3-fs: barriers not enabled

kjournald starting. Commit interval 5 seconds

EXT3-fs (loop0): using internal journal

EXT3-fs (loop0): mounted filesystem with ordered data mode

udev[502]: starting version 164

cfg80211: Calling CRDA to update world regulatory domain

rtl8192ce 0000:02:00.0: PCI INT A -> GSI 19 (level, low) -> IRQ 19

rtl8192ce 0000:02:00.0: setting latency timer to 64

rtl8192ce:rtl92c_init_sw_vars():<0-0> Failed to request firmware!

rtlwifi:rtl_pci_probe():<0-0> Can't init_sw_vars.

rtl8192ce 0000:02:00.0: PCI INT A disabled

NET: Registered protocol family 10

ADDRCONF(NETDEV_UP): eth0: link is not ready

e1000e: eth0 NIC Link is Up 1000 Mbps Full Duplex, Flow Control: Rx/Tx

ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready

ip_tables: (C) 2000-2006 Netfilter Core Team

nf_conntrack version 0.5.0 (16384 buckets, 65536 max)

eth0: no IPv6 routers present


> Ross
>

--14dae939994fff815304c86706e8
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br>
<div class=3D"gmail_quote">On Wed, Aug 29, 2012 at 7:46 AM, Burton, Ross <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_bla=
nk">ross.burton@intel.com</a>&gt;</span> wrote:<br>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote">
<div class=3D"im">On 24 August 2012 19:36, Jim Abernathy &lt;<a href=3D"mai=
lto:jfabernathy@gmail.com">jfabernathy@gmail.com</a>&gt; wrote:<br>&gt; On =
08/24/2012 02:23 PM, Ross Burton wrote:<br>&gt; See the linux-firmware pack=
ages. There are a few split out sub packages, and<br>
&gt; then linux-firmware contains the rest.<br>&gt;<br>&gt; I see the rtl81=
92 firmware included in the linux-firmware recipe, but not<br>&gt; sure if =
there is a step to force a load of the firmware.<br><br></div>Whoops, accid=
entally took this off-list by using my phone.<br>
<br>If this is still broken, can you attach the output of dmesg, ifconfig<b=
r>and iwconfig on a fresh boot?<br><span class=3D"HOEnZb"><font color=3D"#8=
88888">ifconfig<br></font></span></blockquote>
<div>=A0</div>
<div>I&#39;m still having issues with WiFi.</div>
<div>iwconfig yields:</div>
<div>lo=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 no wireless extensions</div>
<div>eth0=A0=A0=A0=A0=A0=A0=A0=A0 no wireless extensions</div>
<div>=A0</div>
<div>ifconfig yields:</div>
<div><span lang=3D"EN">
<p>eth0 Link encap:Ethernet HWaddr 00:22:4D:80:36:1F </p>
<p>inet addr:10.0.1.57 Bcast:0.0.0.0 Mask:255.255.255.0</p>
<p>inet6 addr: fe80::222:4dff:fe80:361f/64 Scope:Link</p>
<p>UP BROADCAST RUNNING MULTICAST MTU:1500 Metric:1</p>
<p>RX packets:34 errors:0 dropped:0 overruns:0 frame:0</p>
<p>TX packets:50 errors:0 dropped:0 overruns:0 carrier:0</p>
<p>collisions:0 txqueuelen:1000 </p>
<p>RX bytes:6478 (6.3 KiB) TX bytes:9592 (9.3 KiB)</p>
<p>Interrupt:16 Memory:80400000-80420000 </p>
<p>lo Link encap:Local Loopback </p>
<p>inet addr:127.0.0.1 Mask:255.0.0.0</p>
<p>inet6 addr: ::1/128 Scope:Host</p>
<p>UP LOOPBACK RUNNING MTU:16436 Metric:1</p>
<p>RX packets:0 errors:0 dropped:0 overruns:0 frame:0</p>
<p>TX packets:0 errors:0 dropped:0 overruns:0 carrier:0</p>
<p>collisions:0 txqueuelen:0 </p>
<p>RX bytes:0 (0.0 B) TX bytes:0 (0.0 B)</p></span></div>
<div>=A0</div>
<div>Finally, dmesg is below:</div>
<div><span lang=3D"EN">
<p>Initializing cgroup subsys cpuset</p>
<p>Initializing cgroup subsys cpu</p>
<p>Linux version 3.0.32-yocto-standard (jim@jim-ubuntu-x64) (gcc version 4.=
6.4 20120303 (prerelease) (GCC) ) #1 SMP PREEMPT Fri Aug 24 13:19:48 EDT 20=
12</p>
<p>Disabled fast string operations</p>
<p>BIOS-provided physical RAM map:</p>
<p>BIOS-e820: 0000000000000000 - 000000000008f000 (usable)</p>
<p>BIOS-e820: 000000000008f000 - 0000000000090000 (reserved)</p>
<p>BIOS-e820: 0000000000090000 - 000000000009e800 (usable)</p>
<p>BIOS-e820: 000000000009e800 - 00000000000a0000 (reserved)</p>
<p>BIOS-e820: 00000000000e0000 - 0000000000100000 (reserved)</p>
<p>BIOS-e820: 0000000000100000 - 000000007ee95000 (usable)</p>
<p>BIOS-e820: 000000007ee95000 - 000000007eebf000 (reserved)</p>
<p>BIOS-e820: 000000007eebf000 - 000000007eefc000 (usable)</p>
<p>BIOS-e820: 000000007eefc000 - 000000007efbf000 (ACPI NVS)</p>
<p>BIOS-e820: 000000007efbf000 - 000000007efef000 (usable)</p>
<p>BIOS-e820: 000000007efef000 - 000000007efff000 (ACPI data)</p>
<p>BIOS-e820: 000000007efff000 - 000000007f000000 (usable)</p>
<p>BIOS-e820: 000000007f000000 - 0000000080000000 (reserved)</p>
<p>BIOS-e820: 00000000e0000000 - 00000000e4000000 (reserved)</p>
<p>BIOS-e820: 00000000ffe00000 - 0000000100000000 (reserved)</p>
<p>Notice: NX (Execute Disable) protection cannot be enabled: non-PAE kerne=
l!</p>
<p>DMI 2.7 present.</p>
<p>DMI: /DN2800MT, BIOS MTCDT10N.86A.0156.2012.0612.1547 06/12/2012</p>
<p>e820 update range: 0000000000000000 - 0000000000010000 (usable) =3D=3D&g=
t; (reserved)</p>
<p>e820 remove range: 00000000000a0000 - 0000000000100000 (usable)</p>
<p>last_pfn =3D 0x7f000 max_arch_pfn =3D 0x100000</p>
<p>MTRR default type: uncachable</p>
<p>MTRR fixed ranges enabled:</p>
<p>00000-9FFFF write-back</p>
<p>A0000-BFFFF uncachable</p>
<p>C0000-DFFFF write-protect</p>
<p>E0000-FFFFF uncachable</p>
<p>MTRR variable ranges enabled:</p>
<p>0 base 000000000 mask F80000000 write-back</p>
<p>1 base 07F000000 mask FFF000000 uncachable</p>
<p>2 base 0FFE00000 mask FFFE00000 write-protect</p>
<p>3 disabled</p>
<p>4 disabled</p>
<p>5 disabled</p>
<p>6 disabled</p>
<p>x86 PAT enabled: cpu 0, old 0x7040600070406, new 0x7010600070106</p>
<p>found SMP MP-table at [c00fbe40] fbe40</p>
<p>initial memory mapped : 0 - 01c00000</p>
<p>Base memory trampoline at [c009a000] 9a000 size 16384</p>
<p>init_memory_mapping: 0000000000000000-00000000377fe000</p>
<p>0000000000 - 0000400000 page 4k</p>
<p>0000400000 - 0037400000 page 2M</p>
<p>0037400000 - 00377fe000 page 4k</p>
<p>kernel direct mapping tables up to 377fe000 @ 1bfb000-1c00000</p>
<p>RAMDISK: 7e913000 - 7ee94000</p>
<p>Allocated new RAMDISK: 3727d000 - 377fd49d</p>
<p>Move RAMDISK from 000000007e913000 - 000000007ee9349c to 3727d000 - 377f=
d49c</p>
<p>ACPI: RSDP 000f2390 00024 (v02 INTEL )</p>
<p>ACPI: XSDT 7effe120 00064 (v01 INTEL DN2800MT 0000009C 01000013)</p>
<p>ACPI: FACP 7eff6000 000F4 (v03 INTEL DN2800MT 0000009C MSFT 0100000D)</p=
>
<p>ACPI: DSDT 7eff8000 05CA6 (v02 INTEL DN2800MT 0000009C MSFT 0100000D)</p=
>
<p>ACPI: FACS 7ef85000 00040</p>
<p>ACPI: SSDT 7eff7000 0043E (v01 INTEL DN2800MT 0000009C MSFT 0100000D)</p=
>
<p>ACPI: APIC 7eff5000 00084 (v02 INTEL DN2800MT 0000009C MSFT 0100000D)</p=
>
<p>ACPI: MCFG 7eff4000 0003C (v01 INTEL DN2800MT 0000009C MSFT 0100000D)</p=
>
<p>ACPI: HPET 7eff3000 00038 (v01 INTEL DN2800MT 0000009C MSFT 0100000D)</p=
>
<p>ACPI: SSDT 7eff1000 00655 (v01 PmRef CpuPm 00003000 INTL 20061109)</p>
<p>ACPI: SSDT 7eff0000 00259 (v01 PmRef Cpu0Tst 00003000 INTL 20061109)</p>
<p>ACPI: SSDT 7efef000 0020F (v01 PmRef ApTst 00003000 INTL 20061109)</p>
<p>ACPI: Local APIC address 0xfee00000</p>
<p>1144MB HIGHMEM available.</p>
<p>887MB LOWMEM available.</p>
<p>mapped low ram: 0 - 377fe000</p>
<p>low ram: 0 - 377fe000</p>
<p>Zone PFN ranges:</p>
<p>DMA 0x00000010 -&gt; 0x00001000</p>
<p>Normal 0x00001000 -&gt; 0x000377fe</p>
<p>HighMem 0x000377fe -&gt; 0x0007f000</p>
<p>Movable zone start PFN for each node</p>
<p>early_node_map[6] active PFN ranges</p>
<p>0: 0x00000010 -&gt; 0x0000008f</p>
<p>0: 0x00000090 -&gt; 0x0000009e</p>
<p>0: 0x00000100 -&gt; 0x0007ee95</p>
<p>0: 0x0007eebf -&gt; 0x0007eefc</p>
<p>0: 0x0007efbf -&gt; 0x0007efef</p>
<p>0: 0x0007efff -&gt; 0x0007f000</p>
<p>On node 0 totalpages: 519824</p>
<p>free_area_init_node: node 0, pgdat c1764d80, node_mem_map f629c200</p>
<p>DMA zone: 32 pages used for memmap</p>
<p>DMA zone: 0 pages reserved</p>
<p>DMA zone: 3949 pages, LIFO batch:0</p>
<p>Normal zone: 1744 pages used for memmap</p>
<p>Normal zone: 221486 pages, LIFO batch:31</p>
<p>HighMem zone: 2289 pages used for memmap</p>
<p>HighMem zone: 290324 pages, LIFO batch:31</p>
<p>Using APIC driver default</p>
<p>ACPI: PM-Timer IO Port: 0x408</p>
<p>ACPI: Local APIC address 0xfee00000</p>
<p>ACPI: LAPIC (acpi_id[0x01] lapic_id[0x00] enabled)</p>
<p>ACPI: LAPIC (acpi_id[0x02] lapic_id[0x01] enabled)</p>
<p>ACPI: LAPIC (acpi_id[0x03] lapic_id[0x02] enabled)</p>
<p>ACPI: LAPIC (acpi_id[0x04] lapic_id[0x03] enabled)</p>
<p>ACPI: LAPIC_NMI (acpi_id[0x01] high level lint[0x1])</p>
<p>ACPI: LAPIC_NMI (acpi_id[0x02] high level lint[0x1])</p>
<p>ACPI: LAPIC_NMI (acpi_id[0x03] high level lint[0x1])</p>
<p>ACPI: LAPIC_NMI (acpi_id[0x04] high level lint[0x1])</p>
<p>ACPI: IOAPIC (id[0x08] address[0xfec00000] gsi_base[0])</p>
<p>IOAPIC[0]: apic_id 8, version 32, address 0xfec00000, GSI 0-23</p>
<p>ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)</p>
<p>ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 high level)</p>
<p>ACPI: IRQ0 used by override.</p>
<p>ACPI: IRQ2 used by override.</p>
<p>ACPI: IRQ9 used by override.</p>
<p>Using ACPI (MADT) for SMP configuration information</p>
<p>ACPI: HPET id: 0x8086a201 base: 0xfed00000</p>
<p>SMP: Allowing 4 CPUs, 0 hotplug CPUs</p>
<p>nr_irqs_gsi: 40</p>
<p>Allocating PCI resources starting at 80000000 (gap: 80000000:60000000)</=
p>
<p>setup_percpu: NR_CPUS:8 nr_cpumask_bits:8 nr_cpu_ids:4 nr_node_ids:1</p>
<p>PERCPU: Embedded 11 pages/cpu @f6264000 s23808 r0 d21248 u45056</p>
<p>pcpu-alloc: s23808 r0 d21248 u45056 alloc=3D11*4096</p>
<p>pcpu-alloc: [0] 0 [0] 1 [0] 2 [0] 3 </p>
<p>Built 1 zonelists in Zone order, mobility grouping on. Total pages: 5157=
59</p>
<p>Kernel command line: initrd=3D/initrd LABEL=3Dboot root=3D/dev/ram0 cons=
ole=3DttyS0,115200 console=3Dtty0 BOOT_IMAGE=3D/vmlinuz </p>
<p>PID hash table entries: 4096 (order: 2, 16384 bytes)</p>
<p>Dentry cache hash table entries: 131072 (order: 7, 524288 bytes)</p>
<p>Inode-cache hash table entries: 65536 (order: 6, 262144 bytes)</p>
<p>Initializing CPU#0</p>
<p>allocated 8322816 bytes of page_cgroup</p>
<p>please try &#39;cgroup_disable=3Dmemory&#39; option if you don&#39;t wan=
t memory cgroups</p>
<p>Initializing HighMem for node 0 (000377fe:0007f000)</p>
<p>Memory: 2039596k/2080768k available (5160k kernel code, 39700k reserved,=
 2443k data, 500k init, 1170452k highmem)</p>
<p>virtual kernel memory layout:</p>
<p>fixmap : 0xfff17000 - 0xfffff000 ( 928 kB)</p>
<p>pkmap : 0xff800000 - 0xffc00000 (4096 kB)</p>
<p>vmalloc : 0xf7ffe000 - 0xff7fe000 ( 120 MB)</p>
<p>lowmem : 0xc0000000 - 0xf77fe000 ( 887 MB)</p>
<p>.init : 0xc176d000 - 0xc17ea000 ( 500 kB)</p>
<p>.data : 0xc150a149 - 0xc176ce40 (2443 kB)</p>
<p>.text : 0xc1000000 - 0xc150a149 (5160 kB)</p>
<p>Checking if this processor honours the WP bit even in supervisor mode...=
Ok.</p>
<p>SLUB: Genslabs=3D15, HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D4=
, Nodes=3D1</p>
<p>Preemptible hierarchical RCU implementation.</p>
<p>NR_IRQS:512</p>
<p>CPU 0 irqstacks, hard=3Df540e000 soft=3Df5420000</p>
<p>Extended CMOS year: 2000</p>
<p>Console: colour VGA+ 80x25</p>
<p>console [tty0] enabled</p>
<p>console [ttyS0] enabled</p>
<p>hpet clockevent registered</p>
<p>Fast TSC calibration using PIT</p>
<p>Detected 1866.928 MHz processor.</p>
<p>Calibrating delay loop (skipped), value calculated using timer frequency=
.. 3733.85 BogoMIPS (lpj=3D7467712)</p>
<p>pid_max: default: 32768 minimum: 301</p>
<p>Security Framework initialized</p>
<p>Mount-cache hash table entries: 512</p>
<p>Initializing cgroup subsys debug</p>
<p>Initializing cgroup subsys cpuacct</p>
<p>Initializing cgroup subsys memory</p>
<p>Initializing cgroup subsys devices</p>
<p>Initializing cgroup subsys freezer</p>
<p>Initializing cgroup subsys blkio</p>
<p>Disabled fast string operations</p>
<p>CPU: Physical Processor ID: 0</p>
<p>CPU: Processor Core ID: 0</p>
<p>using mwait in idle threads.</p>
<p>ACPI: Core revision 20110413</p>
<p>ftrace: allocating 22266 entries in 44 pages</p>
<p>Enabling APIC mode: Flat. Using 1 I/O APICs</p>
<p>..TIMER: vector=3D0x30 apic1=3D0 pin1=3D2 apic2=3D-1 pin2=3D-1</p>
<p>CPU0: Intel(R) Atom(TM) CPU N2800 @ 1.86GHz stepping 01</p>
<p>Performance Events: PEBS fmt0+, generic architected perfmon, Intel PMU d=
river.</p>
<p>... version: 3</p>
<p>... bit width: 40</p>
<p>... generic registers: 2</p>
<p>... value mask: 000000ffffffffff</p>
<p>... max period: 000000007fffffff</p>
<p>... fixed-purpose events: 3</p>
<p>... event mask: 0000000700000003</p>
<p>CPU 1 irqstacks, hard=3Df54ba000 soft=3Df54bc000</p>
<p>Booting Node 0, Processors #1</p>
<p>smpboot cpu 1: start_ip =3D 9a000</p>
<p>Initializing CPU#1</p>
<p>Disabled fast string operations</p>
<p>CPU 2 irqstacks, hard=3Df54c6000 soft=3Df54c8000</p>
<p>#2</p>
<p>smpboot cpu 2: start_ip =3D 9a000</p>
<p>Initializing CPU#2</p>
<p>Disabled fast string operations</p>
<p>CPU 3 irqstacks, hard=3Df54d2000 soft=3Df54d4000</p>
<p>#3 Ok.</p>
<p>smpboot cpu 3: start_ip =3D 9a000</p>
<p>Initializing CPU#3</p>
<p>Disabled fast string operations</p>
<p>Brought up 4 CPUs</p>
<p>Total of 4 processors activated (14933.91 BogoMIPS).</p>
<p>devtmpfs: initialized</p>
<p>NET: Registered protocol family 16</p>
<p>ACPI FADT declares the system doesn&#39;t support PCIe ASPM, so disable =
it</p>
<p>ACPI: bus type pci registered</p>
<p>PCI: MMCONFIG for domain 0000 [bus 00-3f] at [mem 0xe0000000-0xe3ffffff]=
 (base 0xe0000000)</p>
<p>PCI: MMCONFIG at [mem 0xe0000000-0xe3ffffff] reserved in E820</p>
<p>PCI: Using MMCONFIG for extended config space</p>
<p>PCI: Using configuration type 1 for base access</p>
<p>bio: create slab &lt;bio-0&gt; at 0</p>
<p>ACPI: EC: Look up EC in DSDT</p>
<p>ACPI: Executed 1 blocks of module-level executable AML code</p>
<p>[Firmware Bug]: ACPI: BIOS _OSI(Linux) query ignored</p>
<p>ACPI: SSDT 7eebec18 002A7 (v01 PmRef Cpu0Ist 00003000 INTL 20061109)</p>
<p>ACPI: Dynamic OEM Table Load:</p>
<p>ACPI: SSDT (null) 002A7 (v01 PmRef Cpu0Ist 00003000 INTL 20061109)</p>
<p>ACPI: SSDT 7eebde18 001CF (v01 PmRef ApIst 00003000 INTL 20061109)</p>
<p>ACPI: Dynamic OEM Table Load:</p>
<p>ACPI: SSDT (null) 001CF (v01 PmRef ApIst 00003000 INTL 20061109)</p>
<p>ACPI: Interpreter enabled</p>
<p>ACPI: (supports S0 S3 S5)</p>
<p>ACPI: Using IOAPIC for interrupt routing</p>
<p>PCI: Using host bridge windows from ACPI; if necessary, use &quot;pci=3D=
nocrs&quot; and report a bug</p>
<p>\_SB_.PCI0:_OSC invalid UUID</p>
<p>_OSC request data:1 8 1f </p>
<p>ACPI: PCI Root Bridge [PCI0] (domain 0000 [bus 00-ff])</p>
<p>pci_root PNP0A08:00: host bridge window [io 0x0000-0x0cf7]</p>
<p>pci_root PNP0A08:00: host bridge window [io 0x0d00-0xffff]</p>
<p>pci_root PNP0A08:00: host bridge window [mem 0x000a0000-0x000bffff]</p>
<p>pci_root PNP0A08:00: host bridge window [mem 0x000c0000-0x000dffff]</p>
<p>pci_root PNP0A08:00: host bridge window [mem 0x000e0000-0x000effff]</p>
<p>pci_root PNP0A08:00: host bridge window [mem 0x000f0000-0x000fffff]</p>
<p>pci_root PNP0A08:00: host bridge window [mem 0x7f800000-0x7fffffff]</p>
<p>pci_root PNP0A08:00: host bridge window [mem 0x80000000-0xfebfffff]</p>
<p>pci_root PNP0A08:00: host bridge window [mem 0xfed40000-0xfed44fff]</p>
<p>pci 0000:00:00.0: [8086:0bf2] type 0 class 0x000600</p>
<p>pci 0000:00:02.0: [8086:0be2] type 0 class 0x000300</p>
<p>pci 0000:00:02.0: reg 10: [mem 0x80600000-0x806fffff]</p>
<p>pci 0000:00:02.0: reg 14: [io 0x40d0-0x40d7]</p>
<p>pci 0000:00:1b.0: [8086:27d8] type 0 class 0x000403</p>
<p>pci 0000:00:1b.0: reg 10: [mem 0x80800000-0x80803fff 64bit]</p>
<p>pci 0000:00:1b.0: PME# supported from D0 D3hot D3cold</p>
<p>pci 0000:00:1b.0: PME# disabled</p>
<p>pci 0000:00:1c.0: [8086:27d0] type 1 class 0x000604</p>
<p>pci 0000:00:1c.0: PME# supported from D0 D3hot D3cold</p>
<p>pci 0000:00:1c.0: PME# disabled</p>
<p>pci 0000:00:1c.3: [8086:27d6] type 1 class 0x000604</p>
<p>pci 0000:00:1c.3: PME# supported from D0 D3hot D3cold</p>
<p>pci 0000:00:1c.3: PME# disabled</p>
<p>pci 0000:00:1d.0: [8086:27c8] type 0 class 0x000c03</p>
<p>pci 0000:00:1d.0: reg 20: [io 0x40a0-0x40bf]</p>
<p>pci 0000:00:1d.1: [8086:27c9] type 0 class 0x000c03</p>
<p>pci 0000:00:1d.1: reg 20: [io 0x4080-0x409f]</p>
<p>pci 0000:00:1d.2: [8086:27ca] type 0 class 0x000c03</p>
<p>pci 0000:00:1d.2: reg 20: [io 0x4060-0x407f]</p>
<p>pci 0000:00:1d.3: [8086:27cb] type 0 class 0x000c03</p>
<p>pci 0000:00:1d.3: reg 20: [io 0x4040-0x405f]</p>
<p>pci 0000:00:1d.7: [8086:27cc] type 0 class 0x000c03</p>
<p>pci 0000:00:1d.7: reg 10: [mem 0x80704400-0x807047ff]</p>
<p>pci 0000:00:1d.7: PME# supported from D0 D3hot D3cold</p>
<p>pci 0000:00:1d.7: PME# disabled</p>
<p>pci 0000:00:1e.0: [8086:2448] type 1 class 0x000604</p>
<p>pci 0000:00:1f.0: [8086:27bc] type 0 class 0x000601</p>
<p>pci 0000:00:1f.0: [Firmware Bug]: TigerPoint LPC.BM_STS cleared</p>
<p>pci 0000:00:1f.2: [8086:27c1] type 0 class 0x000106</p>
<p>pci 0000:00:1f.2: reg 10: [io 0x40c8-0x40cf]</p>
<p>pci 0000:00:1f.2: reg 14: [io 0x40dc-0x40df]</p>
<p>pci 0000:00:1f.2: reg 18: [io 0x40c0-0x40c7]</p>
<p>pci 0000:00:1f.2: reg 1c: [io 0x40d8-0x40db]</p>
<p>pci 0000:00:1f.2: reg 20: [io 0x4020-0x402f]</p>
<p>pci 0000:00:1f.2: reg 24: [mem 0x80704000-0x807043ff]</p>
<p>pci 0000:00:1f.2: PME# supported from D3hot</p>
<p>pci 0000:00:1f.2: PME# disabled</p>
<p>pci 0000:00:1f.3: [8086:27da] type 0 class 0x000c05</p>
<p>pci 0000:00:1f.3: reg 20: [io 0x4000-0x401f]</p>
<p>pci 0000:01:00.0: [8086:10d3] type 0 class 0x000200</p>
<p>pci 0000:01:00.0: reg 10: [mem 0x80400000-0x8041ffff]</p>
<p>pci 0000:01:00.0: reg 14: [mem 0x80000000-0x803fffff]</p>
<p>pci 0000:01:00.0: reg 18: [io 0x3000-0x301f]</p>
<p>pci 0000:01:00.0: reg 1c: [mem 0x80420000-0x80423fff]</p>
<p>pci 0000:01:00.0: PME# supported from D0 D3hot D3cold</p>
<p>pci 0000:01:00.0: PME# disabled</p>
<p>pci 0000:00:1c.0: PCI bridge to [bus 01-01]</p>
<p>pci 0000:00:1c.0: bridge window [io 0x3000-0x3fff]</p>
<p>pci 0000:00:1c.0: bridge window [mem 0x80000000-0x804fffff]</p>
<p>pci 0000:00:1c.0: bridge window [mem 0xfff00000-0x000fffff pref] (disabl=
ed)</p>
<p>pci 0000:02:00.0: [10ec:8176] type 0 class 0x000280</p>
<p>pci 0000:02:00.0: reg 10: [io 0x2000-0x20ff]</p>
<p>pci 0000:02:00.0: reg 18: [mem 0x80500000-0x80503fff 64bit]</p>
<p>pci 0000:02:00.0: supports D1 D2</p>
<p>pci 0000:02:00.0: PME# supported from D0 D1 D2 D3hot D3cold</p>
<p>pci 0000:02:00.0: PME# disabled</p>
<p>pci 0000:00:1c.3: PCI bridge to [bus 02-02]</p>
<p>pci 0000:00:1c.3: bridge window [io 0x2000-0x2fff]</p>
<p>pci 0000:00:1c.3: bridge window [mem 0x80500000-0x805fffff]</p>
<p>pci 0000:00:1c.3: bridge window [mem 0xfff00000-0x000fffff pref] (disabl=
ed)</p>
<p>pci 0000:00:1e.0: PCI bridge to [bus 03-03] (subtractive decode)</p>
<p>pci 0000:00:1e.0: bridge window [io 0xf000-0x0000] (disabled)</p>
<p>pci 0000:00:1e.0: bridge window [mem 0xfff00000-0x000fffff] (disabled)</=
p>
<p>pci 0000:00:1e.0: bridge window [mem 0xfff00000-0x000fffff pref] (disabl=
ed)</p>
<p>pci 0000:00:1e.0: bridge window [io 0x0000-0x0cf7] (subtractive decode)<=
/p>
<p>pci 0000:00:1e.0: bridge window [io 0x0d00-0xffff] (subtractive decode)<=
/p>
<p>pci 0000:00:1e.0: bridge window [mem 0x000a0000-0x000bffff] (subtractive=
 decode)</p>
<p>pci 0000:00:1e.0: bridge window [mem 0x000c0000-0x000dffff] (subtractive=
 decode)</p>
<p>pci 0000:00:1e.0: bridge window [mem 0x000e0000-0x000effff] (subtractive=
 decode)</p>
<p>pci 0000:00:1e.0: bridge window [mem 0x000f0000-0x000fffff] (subtractive=
 decode)</p>
<p>pci 0000:00:1e.0: bridge window [mem 0x7f800000-0x7fffffff] (subtractive=
 decode)</p>
<p>pci 0000:00:1e.0: bridge window [mem 0x80000000-0xfebfffff] (subtractive=
 decode)</p>
<p>pci 0000:00:1e.0: bridge window [mem 0xfed40000-0xfed44fff] (subtractive=
 decode)</p>
<p>pci_bus 0000:00: on NUMA node 0</p>
<p>ACPI: PCI Interrupt Routing Table [\_SB_.PCI0._PRT]</p>
<p>ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.P0P1._PRT]</p>
<p>ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP01._PRT]</p>
<p>ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP04._PRT]</p>
<p>\_SB_.PCI0:_OSC invalid UUID</p>
<p>_OSC request data:1 f 1f </p>
<p>pci0000:00: Unable to request _OSC control (_OSC support mask: 0x0f)</p>
<p>ACPI: PCI Interrupt Link [LNKA] (IRQs 1 3 4 5 6 7 10 12 14 15) *11</p>
<p>ACPI: PCI Interrupt Link [LNKB] (IRQs 1 3 4 5 6 7 11 12 14 15) *0, disab=
led.</p>
<p>ACPI: PCI Interrupt Link [LNKC] (IRQs 1 3 4 5 6 7 10 12 14 15) *9</p>
<p>ACPI: PCI Interrupt Link [LNKD] (IRQs 1 3 4 5 6 7 11 12 14 15) *10</p>
<p>ACPI: PCI Interrupt Link [LNKE] (IRQs 1 3 4 5 6 7 10 12 14 15) *0, disab=
led.</p>
<p>ACPI: PCI Interrupt Link [LNKF] (IRQs 1 3 4 5 6 7 11 12 14 15) *0, disab=
led.</p>
<p>ACPI: PCI Interrupt Link [LNKG] (IRQs 1 3 4 5 6 7 10 12 14 15) *9</p>
<p>ACPI: PCI Interrupt Link [LNKH] (IRQs 1 3 4 5 6 7 *11 12 14 15)</p>
<p>vgaarb: device added: PCI:0000:00:02.0,decodes=3Dio+mem,owns=3Dio+mem,lo=
cks=3Dnone</p>
<p>vgaarb: loaded</p>
<p>vgaarb: bridge control possible 0000:00:02.0</p>
<p>SCSI subsystem initialized</p>
<p>libata version 3.00 loaded.</p>
<p>usbcore: registered new interface driver usbfs</p>
<p>usbcore: registered new interface driver hub</p>
<p>usbcore: registered new device driver usb</p>
<p>Advanced Linux Sound Architecture Driver Version 1.0.24.</p>
<p>PCI: Using ACPI for IRQ routing</p>
<p>PCI: pci_cache_line_size set to 64 bytes</p>
<p>reserve RAM buffer: 000000000008f000 - 000000000008ffff </p>
<p>reserve RAM buffer: 000000000009e800 - 000000000009ffff </p>
<p>reserve RAM buffer: 000000007ee95000 - 000000007fffffff </p>
<p>reserve RAM buffer: 000000007eefc000 - 000000007fffffff </p>
<p>reserve RAM buffer: 000000007efef000 - 000000007fffffff </p>
<p>reserve RAM buffer: 000000007f000000 - 000000007fffffff </p>
<p>hpet0: at MMIO 0xfed00000, IRQs 2, 8, 0</p>
<p>hpet0: 3 comparators, 64-bit 14.318180 MHz counter</p>
<p>Switching to clocksource hpet</p>
<p>Switched to NOHz mode on CPU #3</p>
<p>Switched to NOHz mode on CPU #2</p>
<p>Switched to NOHz mode on CPU #1</p>
<p>Switched to NOHz mode on CPU #0</p>
<p>pnp: PnP ACPI init</p>
<p>ACPI: bus type pnp registered</p>
<p>pnp 00:00: [bus 00-ff]</p>
<p>pnp 00:00: [io 0x0000-0x0cf7 window]</p>
<p>pnp 00:00: [io 0x0cf8-0x0cff]</p>
<p>pnp 00:00: [io 0x0d00-0xffff window]</p>
<p>pnp 00:00: [mem 0x000a0000-0x000bffff window]</p>
<p>pnp 00:00: [mem 0x000c0000-0x000dffff window]</p>
<p>pnp 00:00: [mem 0x000e0000-0x000effff window]</p>
<p>pnp 00:00: [mem 0x000f0000-0x000fffff window]</p>
<p>pnp 00:00: [mem 0x7f800000-0x7fffffff window]</p>
<p>pnp 00:00: [mem 0x80000000-0xfebfffff window]</p>
<p>pnp 00:00: [mem 0xfed40000-0xfed44fff window]</p>
<p>pnp 00:00: Plug and Play ACPI device, IDs PNP0a08 PNP0a03 (active)</p>
<p>pnp 00:01: [io 0x0000-0x001f]</p>
<p>pnp 00:01: [io 0x0081-0x0091]</p>
<p>pnp 00:01: [io 0x0093-0x009f]</p>
<p>pnp 00:01: [io 0x00c0-0x00df]</p>
<p>pnp 00:01: [dma 4]</p>
<p>pnp 00:01: Plug and Play ACPI device, IDs PNP0200 (active)</p>
<p>pnp 00:02: [mem 0xff000000-0xffffffff]</p>
<p>pnp 00:02: Plug and Play ACPI device, IDs INT0800 (active)</p>
<p>pnp 00:03: [mem 0xfed00000-0xfed003ff]</p>
<p>system 00:03: [mem 0xfed00000-0xfed003ff] has been reserved</p>
<p>system 00:03: Plug and Play ACPI device, IDs PNP0103 PNP0c01 (active)</p=
>
<p>pnp 00:04: [io 0x00f0]</p>
<p>pnp 00:04: [irq 13]</p>
<p>pnp 00:04: Plug and Play ACPI device, IDs PNP0c04 (active)</p>
<p>pnp 00:05: [io 0x002e-0x002f]</p>
<p>pnp 00:05: [io 0x004e-0x004f]</p>
<p>pnp 00:05: [io 0x0061]</p>
<p>pnp 00:05: [io 0x0063]</p>
<p>pnp 00:05: [io 0x0065]</p>
<p>pnp 00:05: [io 0x0067]</p>
<p>pnp 00:05: [io 0x0070]</p>
<p>pnp 00:05: [io 0x0080]</p>
<p>pnp 00:05: [io 0x0092]</p>
<p>pnp 00:05: [io 0x00b2-0x00b3]</p>
<p>pnp 00:05: [io 0x0680-0x069f]</p>
<p>pnp 00:05: [io 0x1000-0x100f]</p>
<p>pnp 00:05: [io 0xffff]</p>
<p>pnp 00:05: [io 0xffff]</p>
<p>pnp 00:05: [io 0x0400-0x047f]</p>
<p>pnp 00:05: [io 0x0500-0x057f]</p>
<p>pnp 00:05: [io 0x0600-0x061f]</p>
<p>system 00:05: [io 0x0680-0x069f] has been reserved</p>
<p>system 00:05: [io 0x1000-0x100f] has been reserved</p>
<p>system 00:05: [io 0xffff] has been reserved</p>
<p>system 00:05: [io 0xffff] has been reserved</p>
<p>system 00:05: [io 0x0400-0x047f] has been reserved</p>
<p>system 00:05: [io 0x0500-0x057f] has been reserved</p>
<p>system 00:05: [io 0x0600-0x061f] has been reserved</p>
<p>system 00:05: Plug and Play ACPI device, IDs PNP0c02 (active)</p>
<p>pnp 00:06: [io 0x06a0-0x06af]</p>
<p>pnp 00:06: [io 0x06b0-0x06ff]</p>
<p>system 00:06: [io 0x06a0-0x06af] has been reserved</p>
<p>system 00:06: [io 0x06b0-0x06ff] has been reserved</p>
<p>system 00:06: Plug and Play ACPI device, IDs PNP0c02 (active)</p>
<p>pnp 00:07: [io 0x0070-0x0077]</p>
<p>pnp 00:07: [irq 8]</p>
<p>pnp 00:07: Plug and Play ACPI device, IDs PNP0b00 (active)</p>
<p>pnp 00:08: [io 0x0378-0x037f]</p>
<p>pnp 00:08: [irq 7]</p>
<p>pnp 00:08: Plug and Play ACPI device, IDs PNP0400 (active)</p>
<p>pnp 00:09: [io 0x02f8-0x02ff]</p>
<p>pnp 00:09: [irq 3]</p>
<p>pnp 00:09: Plug and Play ACPI device, IDs PNP0501 (active)</p>
<p>pnp 00:0a: [io 0x03f8-0x03ff]</p>
<p>pnp 00:0a: [irq 4]</p>
<p>pnp 00:0a: Plug and Play ACPI device, IDs PNP0501 (active)</p>
<p>pnp 00:0b: [mem 0xfed1c000-0xfed1ffff]</p>
<p>pnp 00:0b: [mem 0x00000000-0x00003fff]</p>
<p>pnp 00:0b: [mem 0x00000000-0x00000fff]</p>
<p>pnp 00:0b: [mem 0x00000000-0x00000fff]</p>
<p>pnp 00:0b: [mem 0x00000000-0xffffffff disabled]</p>
<p>pnp 00:0b: [mem 0xfed45000-0xfed8ffff]</p>
<p>system 00:0b: [mem 0xfed1c000-0xfed1ffff] has been reserved</p>
<p>system 00:0b: [mem 0x00000000-0x00003fff] could not be reserved</p>
<p>system 00:0b: [mem 0x00000000-0x00000fff] could not be reserved</p>
<p>system 00:0b: [mem 0x00000000-0x00000fff] could not be reserved</p>
<p>system 00:0b: [mem 0xfed45000-0xfed8ffff] has been reserved</p>
<p>system 00:0b: Plug and Play ACPI device, IDs PNP0c02 (active)</p>
<p>pnp: PnP ACPI: found 12 devices</p>
<p>ACPI: ACPI bus type pnp unregistered</p>
<p>PCI: max bus depth: 1 pci_try_num: 2</p>
<p>pci 0000:00:1c.3: BAR 9: assigned [mem 0x80900000-0x80afffff 64bit pref]=
</p>
<p>pci 0000:00:1c.0: BAR 9: assigned [mem 0x80b00000-0x80cfffff 64bit pref]=
</p>
<p>pci 0000:00:1c.0: PCI bridge to [bus 01-01]</p>
<p>pci 0000:00:1c.0: bridge window [io 0x3000-0x3fff]</p>
<p>pci 0000:00:1c.0: bridge window [mem 0x80000000-0x804fffff]</p>
<p>pci 0000:00:1c.0: bridge window [mem 0x80b00000-0x80cfffff 64bit pref]</=
p>
<p>pci 0000:00:1c.3: PCI bridge to [bus 02-02]</p>
<p>pci 0000:00:1c.3: bridge window [io 0x2000-0x2fff]</p>
<p>pci 0000:00:1c.3: bridge window [mem 0x80500000-0x805fffff]</p>
<p>pci 0000:00:1c.3: bridge window [mem 0x80900000-0x80afffff 64bit pref]</=
p>
<p>pci 0000:00:1e.0: PCI bridge to [bus 03-03]</p>
<p>pci 0000:00:1e.0: bridge window [io disabled]</p>
<p>pci 0000:00:1e.0: bridge window [mem disabled]</p>
<p>pci 0000:00:1e.0: bridge window [mem pref disabled]</p>
<p>pci 0000:00:1c.0: PCI INT A -&gt; GSI 16 (level, low) -&gt; IRQ 16</p>
<p>pci 0000:00:1c.0: setting latency timer to 64</p>
<p>pci 0000:00:1c.3: PCI INT D -&gt; GSI 19 (level, low) -&gt; IRQ 19</p>
<p>pci 0000:00:1c.3: setting latency timer to 64</p>
<p>pci 0000:00:1e.0: setting latency timer to 64</p>
<p>pci_bus 0000:00: resource 4 [io 0x0000-0x0cf7]</p>
<p>pci_bus 0000:00: resource 5 [io 0x0d00-0xffff]</p>
<p>pci_bus 0000:00: resource 6 [mem 0x000a0000-0x000bffff]</p>
<p>pci_bus 0000:00: resource 7 [mem 0x000c0000-0x000dffff]</p>
<p>pci_bus 0000:00: resource 8 [mem 0x000e0000-0x000effff]</p>
<p>pci_bus 0000:00: resource 9 [mem 0x000f0000-0x000fffff]</p>
<p>pci_bus 0000:00: resource 10 [mem 0x7f800000-0x7fffffff]</p>
<p>pci_bus 0000:00: resource 11 [mem 0x80000000-0xfebfffff]</p>
<p>pci_bus 0000:00: resource 12 [mem 0xfed40000-0xfed44fff]</p>
<p>pci_bus 0000:01: resource 0 [io 0x3000-0x3fff]</p>
<p>pci_bus 0000:01: resource 1 [mem 0x80000000-0x804fffff]</p>
<p>pci_bus 0000:01: resource 2 [mem 0x80b00000-0x80cfffff 64bit pref]</p>
<p>pci_bus 0000:02: resource 0 [io 0x2000-0x2fff]</p>
<p>pci_bus 0000:02: resource 1 [mem 0x80500000-0x805fffff]</p>
<p>pci_bus 0000:02: resource 2 [mem 0x80900000-0x80afffff 64bit pref]</p>
<p>pci_bus 0000:03: resource 4 [io 0x0000-0x0cf7]</p>
<p>pci_bus 0000:03: resource 5 [io 0x0d00-0xffff]</p>
<p>pci_bus 0000:03: resource 6 [mem 0x000a0000-0x000bffff]</p>
<p>pci_bus 0000:03: resource 7 [mem 0x000c0000-0x000dffff]</p>
<p>pci_bus 0000:03: resource 8 [mem 0x000e0000-0x000effff]</p>
<p>pci_bus 0000:03: resource 9 [mem 0x000f0000-0x000fffff]</p>
<p>pci_bus 0000:03: resource 10 [mem 0x7f800000-0x7fffffff]</p>
<p>pci_bus 0000:03: resource 11 [mem 0x80000000-0xfebfffff]</p>
<p>pci_bus 0000:03: resource 12 [mem 0xfed40000-0xfed44fff]</p>
<p>NET: Registered protocol family 2</p>
<p>IP route cache hash table entries: 32768 (order: 5, 131072 bytes)</p>
<p>TCP established hash table entries: 131072 (order: 8, 1048576 bytes)</p>
<p>TCP bind hash table entries: 65536 (order: 7, 524288 bytes)</p>
<p>TCP: Hash tables configured (established 131072 bind 65536)</p>
<p>TCP reno registered</p>
<p>UDP hash table entries: 512 (order: 2, 16384 bytes)</p>
<p>UDP-Lite hash table entries: 512 (order: 2, 16384 bytes)</p>
<p>NET: Registered protocol family 1</p>
<p>RPC: Registered named UNIX socket transport module.</p>
<p>RPC: Registered udp transport module.</p>
<p>RPC: Registered tcp transport module.</p>
<p>RPC: Registered tcp NFSv4.1 backchannel transport module.</p>
<p>pci 0000:00:02.0: Boot video device</p>
<p>pci 0000:00:1d.0: PCI INT A -&gt; GSI 23 (level, low) -&gt; IRQ 23</p>
<p>pci 0000:00:1d.0: PCI INT A disabled</p>
<p>pci 0000:00:1d.1: PCI INT B -&gt; GSI 19 (level, low) -&gt; IRQ 19</p>
<p>pci 0000:00:1d.1: PCI INT B disabled</p>
<p>pci 0000:00:1d.2: PCI INT C -&gt; GSI 18 (level, low) -&gt; IRQ 18</p>
<p>pci 0000:00:1d.2: PCI INT C disabled</p>
<p>pci 0000:00:1d.3: PCI INT D -&gt; GSI 16 (level, low) -&gt; IRQ 16</p>
<p>pci 0000:00:1d.3: PCI INT D disabled</p>
<p>pci 0000:00:1d.7: PCI INT A -&gt; GSI 23 (level, low) -&gt; IRQ 23</p>
<p>pci 0000:00:1d.7: PCI INT A disabled</p>
<p>PCI: CLS 64 bytes, default 64</p>
<p>Trying to unpack rootfs image as initramfs...</p>
<p>Freeing initrd memory: 5636k freed</p>
<p>highmem bounce pool size: 64 pages</p>
<p>VFS: Disk quotas dquot_6.5.2</p>
<p>Dquot-cache hash table entries: 1024 (order 0, 4096 bytes)</p>
<p>msgmni has been set to 1708</p>
<p>Block layer SCSI generic (bsg) driver version 0.4 loaded (major 253)</p>
<p>io scheduler noop registered</p>
<p>io scheduler deadline registered</p>
<p>io scheduler cfq registered (default)</p>
<p>pcieport 0000:00:1c.0: setting latency timer to 64</p>
<p>pcieport 0000:00:1c.3: setting latency timer to 64</p>
<p>intel_idle: MWAIT substates: 0x3020220</p>
<p>intel_idle: does not run on family 6 model 54</p>
<p>input: Power Button as /devices/LNXSYSTM:00/device:00/PNP0C0C:00/input/i=
nput0</p>
<p>ACPI: Power Button [PWRB]</p>
<p>input: Sleep Button as /devices/LNXSYSTM:00/device:00/PNP0C0E:00/input/i=
nput1</p>
<p>ACPI: Sleep Button [SLPB]</p>
<p>input: Power Button as /devices/LNXSYSTM:00/LNXPWRBN:00/input/input2</p>
<p>ACPI: Power Button [PWRF]</p>
<p>ACPI: acpi_idle registered with cpuidle</p>
<p>Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled</p>
<p>serial8250: ttyS0 at I/O 0x3f8 (irq =3D 4) is a 16550A</p>
<p>serial8250: ttyS1 at I/O 0x2f8 (irq =3D 3) is a 16550A</p>
<p>00:09: ttyS1 at I/O 0x2f8 (irq =3D 3) is a 16550A</p>
<p>00:0a: ttyS0 at I/O 0x3f8 (irq =3D 4) is a 16550A</p>
<p>Linux agpgart interface v0.103</p>
<p>[drm] Initialized drm 1.1.0 20060810</p>
<p>brd: module loaded</p>
<p>loop: module loaded</p>
<p>ahci 0000:00:1f.2: version 3.0</p>
<p>ahci 0000:00:1f.2: PCI INT B -&gt; GSI 19 (level, low) -&gt; IRQ 19</p>
<p>ahci: SSS flag set, parallel bus scan disabled</p>
<p>ahci 0000:00:1f.2: AHCI 0001.0100 32 slots 4 ports 3 Gbps 0x3 impl SATA =
mode</p>
<p>ahci 0000:00:1f.2: flags: 64bit ncq stag pm led clo pio slum part </p>
<p>ahci 0000:00:1f.2: setting latency timer to 64</p>
<p>scsi0 : ahci</p>
<p>scsi1 : ahci</p>
<p>scsi2 : ahci</p>
<p>scsi3 : ahci</p>
<p>ata1: SATA max UDMA/133 abar m1024@0x80704000 port 0x80704100 irq 19</p>
<p>ata2: SATA max UDMA/133 abar m1024@0x80704000 port 0x80704180 irq 19</p>
<p>ata3: DUMMY</p>
<p>ata4: DUMMY</p>
<p>e1000: Intel(R) PRO/1000 Network Driver - version 7.3.21-k8-NAPI</p>
<p>e1000: Copyright (c) 1999-2006 Intel Corporation.</p>
<p>e1000e: Intel(R) PRO/1000 Network Driver - 1.3.10-k2</p>
<p>e1000e: Copyright(c) 1999 - 2011 Intel Corporation.</p>
<p>e1000e 0000:01:00.0: Disabling ASPM L0s </p>
<p>e1000e 0000:01:00.0: PCI INT A -&gt; GSI 16 (level, low) -&gt; IRQ 16</p=
>
<p>e1000e 0000:01:00.0: setting latency timer to 64</p>
<p>e1000e 0000:01:00.0: (unregistered net_device): Failed to initialize MSI=
-X interrupts. Falling back to MSI interrupts.</p>
<p>e1000e 0000:01:00.0: (unregistered net_device): Failed to initialize MSI=
 interrupts. Falling back to legacy interrupts.</p>
<p>e1000e 0000:01:00.0: eth0: (PCI Express:2.5GT/s:Width x1) 00:22:4d:80:36=
:1f</p>
<p>e1000e 0000:01:00.0: eth0: Intel(R) PRO/1000 Network Connection</p>
<p>e1000e 0000:01:00.0: eth0: MAC: 3, PHY: 8, PBA No: FFFFFF-0FF</p>
<p>e100: Intel(R) PRO/100 Network Driver, 3.5.24-k2-NAPI</p>
<p>e100: Copyright(c) 1999-2006 Intel Corporation</p>
<p>console [netcon0] enabled</p>
<p>netconsole: network logging started</p>
<p>ehci_hcd: USB 2.0 &#39;Enhanced&#39; Host Controller (EHCI) Driver</p>
<p>ehci_hcd 0000:00:1d.7: PCI INT A -&gt; GSI 23 (level, low) -&gt; IRQ 23<=
/p>
<p>ehci_hcd 0000:00:1d.7: setting latency timer to 64</p>
<p>ehci_hcd 0000:00:1d.7: EHCI Host Controller</p>
<p>ehci_hcd 0000:00:1d.7: new USB bus registered, assigned bus number 1</p>
<p>ehci_hcd 0000:00:1d.7: using broken periodic workaround</p>
<p>ehci_hcd 0000:00:1d.7: debug port 1</p>
<p>ehci_hcd 0000:00:1d.7: cache line size of 64 is not supported</p>
<p>ehci_hcd 0000:00:1d.7: irq 23, io mem 0x80704400</p>
<p>ehci_hcd 0000:00:1d.7: USB 2.0 started, EHCI 1.00</p>
<p>hub 1-0:1.0: USB hub found</p>
<p>hub 1-0:1.0: 8 ports detected</p>
<p>ohci_hcd: USB 1.1 &#39;Open&#39; Host Controller (OHCI) Driver</p>
<p>uhci_hcd: USB Universal Host Controller Interface driver</p>
<p>uhci_hcd 0000:00:1d.0: PCI INT A -&gt; GSI 23 (level, low) -&gt; IRQ 23<=
/p>
<p>uhci_hcd 0000:00:1d.0: setting latency timer to 64</p>
<p>uhci_hcd 0000:00:1d.0: UHCI Host Controller</p>
<p>uhci_hcd 0000:00:1d.0: new USB bus registered, assigned bus number 2</p>
<p>uhci_hcd 0000:00:1d.0: irq 23, io base 0x000040a0</p>
<p>hub 2-0:1.0: USB hub found</p>
<p>hub 2-0:1.0: 2 ports detected</p>
<p>uhci_hcd 0000:00:1d.1: PCI INT B -&gt; GSI 19 (level, low) -&gt; IRQ 19<=
/p>
<p>uhci_hcd 0000:00:1d.1: setting latency timer to 64</p>
<p>uhci_hcd 0000:00:1d.1: UHCI Host Controller</p>
<p>uhci_hcd 0000:00:1d.1: new USB bus registered, assigned bus number 3</p>
<p>uhci_hcd 0000:00:1d.1: irq 19, io base 0x00004080</p>
<p>hub 3-0:1.0: USB hub found</p>
<p>hub 3-0:1.0: 2 ports detected</p>
<p>ata1: SATA link down (SStatus 0 SControl 300)</p>
<p>uhci_hcd 0000:00:1d.2: PCI INT C -&gt; GSI 18 (level, low) -&gt; IRQ 18<=
/p>
<p>uhci_hcd 0000:00:1d.2: setting latency timer to 64</p>
<p>uhci_hcd 0000:00:1d.2: UHCI Host Controller</p>
<p>uhci_hcd 0000:00:1d.2: new USB bus registered, assigned bus number 4</p>
<p>uhci_hcd 0000:00:1d.2: irq 18, io base 0x00004060</p>
<p>hub 4-0:1.0: USB hub found</p>
<p>hub 4-0:1.0: 2 ports detected</p>
<p>uhci_hcd 0000:00:1d.3: PCI INT D -&gt; GSI 16 (level, low) -&gt; IRQ 16<=
/p>
<p>uhci_hcd 0000:00:1d.3: setting latency timer to 64</p>
<p>uhci_hcd 0000:00:1d.3: UHCI Host Controller</p>
<p>uhci_hcd 0000:00:1d.3: new USB bus registered, assigned bus number 5</p>
<p>uhci_hcd 0000:00:1d.3: irq 16, io base 0x00004040</p>
<p>hub 5-0:1.0: USB hub found</p>
<p>hub 5-0:1.0: 2 ports detected</p>
<p>Refined TSC clocksource calibration: 1866.732 MHz.</p>
<p>Switching to clocksource tsc</p>
<p>Initializing USB Mass Storage driver...</p>
<p>usbcore: registered new interface driver usb-storage</p>
<p>USB Mass Storage support registered.</p>
<p>i8042: PNP: No PS/2 controller found. Probing ports directly.</p>
<p>serio: i8042 KBD port at 0x60,0x64 irq 1</p>
<p>serio: i8042 AUX port at 0x60,0x64 irq 12</p>
<p>mousedev: PS/2 mouse device common for all mice</p>
<p>rtc_cmos 00:07: RTC can wake from S4</p>
<p>rtc_cmos 00:07: rtc core: registered rtc_cmos as rtc0</p>
<p>rtc0: alarms up to one month, y3k, 242 bytes nvram, hpet irqs</p>
<p>md: linear personality registered for level -1</p>
<p>md: raid0 personality registered for level 0</p>
<p>md: raid1 personality registered for level 1</p>
<p>md: raid10 personality registered for level 10</p>
<p>md: multipath personality registered for level -4</p>
<p>md: faulty personality registered for level -5</p>
<p>device-mapper: ioctl: 4.20.0-ioctl (2011-02-02) initialised: <a href=3D"=
mailto:dm-devel@redhat.com">dm-devel@redhat.com</a></p>
<p>cpuidle: using governor ladder</p>
<p>cpuidle: using governor menu</p>
<p>sdhci: Secure Digital Host Controller Interface driver</p>
<p>sdhci: Copyright(c) Pierre Ossman</p>
<p>EFI Variables Facility v0.08 2004-May-17</p>
<p>usbcore: registered new interface driver usbhid</p>
<p>usbhid: USB HID core driver</p>
<p>HDA Intel 0000:00:1b.0: PCI INT A -&gt; GSI 22 (level, low) -&gt; IRQ 22=
</p>
<p>HDA Intel 0000:00:1b.0: setting latency timer to 64</p>
<p>HDMI status: Pin=3D3 Presence_Detect=3D0 ELD_Valid=3D0</p>
<p>hda_codec: ALC888-VD: BIOS auto-probing.</p>
<p>ALSA device list:</p>
<p>#0: HDA Intel at 0x80800000 irq 22</p>
<p>oprofile: using NMI interrupt.</p>
<p>TCP cubic registered</p>
<p>NET: Registered protocol family 17</p>
<p>Registering the dns_resolver key type</p>
<p>Using IPI No-Shortcut mode</p>
<p>registered taskstats version 1</p>
<p>rtc_cmos 00:07: setting system clock to 2012-08-29 12:44:16 UTC (1346244=
256)</p>
<p>pvrsrvkm 0000:00:02.0: PCI INT A -&gt; GSI 16 (level, low) -&gt; IRQ 16<=
/p>
<p>pvrsrvkm 0000:00:02.0: setting latency timer to 64</p>
<p>[TTM] Zone kernel: Available graphics memory: 437390 kiB.</p>
<p>[TTM] Zone highmem: Available graphics memory: 1022616 kiB.</p>
<p>[TTM] Initializing pool allocator.</p>
<p>[drm:psb_driver_load] *ERROR* Enable MSI failed!</p>
<p>[drm] Supports vblank timestamp caching Rev 1 (10.10.2010).</p>
<p>[drm] No driver support for vblank timestamp query.</p>
<p>ACPI Warning: _BQC returned an invalid level (20110413/video-473)</p>
<p>ata2: SATA link down (SStatus 0 SControl 300)</p>
<p>acpi device:31: registered as cooling_device4</p>
<p>input: Video Bus as /devices/LNXSYSTM:00/device:00/PNP0A08:00/LNXVIDEO:0=
0/input/input3</p>
<p>ACPI: Video Device [GFX0] (multi-head: yes rom: no post: no)</p>
<p>usb 1-5: new high speed USB device number 3 using ehci_hcd</p>
<p>scsi4 : usb-storage 1-5:1.0</p>
<p>Overlay GTT address is 7c0000</p>
<p>usb 1-8: new high speed USB device number 4 using ehci_hcd</p>
<p>hub 1-8:1.0: USB hub found</p>
<p>hub 1-8:1.0: 4 ports detected</p>
<p>usb 3-1: new full speed USB device number 2 using uhci_hcd</p>
<p>hub 3-1:1.0: USB hub found</p>
<p>hub 3-1:1.0: 3 ports detected</p>
<p>usb 1-8.3: new high speed USB device number 5 using ehci_hcd</p>
<p>scsi 4:0:0:0: Direct-Access OCZ ATV_TURBO 1100 PQ: 0 ANSI: 0 CCS</p>
<p>sd 4:0:0:0: Attached scsi generic sg0 type 0</p>
<p>sd 4:0:0:0: [sda] 8028160 512-byte logical blocks: (4.11 GB/3.82 GiB)</p=
>
<p>sd 4:0:0:0: [sda] Write Protect is off</p>
<p>sd 4:0:0:0: [sda] Mode Sense: 43 00 00 00</p>
<p>sd 4:0:0:0: [sda] No Caching mode page present</p>
<p>sd 4:0:0:0: [sda] Assuming drive cache: write through</p>
<p>sd 4:0:0:0: [sda] No Caching mode page present</p>
<p>sd 4:0:0:0: [sda] Assuming drive cache: write through</p>
<p>sda: sda4</p>
<p>sd 4:0:0:0: [sda] No Caching mode page present</p>
<p>sd 4:0:0:0: [sda] Assuming drive cache: write through</p>
<p>sd 4:0:0:0: [sda] Attached SCSI removable disk</p>
<p>usb 3-1.1: new full speed USB device number 3 using uhci_hcd</p>
<p>input: Dell Dell USB Keyboard Hub as /devices/pci0000:00/0000:00:1d.1/us=
b3/3-1/3-1.1/3-1.1:1.0/input/input4</p>
<p>generic-usb 0003:413C:2002.0001: input: USB HID v1.10 Keyboard [Dell Del=
l USB Keyboard Hub] on usb-0000:00:1d.1-1.1/input0</p>
<p>input: Dell Dell USB Keyboard Hub as /devices/pci0000:00/0000:00:1d.1/us=
b3/3-1/3-1.1/3-1.1:1.1/input/input5</p>
<p>generic-usb 0003:413C:2002.0002: input: USB HID v1.10 Device [Dell Dell =
USB Keyboard Hub] on usb-0000:00:1d.1-1.1/input1</p>
<p>usb 3-1.3: new low speed USB device number 4 using uhci_hcd</p>
<p>fbcon: psbfb (fb0) is primary device</p>
<p>input: Microsoft Microsoft Notebook Receiver v2.0 as /devices/pci0000:00=
/0000:00:1d.1/usb3/3-1/3-1.3/3-1.3:1.0/input/input6</p>
<p>generic-usb 0003:045E:00E1.0003: input: USB HID v1.11 Mouse [Microsoft M=
icrosoft Notebook Receiver v2.0] on usb-0000:00:1d.1-1.3/input0</p>
<p>Console: switching to colour frame buffer device 170x48</p>
<p>fb0: psbfb frame buffer device</p>
<p>drm: registered panic notifier</p>
<p>Cedartrail: apply sample cache workaround</p>
<p>Device ID: 2</p>
<p>[drm] Initialized pvrsrvkm 8.1.0 2009-03-10 for 0000:00:02.0 on minor 0<=
/p>
<p>Freeing unused kernel memory: 500k freed</p>
<p>udev[60]: starting version 164</p>
<p>EXT3-fs: barriers not enabled</p>
<p>kjournald starting. Commit interval 5 seconds</p>
<p>EXT3-fs (loop0): using internal journal</p>
<p>EXT3-fs (loop0): mounted filesystem with ordered data mode</p>
<p>udev[502]: starting version 164</p>
<p>cfg80211: Calling CRDA to update world regulatory domain</p>
<p>rtl8192ce 0000:02:00.0: PCI INT A -&gt; GSI 19 (level, low) -&gt; IRQ 19=
</p>
<p>rtl8192ce 0000:02:00.0: setting latency timer to 64</p>
<p>rtl8192ce:rtl92c_init_sw_vars():&lt;0-0&gt; Failed to request firmware!<=
/p>
<p>rtlwifi:rtl_pci_probe():&lt;0-0&gt; Can&#39;t init_sw_vars.</p>
<p>rtl8192ce 0000:02:00.0: PCI INT A disabled</p>
<p>NET: Registered protocol family 10</p>
<p>ADDRCONF(NETDEV_UP): eth0: link is not ready</p>
<p>e1000e: eth0 NIC Link is Up 1000 Mbps Full Duplex, Flow Control: Rx/Tx</=
p>
<p>ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready</p>
<p>ip_tables: (C) 2000-2006 Netfilter Core Team</p>
<p>nf_conntrack version 0.5.0 (16384 buckets, 65536 max)</p>
<p>eth0: no IPv6 routers present</p></span></div>
<div>=A0</div>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote"><span class=3D"HOEnZb"><font color=3D=
"#888888">Ross<br></font></span></blockquote></div><br>

--14dae939994fff815304c86706e8--
