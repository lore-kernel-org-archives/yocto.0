Return-Path: <sean.liming@annabooks.com>
Received: from mail32c40.carrierzone.com (mail32c40.carrierzone.com
	[209.235.156.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4452FE002AB
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2012 23:11:40 -0700 (PDT)
X-Authenticated-User: sean.liming.annabooks.com
Received: from Sean7 (cpe-76-95-170-232.socal.res.rr.com [76.95.170.232])
	(authenticated bits=0)
	by mail32c40.carrierzone.com (8.13.6/8.13.1) with ESMTP id
	q8M6BZWY000448
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Sat, 22 Sep 2012 06:11:36 +0000
From: "Sean Liming" <sean.liming@annabooks.com>
To: <yocto@yoctoproject.org>
Date: Fri, 21 Sep 2012 23:11:25 -0700
Message-ID: <000701cd9889$19ba1760$4d2e4620$@annabooks.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: Ac2YiGQoKhaCopeWQGig2GRim7JjlQ==
X-Antivirus: avast! (VPS 120921-0, 09/21/2012), Outbound message
X-Antivirus-Status: Clean
X-CSC: 0
X-CHA: v=1.1 cv=Ez94Tw3ujgScwXs1pC+PmdLr+QYD70VLeGu7Cz1MAHQ= c=1 sm=1
	a=_DgR7O7FQkkA:10 a=6XZH3zlyYmADzTbsPzlaoQ==:17 a=iGHA9ds3AAAA:8
	a=22pK5S-mAAAA:8 a=YNZcD-qu7wPhc_wpVKYA:9 a=CjuIK1q_8ugA:10
	a=FCaQVidmf_IA:10 a=nHK3ipOpxeAA:10 a=yMhMjlubAAAA:8 a=SSmOFEACAAAA:8
	a=Zvg53oopkw-fdjMq_U8A:9 a=gKO2Hq4RSVkA:10 a=UiCQ7L4-1S4A:10
	a=hTZeC7Yk6K0A:10 a=frz4AuCg-hUA:10 a=ywKQ8G30V80A:10 a=20KFwNOVAAAA:8
	a=ppFBjuVgxoVRbKc3jQQA:9 a=jEp0ucaQiEUA:10 a=fr_lkazuhHpQlkzw:21
	a=-5ouz3xD2GujSaQ6:21 a=6XZH3zlyYmADzTbsPzlaoQ==:117
X-CTCH-Spam: Unknown
X-CTCH-RefID: str=0001.0A020201.505D5699.003B, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0
Subject: UEFI support for Crown Bay
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
X-List-Received-Date: Sat, 22 Sep 2012 06:11:41 -0000
X-Groupsio-MsgNum: 9590
Content-Type: multipart/mixed;
	boundary="----=_NextPart_000_0008_01CD984E.6D5D8950"
Content-Language: en-us

------=_NextPart_000_0008_01CD984E.6D5D8950
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_0009_01CD984E.6D5D8950"

------=_NextPart_001_0009_01CD984E.6D5D8950
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

 

Yocto=1.2

BSB = Crown Bay (Intel Atom Processor E660 with Intel Platform Controller
Hub EG20T Development Kit)

Target System= Inforce Computing, Inc. - SYS9400 Reference Platform -  VGA
output only.

UEFI only no BIOS

Base Image: core-image-minimal

Hob used to build the image

 

 

 

The target platform only has UEFI and doesn't have traditional BIOS. I am
able to re-configure the UEFI firmware using the BLDK application if needed.
The Crown Bay BSP doesn't include an efi loader (bootia32.efi) like Cedar
Trail BSP in the live image (hddimg). If I add the EFI boot files from Cedar
Trail live image, the USB flash disk presents the menu for boot or install.
Upon selecting boot, I can see output on the serial console, but it
eventually stops no output on the VGA monitor. I have attached the output
from the serial port.

 

1. Is UEFI supported with Crown Bay BSP? Is there a flag that needs to be
set like EFI = "1"?

 

There seems to be discussions about this back in 2011:

https://lists.yoctoproject.org/pipermail/yocto/2011-November/005806.html

http://lists.linuxtogo.org/pipermail/openembedded-core/2011-November/012972.
html

 

2. Is it possible to setup serial console for Crown Bay? I tried the
following flags from the n450 information:

 

SYSLINUX_OPTS_atom-pc = "serial 0 115200"

SERIAL_CONSOLE_atom-pc = "115200 ttyS0"

APPEND_atom-pc = "console=ttyS0,115200 console=tty0"

 

3. There was some discussion about EMGD and X Windows issues and a possible
fix. Where can I download the latest BSP to try out?

 

 

Regards,

 

Sean Liming

Annabooks

Tel: 714-970-7523 / Cell: 858-774-3176

 


------=_NextPart_001_0009_01CD984E.6D5D8950
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 14 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Yocto=3D1.2<o:p></o:p></p><p class=3DMsoNormal>BSB =3D =
Crown Bay (Intel Atom Processor E660 with Intel Platform Controller Hub =
EG20T Development Kit)<o:p></o:p></p><p class=3DMsoNormal>Target =
System=3D Inforce Computing, Inc. - SYS9400 Reference Platform -&nbsp; =
VGA output only.<o:p></o:p></p><p class=3DMsoNormal>UEFI only no =
BIOS<o:p></o:p></p><p class=3DMsoNormal>Base Image: =
core-image-minimal<o:p></o:p></p><p class=3DMsoNormal>Hob used to build =
the image<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>The target =
platform only has UEFI and doesn&#8217;t have traditional BIOS. I am =
able to re-configure the UEFI firmware using the BLDK application if =
needed. The Crown Bay BSP doesn&#8217;t include an efi loader =
(bootia32.efi) like Cedar Trail BSP in the live image (hddimg). If I add =
the EFI boot files from Cedar Trail live image, the USB flash disk =
presents the menu for boot or install. Upon selecting boot, I can see =
output on the serial console, but it eventually stops no output on the =
VGA monitor. I have attached the output from the serial =
port.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>1. Is UEFI supported with Crown Bay BSP? Is there a =
flag that needs to be set like EFI =3D &#8220;1&#8221;?<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>There seems =
to be discussions about this back in 2011:<o:p></o:p></p><p =
class=3DMsoNormal>https://lists.yoctoproject.org/pipermail/yocto/2011-Nov=
ember/005806.html<o:p></o:p></p><p =
class=3DMsoNormal>http://lists.linuxtogo.org/pipermail/openembedded-core/=
2011-November/012972.html<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>2. Is it =
possible to setup serial console for Crown Bay? I tried the following =
flags from the n450 information:<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>SYSLINUX_OPTS_atom-pc =3D &quot;serial 0 =
115200&quot;<o:p></o:p></p><p class=3DMsoNormal>SERIAL_CONSOLE_atom-pc =
=3D &quot;115200 ttyS0&quot;<o:p></o:p></p><p =
class=3DMsoNormal>APPEND_atom-pc =3D &quot;console=3DttyS0,115200 =
console=3Dtty0&quot;<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>3. There was =
some discussion about EMGD and X Windows issues and a possible fix. =
Where can I download the latest BSP to try out?<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Regards,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Sean =
Liming<o:p></o:p></p><p class=3DMsoNormal>Annabooks<o:p></o:p></p><p =
class=3DMsoNormal>Tel: 714-970-7523 / Cell: =
858-774-3176<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>

------=_NextPart_001_0009_01CD984E.6D5D8950--

------=_NextPart_000_0008_01CD984E.6D5D8950
Content-Type: text/plain;
	name="serialoutput.txt"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
	filename="serialoutput.txt"

Initializing cgroup subsys cpuset
Initializing cgroup subsys cpu
Linux version 3.2.18-yocto-standard (sean@sean76Pro) (gcc version 4.6.4 201=
20303 (prerelease) (GCC) ) #1 SMP PREEMPT Fri Sep 21 21:06:20 PDT 2012
BIOS-provided physical RAM map:
 BIOS-e820: 0000000000000000 - 000000000009f000 (usable)
 BIOS-e820: 000000000009f000 - 00000000000a0000 (reserved)
 BIOS-e820: 0000000000100000 - 000000001f2df000 (usable)
 BIOS-e820: 000000001f2df000 - 000000001f39f000 (reserved)
 BIOS-e820: 000000001f39f000 - 000000001f3df000 (ACPI data)
 BIOS-e820: 000000001f3df000 - 000000001f4c2000 (ACPI NVS)
 BIOS-e820: 000000001f4c2000 - 000000001f4ca000 (reserved)
 BIOS-e820: 000000001f4ca000 - 000000001f6da000 (ACPI NVS)
 BIOS-e820: 000000001f6da000 - 000000001f6dc000 (usable)
 BIOS-e820: 000000001f6dc000 - 000000001f6df000 (ACPI NVS)
 BIOS-e820: 000000001f6df000 - 000000001f6ef000 (reserved)
 BIOS-e820: 000000001f6ef000 - 000000001f6f0000 (usable)
 BIOS-e820: 00000000fed1c000 - 00000000fed20000 (reserved)
 BIOS-e820: 00000000fffc0000 - 00000000fffca000 (reserved)
Notice: NX (Execute Disable) protection cannot be enabled: non-PAE kernel!
DMI not present or invalid.
last_pfn =3D 0x1f6f0 max_arch_pfn =3D 0x100000
x86 PAT enabled: cpu 0, old 0x7040600070406, new 0x7010600070106
init_memory_mapping: 0000000000000000-000000001f6f0000
RAMDISK: 1dd2f000 - 1e29b000
ACPI Error: A valid RSDP was not found (20110623/tbxfroot-219)
0MB HIGHMEM available.
502MB LOWMEM available.
  mapped low ram: 0 - 1f6f0000
  low ram: 0 - 1f6f0000
Zone PFN ranges:
  DMA      0x00000010 -> 0x00001000
  Normal   0x00001000 -> 0x0001f6f0
  HighMem  empty
Movable zone start PFN for each node
early_node_map[4] active PFN ranges
    0: 0x00000010 -> 0x0000009f
    0: 0x00000100 -> 0x0001f2df
    0: 0x0001f6da -> 0x0001f6dc
    0: 0x0001f6ef -> 0x0001f6f0
Using APIC driver default
SMP: Allowing 1 CPUs, 0 hotplug CPUs
Found and enabled local APIC!
Allocating PCI resources starting at 1f6f0000 (gap: 1f6f0000:df62c000)
setup_percpu: NR_CPUS:8 nr_cpumask_bits:8 nr_cpu_ids:1 nr_node_ids:1
PERCPU: Embedded 13 pages/cpu @deee0000 s28992 r0 d24256 u53248
Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 126595
Kernel command line: BOOT_IMAGE=3D/vmlinuz LABEL=3Dboot root=3D/dev/ram0 co=
nsole=3DttyS0,115200 console=3Dtty0
PID hash table entries: 2048 (order: 1, 8192 bytes)
Dentry cache hash table entries: 65536 (order: 6, 262144 bytes)
Inode-cache hash table entries: 32768 (order: 5, 131072 bytes)
Initializing CPU#0
allocated 2059776 bytes of page_cgroup
please try 'cgroup_disable=3Dmemory' option if you don't want memory cgroup=
s
Initializing HighMem for node 0 (00000000:00000000)
Memory: 489912k/515008k available (5079k kernel code, 20492k reserved, 2307=
k data, 488k init, 0k highmem)
virtual kernel memory layout:
    fixmap  : 0xfff17000 - 0xfffff000   ( 928 kB)
    pkmap   : 0xff800000 - 0xffc00000   (4096 kB)
    vmalloc : 0xdfef0000 - 0xff7fe000   ( 505 MB)
    lowmem  : 0xc0000000 - 0xdf6f0000   ( 502 MB)
      .init : 0xc1737000 - 0xc17b1000   ( 488 kB)
      .data : 0xc14f5f09 - 0xc1736bc0   (2307 kB)
      .text : 0xc1000000 - 0xc14f5f09   (5079 kB)
Checking if this processor honours the WP bit even in supervisor mode...Ok.
SLUB: Genslabs=3D15, HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D1, N=
odes=3D1
Preemptible hierarchical RCU implementation.
NR_IRQS:2304 nr_irqs:256 16
Console: colour dummy device 80x25
console [tty0] enabled
console [ttyS0] enabled
Fast TSC calibration using PIT
Detected 1300.190 MHz processor.
Calibrating delay loop (skipped), value calculated using timer frequency.. =
2600.38 BogoMIPS (lpj=3D5200760)
pid_max: default: 32768 minimum: 301
Security Framework initialized
Mount-cache hash table entries: 512
Initializing cgroup subsys debug
Initializing cgroup subsys cpuacct
Initializing cgroup subsys memory
Initializing cgroup subsys devices
Initializing cgroup subsys freezer
Initializing cgroup subsys blkio
CPU: Physical Processor ID: 0
CPU: Processor Core ID: 0
using mwait in idle threads.
SMP alternatives: switching to UP code
Freeing SMP alternatives: 20k freed
ftrace: allocating 21515 entries in 43 pages
weird, boot CPU (#0) not listed by the BIOS.
SMP motherboard not detected.
Enabling APIC mode:  Flat.  Using 0 I/O APICs
SMP disabled
Performance Events: PEBS fmt0+, generic architected perfmon, Intel PMU driv=
er.
... version:                3
... bit width:              40
... generic registers:      2
... value mask:             000000ffffffffff
... max period:             000000007fffffff
... fixed-purpose events:   3
... event mask:             0000000700000003
Brought up 1 CPUs
Total of 1 processors activated (2600.38 BogoMIPS).
devtmpfs: initialized
NET: Registered protocol family 16
PCI: Using configuration type 1 for base access
bio: create slab <bio-0> at 0
ACPI: Interpreter disabled.
vgaarb: loaded
SCSI subsystem initialized
usbcore: registered new interface driver usbfs
usbcore: registered new interface driver hub
usbcore: registered new device driver usb
Advanced Linux Sound Architecture Driver Version 1.0.24.
PCI: Probing PCI hardware
pci 0000:00:17.0: PCI bridge to [bus 01-02]
pci 0000:01:00.0: PCI bridge to [bus 02-02]
vgaarb: device added: PCI:0000:00:02.0,decodes=3Dio+mem,owns=3Dio+mem,locks=
=3Dnone
pnp: PnP ACPI: disabled
pci 0000:01:00.0: no compatible bridge window for [mem 0xffff0000-0xfffffff=
f pref]
pci 0000:02:00.0: no compatible bridge window for [mem 0xfffe0000-0xfffffff=
f pref]
pci 0000:02:06.0: no compatible bridge window for [mem 0xfffe0000-0xfffffff=
f pref]
pci 0000:00:17.0: BAR 9: assigned [mem 0x20000000-0x201fffff pref]
pci 0000:01:00.0: BAR 9: assigned [mem 0x20000000-0x200fffff pref]
pci 0000:01:00.0: BAR 6: assigned [mem 0x20100000-0x2010ffff pref]
pci 0000:02:00.0: BAR 6: assigned [mem 0x20000000-0x2001ffff pref]
pci 0000:02:06.0: BAR 6: assigned [mem 0x20020000-0x2003ffff pref]
pci 0000:01:00.0: PCI bridge to [bus 02-02]
pci 0000:01:00.0:   bridge window [io  0x2000-0x2fff]
pci 0000:01:00.0:   bridge window [mem 0xa0000000-0xa00fffff]
pci 0000:01:00.0:   bridge window [mem 0x20000000-0x200fffff pref]
pci 0000:00:17.0: PCI bridge to [bus 01-02]
pci 0000:00:17.0:   bridge window [io  0x2000-0x2fff]
pci 0000:00:17.0:   bridge window [mem 0xa0000000-0xa00fffff]
pci 0000:00:17.0:   bridge window [mem 0x20000000-0x201fffff pref]
pci 0000:00:17.0: can't find IRQ for PCI INT A; please try using pci=3Dbios=
irq
pci 0000:01:00.0: can't find IRQ for PCI INT A; please try using pci=3Dbios=
irq
NET: Registered protocol family 2
IP route cache hash table entries: 4096 (order: 2, 16384 bytes)
TCP established hash table entries: 16384 (order: 5, 131072 bytes)
TCP bind hash table entries: 16384 (order: 5, 131072 bytes)
TCP: Hash tables configured (established 16384 bind 16384)
TCP reno registered
UDP hash table entries: 256 (order: 1, 8192 bytes)
UDP-Lite hash table entries: 256 (order: 1, 8192 bytes)
NET: Registered protocol family 1
RPC: Registered named UNIX socket transport module.
RPC: Registered udp transport module.
RPC: Registered tcp transport module.
RPC: Registered tcp NFSv4.1 backchannel transport module.
pci 0000:02:02.0: can't find IRQ for PCI INT B; please try using pci=3Dbios=
irq
pci 0000:02:02.1: can't find IRQ for PCI INT B; please try using pci=3Dbios=
irq
pci 0000:02:02.2: can't find IRQ for PCI INT B; please try using pci=3Dbios=
irq
pci 0000:02:02.3: can't find IRQ for PCI INT B; please try using pci=3Dbios=
irq
pci 0000:02:08.0: can't find IRQ for PCI INT A; please try using pci=3Dbios=
irq
pci 0000:02:08.1: can't find IRQ for PCI INT A; please try using pci=3Dbios=
irq
pci 0000:02:08.2: can't find IRQ for PCI INT A; please try using pci=3Dbios=
irq
pci 0000:02:08.3: can't find IRQ for PCI INT A; please try using pci=3Dbios=
irq
Trying to unpack rootfs image as initramfs...
Freeing initrd memory: 5552k freed
platform rtc_cmos: registered platform RTC device (no PNP device found)
VFS: Disk quotas dquot_6.5.2
Dquot-cache hash table entries: 1024 (order 0, 4096 bytes)
Registering unionfs 2.5.10 (for 3.1.0-rc4)
msgmni has been set to 967
Block layer SCSI generic (bsg) driver version 0.4 loaded (major 254)
io scheduler noop registered
io scheduler deadline registered
io scheduler cfq registered (default)
pch_gpio 0000:02:00.2: can't find IRQ for PCI INT A; please try using pci=
=3Dbiosirq
pch_gpio 0000:02:00.2: pch_gpio_probe request_irq failed
pch_gpio 0000:02:00.2: pch_gpio_probe Failed returns 0
pcieport 0000:00:17.0: device [8086:8184] has invalid IRQ; check vendor BIO=
S
Marking TSC unstable due to TSC halts in idle states deeper than C2
pch-dma 0000:02:0a.0: enabling device (0000 -> 0002)
pch-dma 0000:02:0a.0: can't find IRQ for PCI INT B; please try using pci=3D=
biosirq
pch-dma 0000:02:0a.0: Failed to request IRQ
pch-dma: probe of 0000:02:0a.0 failed with error -16
pch-dma 0000:02:0c.0: enabling device (0000 -> 0002)
pch-dma 0000:02:0c.0: can't find IRQ for PCI INT C; please try using pci=3D=
biosirq
pch-dma 0000:02:0c.0: Failed to request IRQ
pch-dma: probe of 0000:02:0c.0 failed with error -16
Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
serial8250: ttyS0 at I/O 0x3f8 (irq =3D 4) is a 16550A
serial8250: ttyS1 at I/O 0x2f8 (irq =3D 3) is a 16550A
serial 0000:02:0a.1: enabling device (0000 -> 0003)
serial 0000:02:0a.1: can't find IRQ for PCI INT B; please try using pci=3Db=
iosirq
0000:02:0a.1: ttyS2 at I/O 0x2058 (irq =3D 0) is a 16550A
serial 0000:02:0a.2: enabling device (0000 -> 0003)
serial 0000:02:0a.2: can't find IRQ for PCI INT B; please try using pci=3Db=
iosirq
0000:02:0a.2: ttyS3 at I/O 0x2050 (irq =3D 0) is a 16550A
serial 0000:02:0a.3: enabling device (0000 -> 0003)
serial 0000:02:0a.3: can't find IRQ for PCI INT B; please try using pci=3Db=
iosirq
Couldn't register serial port 0000:02:0a.3: -28
serial 0000:02:0a.4: enabling device (0000 -> 0003)
serial 0000:02:0a.4: can't find IRQ for PCI INT B; please try using pci=3Db=
iosirq
Couldn't register serial port 0000:02:0a.4: -28
Linux agpgart interface v0.103
[drm] Initialized drm 1.1.0 20060810
brd: module loaded
loop: module loaded
ahci 0000:02:06.0: can't find IRQ for PCI INT D; please try using pci=3Dbio=
sirq
ahci 0000:02:06.0: AHCI 0001.0100 32 slots 2 ports 3 Gbps 0x3 impl SATA mod=
e
ahci 0000:02:06.0: flags: ncq sntf pm led clo only pmp pio slum part ccc=20
------------[ cut here ]------------
WARNING: at /home/sean/Yocto/hobbuilds/tmp/work/crownbay-poky-linux/linux-y=
octo-3.2.18+git8+5b4c9dc78b5ae607173cc3ddab9bce1b5f78129b_1+48101e609711fc)
Modules linked in:
Pid: 1, comm: swapper/0 Not tainted 3.2.18-yocto-standard #1
Call Trace:
 [<c14e8696>] ? printk+0x1e/0x20
 [<c103bfc3>] warn_slowpath_common+0x73/0xa0
 [<c12e476c>] ? ata_host_activate+0xec/0x100
 [<c12e476c>] ? ata_host_activate+0xec/0x100
 [<c103c013>] warn_slowpath_null+0x23/0x30
 [<c12e476c>] ata_host_activate+0xec/0x100
 [<c12f7c20>] ? ahci_pmp_qc_defer+0x40/0x40
 [<c12f5d84>] ahci_init_one+0x5c4/0x8d0
 [<c14eea56>] ? _raw_spin_unlock_irqrestore+0x16/0x40
 [<c12223dd>] pci_device_probe+0x8d/0x120
 [<c114b8b8>] ? sysfs_create_link+0x18/0x20
 [<c12b4e99>] driver_probe_device+0x69/0x170
 [<c1221f72>] ? pci_match_device+0xb2/0xc0
 [<c12b5031>] __driver_attach+0x91/0xa0
 [<c12b4fa0>] ? driver_probe_device+0x170/0x170
 [<c12b40e9>] bus_for_each_dev+0x49/0x80
 [<c12b4bb2>] driver_attach+0x22/0x30
 [<c12b4fa0>] ? driver_probe_device+0x170/0x170
 [<c12b488f>] bus_add_driver+0x17f/0x260
 [<c1222240>] ? pci_dev_put+0x20/0x20
 [<c12b54eb>] driver_register+0x6b/0x120
 [<c1222e03>] __pci_register_driver+0x43/0xc0
 [<c175bb4f>] ahci_init+0x14/0x16
 [<c1001126>] do_one_initcall+0x36/0x170
 [<c1209b2a>] ? radix_tree_lookup+0xa/0x10
 [<c1083824>] ? irq_to_desc+0x14/0x20
 [<c175bb3b>] ? ata_sff_init+0x39/0x39
 [<c17377de>] kernel_init+0xaf/0x16e
 [<c1031685>] ? schedule_tail+0x25/0xa0
 [<c14f4c46>] ? ret_from_fork+0x6/0x1c
 [<c173772f>] ? start_kernel+0x2fb/0x2fb
 [<c173772f>] ? start_kernel+0x2fb/0x2fb
 [<c14f51f6>] kernel_thread_helper+0x6/0x10
---[ end trace 8ac8d7ad169d2d66 ]---
scsi0 : ahci
scsi1 : ahci
ata1: SATA max UDMA/133 abar m1024@0xa0003000 port 0xa0003100
ata2: SATA max UDMA/133 abar m1024@0xa0003000 port 0xa0003180
pch_spi 0000:02:0c.1: enabling device (0000 -> 0002)
pch_spi 0000:02:0c.1: can't find IRQ for PCI INT C; please try using pci=3D=
biosirq
pch-spi pch-spi.0: pch_spi_pd_probe request_irq failed
pch-spi: probe of pch-spi.0 failed with error -16
CAN device driver interface
pch_can 0000:02:0c.3: enabling device (0000 -> 0002)
pch_can 0000:02:0c.3: can't find IRQ for PCI INT C; please try using pci=3D=
biosirq
pch_can 0000:02:0c.3: (unregistered net_device): PCH CAN opened without MSI
e100: Intel(R) PRO/100 Network Driver, 3.5.24-k2-NAPI
e100: Copyright(c) 1999-2006 Intel Corporation
e1000: Intel(R) PRO/1000 Network Driver - version 7.3.21-k8-NAPI
e1000: Copyright (c) 1999-2006 Intel Corporation.
e1000e: Intel(R) PRO/1000 Network Driver - 1.5.1-k
e1000e: Copyright(c) 1999 - 2011 Intel Corporation.
pch_gbe 0000:02:00.1: enabling device (0000 -> 0003)
pch_gbe 0000:02:00.1: can't find IRQ for PCI INT A; please try using pci=3D=
biosirq
pch_gbe 0000:02:00.1: Invalid MAC address, interface disabled.
pch_gbe 0000:02:00.1: MAC address : 00:00:00:00:00:00
ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
ehci_hcd 0000:02:02.3: can't find IRQ for PCI INT B; please try using pci=
=3Dbiosirq
ehci_hcd 0000:02:02.3: Found HC with no IRQ.  Check BIOS/PCI 0000:02:02.3 s=
etup!
ehci_hcd 0000:02:02.3: init 0000:02:02.3 fail, -19
ehci_hcd 0000:02:08.3: can't find IRQ for PCI INT A; please try using pci=
=3Dbiosirq
ehci_hcd 0000:02:08.3: Found HC with no IRQ.  Check BIOS/PCI 0000:02:08.3 s=
etup!
ehci_hcd 0000:02:08.3: init 0000:02:08.3 fail, -19
ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
ohci_hcd 0000:02:02.0: can't find IRQ for PCI INT B; please try using pci=
=3Dbiosirq
ohci_hcd 0000:02:02.0: Found HC with no IRQ.  Check BIOS/PCI 0000:02:02.0 s=
etup!
ohci_hcd 0000:02:02.0: init 0000:02:02.0 fail, -19
ohci_hcd 0000:02:02.1: can't find IRQ for PCI INT B; please try using pci=
=3Dbiosirq
ohci_hcd 0000:02:02.1: Found HC with no IRQ.  Check BIOS/PCI 0000:02:02.1 s=
etup!
ohci_hcd 0000:02:02.1: init 0000:02:02.1 fail, -19
ohci_hcd 0000:02:02.2: can't find IRQ for PCI INT B; please try using pci=
=3Dbiosirq
ohci_hcd 0000:02:02.2: Found HC with no IRQ.  Check BIOS/PCI 0000:02:02.2 s=
etup!
ohci_hcd 0000:02:02.2: init 0000:02:02.2 fail, -19
ohci_hcd 0000:02:08.0: can't find IRQ for PCI INT A; please try using pci=
=3Dbiosirq
ohci_hcd 0000:02:08.0: Found HC with no IRQ.  Check BIOS/PCI 0000:02:08.0 s=
etup!
ohci_hcd 0000:02:08.0: init 0000:02:08.0 fail, -19
ohci_hcd 0000:02:08.1: can't find IRQ for PCI INT A; please try using pci=
=3Dbiosirq
ohci_hcd 0000:02:08.1: Found HC with no IRQ.  Check BIOS/PCI 0000:02:08.1 s=
etup!
ohci_hcd 0000:02:08.1: init 0000:02:08.1 fail, -19
ohci_hcd 0000:02:08.2: can't find IRQ for PCI INT A; please try using pci=
=3Dbiosirq
ohci_hcd 0000:02:08.2: Found HC with no IRQ.  Check BIOS/PCI 0000:02:08.2 s=
etup!
ohci_hcd 0000:02:08.2: init 0000:02:08.2 fail, -19
Initializing USB Mass Storage driver...
usbcore: registered new interface driver usb-storage
USB Mass Storage support registered.
pch_udc 0000:02:02.4: enabling device (0000 -> 0002)
pch_udc 0000:02:02.4: can't find IRQ for PCI INT B; please try using pci=3D=
biosirq
pch_udc 0000:02:02.4: pch_udc_probe: irq not set
(NULL device *): gadget not registered.
i8042: PNP: No PS/2 controller found. Probing ports directly.
i8042: No controller found
mousedev: PS/2 mouse device common for all mice
i2c_eg20t 0000:02:0c.2: enabling device (0000 -> 0002)
i2c_eg20t 0000:02:0c.2: can't find IRQ for PCI INT C; please try using pci=
=3Dbiosirq
i2c_eg20t 0000:02:0c.2: pch_i2c_probe :request_irq FAILED
i2c_eg20t: probe of 0000:02:0c.2 failed with error -16
md: linear personality registered for level -1
md: raid0 personality registered for level 0
md: raid1 personality registered for level 1
md: raid10 personality registered for level 10
md: multipath personality registered for level -4
md: faulty personality registered for level -5
device-mapper: ioctl: 4.22.0-ioctl (2011-10-19) initialised: dm-devel@redha=
t.com
cpuidle: using governor ladder
cpuidle: using governor menu
sdhci: Secure Digital Host Controller Interface driver
sdhci: Copyright(c) Pierre Ossman
sdhci-pci 0000:02:04.0: SDHCI controller found [8086:8809] (rev 1)
sdhci-pci 0000:02:04.0: can't find IRQ for PCI INT C; please try using pci=
=3Dbiosirq
sdhci-pci 0000:02:04.0: Invalid iomem size. You may experience problems.
sdhci-pci: probe of 0000:02:04.0 failed with error -16
sdhci-pci 0000:02:04.1: SDHCI controller found [8086:880a] (rev 1)
sdhci-pci 0000:02:04.1: can't find IRQ for PCI INT C; please try using pci=
=3Dbiosirq
sdhci-pci 0000:02:04.1: Invalid iomem size. You may experience problems.
sdhci-pci: probe of 0000:02:04.1 failed with error -16
usbcore: registered new interface driver usbhid
usbhid: USB HID core driver
snd_hda_intel 0000:00:1b.0: enabling device (0000 -> 0002)
ata1: SATA link down (SStatus 0 SControl 300)
snd_hda_intel 0000:00:1b.0: can't find IRQ for PCI INT A; please try using =
pci=3Dbiosirq
ata2: SATA link down (SStatus 0 SControl 300)
hda-intel: unable to grab IRQ 0, disabling device
snd_hda_intel: probe of 0000:00:1b.0 failed with error -16
ALSA device list:
  No soundcards found.
oprofile: using NMI interrupt.
TCP cubic registered
NET: Registered protocol family 17
can: controller area network core (rev 20090105 abi 8)
NET: Registered protocol family 29
Registering the dns_resolver key type
Using IPI No-Shortcut mode
registered taskstats version 1
console [netcon0] enabled
netconsole: network logging started
Freeing unused kernel memory: 488k freed
udev[41]: starting version 164


------=_NextPart_000_0008_01CD984E.6D5D8950--
