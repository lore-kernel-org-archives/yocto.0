Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-curtail.atl.sa.earthlink.net
	(elasmtp-curtail.atl.sa.earthlink.net [209.86.89.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A94BE01508
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2013 12:57:15 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=VTVEIs4eGMRmTWcXS344kXxGArLzVTOBm7wMfgI58DqweZUGpVCbyTbWcaGFIJhD;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-curtail.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1UNTo2-0007zI-7l; Wed, 03 Apr 2013 15:57:14 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Darren Hart'" <dvhart@linux.intel.com>
References: <E32C22186F664AC79D0019B49275C4EE@PAULD>
	<515C4D0D.7030708@linux.intel.com>
In-Reply-To: <515C4D0D.7030708@linux.intel.com>
Date: Wed, 3 Apr 2013 12:57:23 -0700
Message-ID: <1FA14170446D481E9E3DB9080F55EEB9@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac4whEAg/pZVJ5IQQ6y83KbscJk72AAF3OwA
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688411d755fe5312b2378ff37e52b7c3104350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Cc: yocto@yoctoproject.org
Subject: Re: This one can't be me...
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 03 Apr 2013 19:57:15 -0000
X-Groupsio-MsgNum: 12905
Content-Type: multipart/mixed;
	boundary="----=_NextPart_000_01EF_01CE306A.C935DCA0"

------=_NextPart_000_01EF_01CE306A.C935DCA0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Darren Hart
>
> The most obvious question is whether or not the kernel you built has
> ramdisk support. You can do this by analyzing the .config file in your
> linux-yocto build tree
> (build/tmp/work/cedartrail.../linux-yocto*/linux-cedartrail-st
> andard-build/.config).
> You want to look for:
> 
> $ grep BLK_DEV_RAM .config
> CONFIG_BLK_DEV_RAM=y
> CONFIG_BLK_DEV_RAM_COUNT=16
> CONFIG_BLK_DEV_RAM_SIZE=4096

That directory (full path is
/home/pauld/yocto-atom/build/tmp/work/cedartrail_nopvr-poky-linux/linux-yoct
o-3.0.32+git1+a4ac64fe873f08ef718e2849b88914725dc99c1c_1+1e79e03d115ed177882
ab53909a4f3555e434833-r4.1/linux-cedartrail-nopvr-standard-build) is
completely empty. Yes, I know it's supposed to be a hidden file. This is
right after completing a "successful" build of core-image-sato.

> Well, see my comment above, the kernel was about as explicit as it can
> be - it didn't find a block device to mount as root. However, when
> debugging kernel issues, it is important to be able to record the log.
> You have a serial port console configured in your kernel parameters
> (console=ttyS0,115200), it would be a good idea to connect to 
> the serial
> console and capture the boot messages to a file using minicom, screen,
> or similar.

Done. Attached.

> Another common problem is the hddimg format itself and conflicts with
> certain firmware. You can try the zip image format as described in
> poky/README.hardware under the "Intel Atom based PCs and 
> devices" section.

Tried that, same result.

> Finally, usb sticks are terrible about just being bad. Many 
> of them are
> literally write once devices. They're fine so long as you don't fill
> them up, which works for shuffling small files around, but 
> writing full
> OS images to them tends to kill them in a hurry. Try with a 
> brand new stick.

Tried a fresh one, same results. I'm using a 1GB eUSB SSD, which is
basically an industrial grade flash drive that uses SLC memory, on a card
that sits on the mobo USB header. The image doesn't come close to filling it
up. I've successfully done a live-image boot of full Ubuntu from the 2GB
version of the same drive (same vendor).

It smells to me like that first problem is the real one. Should I try a
clean rebuild? Is there anything I can do short of nuking the entire build
tree with its downloads to ensure a clean rebuild? Or would that be like
waving a dead chicken over it?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 

------=_NextPart_000_01EF_01CE306A.C935DCA0
Content-Type: text/plain;
	name="2013-04-03 120607.txt"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
	filename="2013-04-03 120607.txt"

=00Linux version 3.0.32-yocto-standard (pauld@Chroma) (gcc version 4.7.2 (G=
CC) ) #1 SMP Fri Mar 1 07:34:08 PST 2013
Disabled fast string operations
BIOS-provided physical RAM map:
 BIOS-e820: 0000000000000000 - 000000000008f000 (usable)
 BIOS-e820: 000000000008f000 - 0000000000090000 (reserved)
 BIOS-e820: 0000000000090000 - 000000000009e800 (usable)
 BIOS-e820: 000000000009e800 - 00000000000a0000 (reserved)
 BIOS-e820: 00000000000e0000 - 0000000000100000 (reserved)
 BIOS-e820: 0000000000100000 - 000000003ee95000 (usable)
 BIOS-e820: 000000003ee95000 - 000000003eebf000 (reserved)
 BIOS-e820: 000000003eebf000 - 000000003eeee000 (usable)
 BIOS-e820: 000000003eeee000 - 000000003efbf000 (ACPI NVS)
 BIOS-e820: 000000003efbf000 - 000000003efef000 (usable)
 BIOS-e820: 000000003efef000 - 000000003efff000 (ACPI data)
 BIOS-e820: 000000003efff000 - 000000003f000000 (usable)
 BIOS-e820: 000000003f000000 - 0000000040000000 (reserved)
 BIOS-e820: 00000000e0000000 - 00000000e4000000 (reserved)
 BIOS-e820: 00000000ffe00000 - 0000000100000000 (reserved)
Notice: NX (Execute Disable) protection cannot be enabled: non-PAE kernel!
DMI 2.7 present.
last_pfn =3D 0x3f000 max_arch_pfn =3D 0x100000
x86 PAT enabled: cpu 0, old 0x7040600070406, new 0x7010600070106
found SMP MP-table at [c00fbe40] fbe40
init_memory_mapping: 0000000000000000-00000000377fe000
ACPI: RSDP 000f2240 00024 (v02 INTEL )
ACPI: XSDT 3effe120 00064 (v01 INTEL  DN2800MT 00000098      01000013)
ACPI: FACP 3eff6000 000F4 (v03 INTEL  DN2800MT 00000098 MSFT 0100000D)
ACPI: DSDT 3eff8000 05C91 (v02 INTEL  DN2800MT 00000098 MSFT 0100000D)
ACPI: FACS 3ef85000 00040
ACPI: SSDT 3eff7000 0043E (v01 INTEL  DN2800MT 00000098 MSFT 0100000D)
ACPI: APIC 3eff5000 00084 (v02 INTEL  DN2800MT 00000098 MSFT 0100000D)
ACPI: MCFG 3eff4000 0003C (v01 INTEL  DN2800MT 00000098 MSFT 0100000D)
ACPI: HPET 3eff3000 00038 (v01 INTEL  DN2800MT 00000098 MSFT 0100000D)
ACPI: SSDT 3eff1000 00655 (v01  PmRef    CpuPm 00003000 INTL 20061109)
ACPI: SSDT 3eff0000 00259 (v01  PmRef  Cpu0Tst 00003000 INTL 20061109)
ACPI: SSDT 3efef000 0020F (v01  PmRef    ApTst 00003000 INTL 20061109)
120MB HIGHMEM available.
887MB LOWMEM available.
  mapped low ram: 0 - 377fe000
  low ram: 0 - 377fe000
Zone PFN ranges:
  DMA      0x00000010 -> 0x00001000
  Normal   0x00001000 -> 0x000377fe
  HighMem  0x000377fe -> 0x0003f000
Movable zone start PFN for each node
early_node_map[6] active PFN ranges
    0: 0x00000010 -> 0x0000008f
    0: 0x00000090 -> 0x0000009e
    0: 0x00000100 -> 0x0003ee95
    0: 0x0003eebf -> 0x0003eeee
    0: 0x0003efbf -> 0x0003efef
    0: 0x0003efff -> 0x0003f000
Using APIC driver default
ACPI: PM-Timer IO Port: 0x408
ACPI: LAPIC (acpi_id[0x01] lapic_id[0x00] enabled)
ACPI: LAPIC (acpi_id[0x02] lapic_id[0x01] disabled)
ACPI: LAPIC (acpi_id[0x03] lapic_id[0x02] enabled)
ACPI: LAPIC (acpi_id[0x04] lapic_id[0x03] disabled)
ACPI: LAPIC_NMI (acpi_id[0x01] high level lint[0x1])
ACPI: LAPIC_NMI (acpi_id[0x02] high level lint[0x1])
ACPI: LAPIC_NMI (acpi_id[0x03] high level lint[0x1])
ACPI: LAPIC_NMI (acpi_id[0x04] high level lint[0x1])
ACPI: IOAPIC (id[0x08] address[0xfec00000] gsi_base[0])
IOAPIC[0]: apic_id 8, version 32, address 0xfec00000, GSI 0-23
ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)
ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 high level)
Using ACPI (MADT) for SMP configuration information
ACPI: HPET id: 0x8086a201 base: 0xfed00000
SMP: Allowing 4 CPUs, 2 hotplug CPUs
Allocating PCI resources starting at 40000000 (gap: 40000000:a0000000)
setup_percpu: NR_CPUS:8 nr_cpumask_bits:8 nr_cpu_ids:4 nr_node_ids:1
PERCPU: Embedded 11 pages/cpu @f6feb000 s21504 r0 d23552 u45056
Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 255649
Kernel command line: initrd=3D/initrd LABEL=3Dboot root=3D/dev/ram0 console=
=3DttyS0,115200 console=3Dtty0 video=3Dvesafb vga=3D0x318 BOOT_IMAGE=3D/vml=
inuz=20
PID hash table entries: 4096 (order: 2, 16384 bytes)
Dentry cache hash table entries: 131072 (order: 7, 524288 bytes)
Inode-cache hash table entries: 65536 (order: 6, 262144 bytes)
Initializing CPU#0
Initializing HighMem for node 0 (000377fe:0003f000)
Memory: 1016136k/1032192k available (3394k kernel code, 14528k reserved, 14=
70k data, 332k init, 121820k highmem)
virtual kernel memory layout:
    fixmap  : 0xfff17000 - 0xfffff000   ( 928 kB)
    pkmap   : 0xff800000 - 0xffc00000   (4096 kB)
    vmalloc : 0xf7ffe000 - 0xff7fe000   ( 120 MB)
    lowmem  : 0xc0000000 - 0xf77fe000   ( 887 MB)
      .init : 0xc14c1000 - 0xc1514000   ( 332 kB)
      .data : 0xc1350a36 - 0xc14c0280   (1470 kB)
      .text : 0xc1000000 - 0xc1350a36   (3394 kB)
Checking if this processor honours the WP bit even in supervisor mode...Ok.
SLUB: Genslabs=3D15, HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D4, N=
odes=3D1
Hierarchical RCU implementation.
NR_IRQS:512
Extended CMOS year: 2000
Console: colour dummy device 80x25
console [tty0] enabled
console [ttyS0] enabled
Fast TSC calibration using PIT
Detected 1866.454 MHz processor.
Calibrating delay loop (skipped), value calculated using timer frequency.. =
3732.90 BogoMIPS (lpj=3D7465816)
pid_max: default: 32768 minimum: 301
Mount-cache hash table entries: 512
Disabled fast string operations
CPU: Physical Processor ID: 0
CPU: Processor Core ID: 0
using mwait in idle threads.
ACPI: Core revision 20110413
Enabling APIC mode:  Flat.  Using 1 I/O APICs
..TIMER: vector=3D0x30 apic1=3D0 pin1=3D2 apic2=3D-1 pin2=3D-1
CPU0: Intel(R) Atom(TM) CPU N2800   @ 1.86GHz stepping 01
Performance Events: PEBS fmt0+, generic architected perfmon, Intel PMU driv=
er.
... version:                3
... bit width:              40
... generic registers:      2
... value mask:             000000ffffffffff
... max period:             000000007fffffff
... fixed-purpose events:   3
... event mask:             0000000700000003
Booting Node   0, Processors  #1
Initializing CPU#1
Disabled fast string operations
Brought up 2 CPUs
Total of 2 processors activated (7466.38 BogoMIPS).
NET: Registered protocol family 16
ACPI FADT declares the system doesn't support PCIe ASPM, so disable it
ACPI: bus type pci registered
PCI: MMCONFIG for domain 0000 [bus 00-3f] at [mem 0xe0000000-0xe3ffffff] (b=
ase 0xe0000000)
PCI: MMCONFIG at [mem 0xe0000000-0xe3ffffff] reserved in E820
PCI: Using MMCONFIG for extended config space
PCI: Using configuration type 1 for base access
bio: create slab <bio-0> at 0
ACPI: Executed 1 blocks of module-level executable AML code
[Firmware Bug]: ACPI: BIOS _OSI(Linux) query ignored
ACPI: Interpreter enabled
ACPI: (supports S0 S3 S5)
ACPI: Using IOAPIC for interrupt routing
PCI: Using host bridge windows from ACPI; if necessary, use "pci=3Dnocrs" a=
nd report a bug
ACPI: PCI Root Bridge [PCI0] (domain 0000 [bus 00-ff])
pci_root PNP0A08:00: host bridge window [io  0x0000-0x0cf7]
pci_root PNP0A08:00: host bridge window [io  0x0d00-0xffff]
pci_root PNP0A08:00: host bridge window [mem 0x000a0000-0x000bffff]
pci_root PNP0A08:00: host bridge window [mem 0x000c0000-0x000dffff]
pci_root PNP0A08:00: host bridge window [mem 0x000e0000-0x000effff]
pci_root PNP0A08:00: host bridge window [mem 0x000f0000-0x000fffff]
pci_root PNP0A08:00: host bridge window [mem 0x3f800000-0x3fffffff]
pci_root PNP0A08:00: host bridge window [mem 0x40000000-0xfebfffff]
pci_root PNP0A08:00: host bridge window [mem 0xfed40000-0xfed44fff]
pci 0000:00:1f.0: [Firmware Bug]: TigerPoint LPC.BM_STS cleared
pci 0000:00:1c.0: PCI bridge to [bus 01-01]
pci 0000:00:1e.0: PCI bridge to [bus 02-02] (subtractive decode)
 pci0000:00: Unable to request _OSC control (_OSC support mask: 0x0f)
ACPI: PCI Interrupt Link [LNKA] (IRQs 1 3 4 5 6 7 10 12 14 15) *11
ACPI: PCI Interrupt Link [LNKB] (IRQs 1 3 4 5 6 7 11 12 14 15) *0, disabled=
.
ACPI: PCI Interrupt Link [LNKC] (IRQs 1 3 4 5 6 7 10 12 14 15) *9
ACPI: PCI Interrupt Link [LNKD] (IRQs 1 3 4 5 6 7 *11 12 14 15)
ACPI: PCI Interrupt Link [LNKE] (IRQs 1 3 4 5 6 7 10 12 14 15) *0, disabled=
.
ACPI: PCI Interrupt Link [LNKF] (IRQs 1 3 4 5 6 7 11 12 14 15) *0, disabled=
.
ACPI: PCI Interrupt Link [LNKG] (IRQs 1 3 4 5 6 7 10 12 14 15) *9
ACPI: PCI Interrupt Link [LNKH] (IRQs 1 3 4 5 6 7 11 12 14 15) *10
vgaarb: device added: PCI:0000:00:02.0,decodes=3Dio+mem,owns=3Dio+mem,locks=
=3Dnone
vgaarb: loaded
vgaarb: bridge control possible 0000:00:02.0
SCSI subsystem initialized
usbcore: registered new interface driver usbfs
usbcore: registered new interface driver hub
usbcore: registered new device driver usb
Advanced Linux Sound Architecture Driver Version 1.0.24.
PCI: Using ACPI for IRQ routing
hpet0: at MMIO 0xfed00000, IRQs 2, 8, 0
hpet0: 3 comparators, 64-bit 14.318180 MHz counter
Switching to clocksource hpet
pnp: PnP ACPI init
ACPI: bus type pnp registered
system 00:03: [mem 0xfed00000-0xfed003ff] has been reserved
system 00:05: [io  0x0680-0x069f] has been reserved
system 00:05: [io  0x1000-0x100f] has been reserved
system 00:05: [io  0xffff] has been reserved
system 00:05: [io  0xffff] has been reserved
system 00:05: [io  0x0400-0x047f] has been reserved
system 00:05: [io  0x0500-0x057f] has been reserved
system 00:05: [io  0x0600-0x061f] has been reserved
system 00:06: [io  0x06a0-0x06af] has been reserved
system 00:06: [io  0x06b0-0x06ff] has been reserved
system 00:0a: [mem 0xfed1c000-0xfed1ffff] has been reserved
system 00:0a: [mem 0x00000000-0x00003fff] could not be reserved
system 00:0a: [mem 0x00000000-0x00000fff] could not be reserved
system 00:0a: [mem 0x00000000-0x00000fff] could not be reserved
system 00:0a: [mem 0xfed45000-0xfed8ffff] has been reserved
pnp: PnP ACPI: found 11 devices
ACPI: ACPI bus type pnp unregistered
pci 0000:00:1c.0: BAR 9: assigned [mem 0x40800000-0x409fffff 64bit pref]
pci 0000:00:1c.0: PCI bridge to [bus 01-01]
pci 0000:00:1c.0:   bridge window [io  0x2000-0x2fff]
pci 0000:00:1c.0:   bridge window [mem 0x40000000-0x404fffff]
pci 0000:00:1c.0:   bridge window [mem 0x40800000-0x409fffff 64bit pref]
pci 0000:00:1e.0: PCI bridge to [bus 02-02]
pci 0000:00:1e.0:   bridge window [io  disabled]
pci 0000:00:1e.0:   bridge window [mem disabled]
pci 0000:00:1e.0:   bridge window [mem pref disabled]
pci 0000:00:1c.0: PCI INT A -> GSI 16 (level, low) -> IRQ 16
NET: Registered protocol family 2
IP route cache hash table entries: 32768 (order: 5, 131072 bytes)
TCP established hash table entries: 131072 (order: 8, 1048576 bytes)
TCP bind hash table entries: 65536 (order: 7, 524288 bytes)
TCP: Hash tables configured (established 131072 bind 65536)
TCP reno registered
UDP hash table entries: 512 (order: 2, 16384 bytes)
UDP-Lite hash table entries: 512 (order: 2, 16384 bytes)
NET: Registered protocol family 1
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
highmem bounce pool size: 64 pages
Block layer SCSI generic (bsg) driver version 0.4 loaded (major 253)
io scheduler noop registered
io scheduler deadline registered
io scheduler cfq registered (default)
vesafb: mode is 1024x768x32, linelength=3D4096, pages=3D1
vesafb: scrolling: redraw
vesafb: Truecolor: size=3D8:8:8:8, shift=3D24:16:8:0
vesafb: framebuffer at 0x3f800000, mapped to 0xf8080000, using 6144k, total=
 7872k
Console: switching to colour frame buffer device 128x48
fb0: VESA VGA frame buffer device
input: Power Button as /devices/LNXSYSTM:00/device:00/PNP0C0C:00/input/inpu=
t0
ACPI: Power Button [PWRB]
input: Sleep Button as /devices/LNXSYSTM:00/device:00/PNP0C0E:00/input/inpu=
t1
ACPI: Sleep Button [SLPB]
input: Power Button as /devices/LNXSYSTM:00/LNXPWRBN:00/input/input2
ACPI: Power Button [PWRF]
Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
serial8250: ttyS0 at I/O 0x3f8 (irq =3D 4) is a 16550A
serial8250: ttyS1 at I/O 0x2f8 (irq =3D 3) is a 16550A
00:08: ttyS1 at I/O 0x2f8 (irq =3D 3) is a 16550A
00:09: ttyS0 at I/O 0x3f8 (irq =3D 4) is a 16550A
Linux agpgart interface v0.103
loop: module loaded
e1000: Intel(R) PRO/1000 Network Driver - version 7.3.21-k8-NAPI
e1000: Copyright (c) 1999-2006 Intel Corporation.
e1000e: Intel(R) PRO/1000 Network Driver - 1.3.10-k2
e1000e: Copyright(c) 1999 - 2011 Intel Corporation.
e1000e 0000:01:00.0: Disabling ASPM L0s=20
e1000e 0000:01:00.0: PCI INT A -> GSI 16 (level, low) -> IRQ 16
e1000e 0000:01:00.0: (unregistered net_device): Failed to initialize MSI-X =
interrupts.  Falling back to MSI interrupts.
e1000e 0000:01:00.0: (unregistered net_device): Failed to initialize MSI in=
terrupts.  Falling back to legacy interrupts.
e1000e 0000:01:00.0: eth0: (PCI Express:2.5GT/s:Width x1) 00:22:4d:89:31:15
e1000e 0000:01:00.0: eth0: Intel(R) PRO/1000 Network Connection
e1000e 0000:01:00.0: eth0: MAC: 3, PHY: 8, PBA No: FFFFFF-0FF
ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
ehci_hcd 0000:00:1d.7: PCI INT A -> GSI 23 (level, low) -> IRQ 23
ehci_hcd 0000:00:1d.7: EHCI Host Controller
ehci_hcd 0000:00:1d.7: new USB bus registered, assigned bus number 1
ehci_hcd 0000:00:1d.7: using broken periodic workaround
ehci_hcd 0000:00:1d.7: debug port 1
ehci_hcd 0000:00:1d.7: irq 23, io mem 0x40604000
ehci_hcd 0000:00:1d.7: USB 2.0 started, EHCI 1.00
hub 1-0:1.0: USB hub found
hub 1-0:1.0: 8 ports detected
ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
uhci_hcd: USB Universal Host Controller Interface driver
uhci_hcd 0000:00:1d.0: PCI INT A -> GSI 23 (level, low) -> IRQ 23
uhci_hcd 0000:00:1d.0: UHCI Host Controller
uhci_hcd 0000:00:1d.0: new USB bus registered, assigned bus number 2
uhci_hcd 0000:00:1d.0: irq 23, io base 0x00003080
hub 2-0:1.0: USB hub found
hub 2-0:1.0: 2 ports detected
uhci_hcd 0000:00:1d.1: PCI INT B -> GSI 19 (level, low) -> IRQ 19
uhci_hcd 0000:00:1d.1: UHCI Host Controller
uhci_hcd 0000:00:1d.1: new USB bus registered, assigned bus number 3
uhci_hcd 0000:00:1d.1: irq 19, io base 0x00003060
hub 3-0:1.0: USB hub found
hub 3-0:1.0: 2 ports detected
uhci_hcd 0000:00:1d.2: PCI INT C -> GSI 18 (level, low) -> IRQ 18
uhci_hcd 0000:00:1d.2: UHCI Host Controller
uhci_hcd 0000:00:1d.2: new USB bus registered, assigned bus number 4
uhci_hcd 0000:00:1d.2: irq 18, io base 0x00003040
hub 4-0:1.0: USB hub found
hub 4-0:1.0: 2 ports detected
uhci_hcd 0000:00:1d.3: PCI INT D -> GSI 16 (level, low) -> IRQ 16
uhci_hcd 0000:00:1d.3: UHCI Host Controller
uhci_hcd 0000:00:1d.3: new USB bus registered, assigned bus number 5
uhci_hcd 0000:00:1d.3: irq 16, io base 0x00003020
hub 5-0:1.0: USB hub found
hub 5-0:1.0: 2 ports detected
Initializing USB Mass Storage driver...
usbcore: registered new interface driver usb-storage
USB Mass Storage support registered.
i8042: PNP: No PS/2 controller found. Probing ports directly.
Refined TSC clocksource calibration: 1866.732 MHz.
serio: i8042 KBD port at 0x60,0x64 irq 1
serio: i8042 AUX port at 0x60,0x64 irq 12
mousedev: PS/2 mouse device common for all mice
rtc_cmos 00:07: RTC can wake from S4
rtc_cmos 00:07: rtc core: registered rtc_cmos as rtc0
rtc0: alarms up to one month, y3k, 242 bytes nvram, hpet irqs
cpuidle: using governor ladder
sdhci: Secure Digital Host Controller Interface driver
sdhci: Copyright(c) Pierre Ossman
usbcore: registered new interface driver usbhid
usbhid: USB HID core driver
HDA Intel 0000:00:1b.0: PCI INT A -> GSI 22 (level, low) -> IRQ 22
hda_codec: ALC888-VD: BIOS auto-probing.
ALSA device list:
  #0: HDA Intel at 0x40700000 irq 22
oprofile: using NMI interrupt.
TCP cubic registered
NET: Registered protocol family 17
Using IPI No-Shortcut mode
registered taskstats version 1
rtc_cmos 00:07: setting system clock to 2013-04-03 19:06:38 UTC (1365015998=
)
Switching to clocksource tsc
VFS: Cannot open root device "ram0" or unknown-block(0,0)
Please append a correct "root=3D" boot option; here are the available parti=
tions:
VFS: Unable to mount root fs on unknown-block(0,0)
User configuration error - no valid root filesystem found
Kernel panic - not syncing: Invalid configuration from end user prevents co=
ntinuing
Pid: 1, comm: swapper Not tainted 3.0.32-yocto-standard #1
Call Trace:
 [<c134a3cb>] ? printk+0x19/0x1b
 [<c134a2d7>] panic+0x58/0x133
 [<c14c1a76>] mount_block_root+0x21d/0x232
 [<c10a85f8>] ? sys_mknod+0x28/0x30
 [<c14c165d>] ? start_kernel+0x27a/0x27a
 [<c14c1aea>] mount_root+0x5f/0x66
 [<c14c1c03>] prepare_namespace+0x112/0x14c
 [<c109a8a1>] ? sys_access+0x21/0x30
 [<c14c1797>] kernel_init+0x13a/0x13f
 [<c134ff36>] kernel_thread_helper+0x6/0xd

------=_NextPart_000_01EF_01CE306A.C935DCA0--
