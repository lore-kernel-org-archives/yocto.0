Return-Path: <juergen.messerer@bbv.ch>
Received: from owa.outnet.ch (mail.outnet.ch [80.67.146.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB34CE00746
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2012 04:07:05 -0700 (PDT)
Received: from TKSSREX01.outnet.ch ([10.10.10.1]) by tkssrexhcu01.outnet.ch
	([172.17.220.45]) with mapi; Tue, 12 Jun 2012 13:07:04 +0200
From: =?iso-8859-1?Q?J=FCrgen_Messerer?= <juergen.messerer@bbv.ch>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 12 Jun 2012 13:07:03 +0200
Thread-Topic: qemux86 Image won't boot from CF
Thread-Index: Ac1Ihypp0f17Nb7aRZ2WUVoZ8yOkcQ==
Message-ID: <A7B59F6D52627C44813C136D437B0832068BC78CACF3@TKSSREX01.outnet.ch>
Accept-Language: en-US, de-CH
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, de-CH
MIME-Version: 1.0
Subject: qemux86 Image won't boot from CF
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
X-List-Received-Date: Tue, 12 Jun 2012 11:07:06 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_A7B59F6D52627C44813C136D437B0832068BC78CACF3TKSSREX01ou_"

--_000_A7B59F6D52627C44813C136D437B0832068BC78CACF3TKSSREX01ou_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi everybody.

The following problem occurs when I try to start a x86 linux system from CF=
-Card.

I have generate a qemux86 core-image-minimal  image with the latest pokey.
After that I have copied everything on a CF including bzImage-3.2.1-yocto-s=
tandard
Grub was already installed from an old linux version.

I configured grubs menu.lst.
Ther kernel starts perfectly util it like to finde the rootfs.
Only one ext2 partion exist on the CF-Card.
If have tried hda1 hdb1 hdc1 sda1 sdb1 sdc1 for the to root option. Same pr=
oblem.
I also tried initrd. Same problem.
I also tried rootfs from narcissus. Same problem.

I appreciate any help.

Thanks.

Regards

Juergen

----------------------------------------
Menu.lst :
----------------------------------------
serial --unit=3D0 --speed=3D57600
terminal --timeout=3D1 serial console
default 0

# tell grub to find the kernel on /dev/hda1
root (hd0,0)
savedefault

# start menu entry with title
title OpenEmbedded GNU/Linux

title New OE serial console
root (hd0,0)
kernel /boot/bzImage-3.2.11-yocto-standard serialconsole root=3D/dev/hdb1 i=
nit=3D/sbin/init console=3Dtty0 console=3DttyS0,57600n8
savedefault


------------------------
KERNEL Output:
------------------------
  Booting 'New OE serial console'

root (hd0,0)
Filesystem type is ext2fs, partition type 0x83
kernel /boot/bzImage-3.2.11-yocto-standard serialconsole root=3D/dev/hdb1 i=
nit=3D/s
bin/init console=3Dtty0 console=3DttyS0,57600n8
   [Linux-bzImage, setup=3D0x3a00, size=3D0x441020]
savedefault

Initializing cgroup subsys cpuset
Initializing cgroup subsys cpu
Linux version 3.2.11-yocto-standard (blabla@blabla-virtual-machine) (gcc ve=
rsion 4.6.4 20120303 (prerelea2
BIOS-provided physical RAM map:
BIOS-e820: 0000000000000000 - 000000000009e000 (usable)
BIOS-e820: 000000000009e000 - 00000000000a0000 (reserved)
BIOS-e820: 00000000000f0000 - 0000000000100000 (reserved)
BIOS-e820: 0000000000100000 - 000000000f7c0000 (usable)
BIOS-e820: 00000000ffff0000 - 0000000100000000 (reserved)
Notice: NX (Execute Disable) protection missing in CPU!
DMI 2.2 present.
last_pfn =3D 0xf7c0 max_arch_pfn =3D 0x100000
init_memory_mapping: 0000000000000000-000000000f7c0000
ACPI Error: A valid RSDP was not found (20110623/tbxfroot-219)
0MB HIGHMEM available.
247MB LOWMEM available.
  mapped low ram: 0 - 0f7c0000
  low ram: 0 - 0f7c0000
Zone PFN ranges:
  DMA      0x00000010 -> 0x00001000
  Normal   0x00001000 -> 0x0000f7c0
  HighMem  empty
Movable zone start PFN for each node
early_node_map[2] active PFN ranges
    0: 0x00000010 -> 0x0000009e
    0: 0x00000100 -> 0x0000f7c0
Using APIC driver default
SMP: Allowing 1 CPUs, 0 hotplug CPUs
No local APIC present or hardware disabled
APIC: disable apic facility
APIC: switched to apic NOOP
Allocating PCI resources starting at f7c0000 (gap: f7c0000:f0830000)
setup_percpu: NR_CPUS:8 nr_cpumask_bits:8 nr_cpu_ids:1 nr_node_ids:1
PERCPU: Embedded 13 pages/cpu @cf000000 s29056 r0 d24192 u4194304
Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 62814
Kernel command line: serialconsole root=3D/dev/hdb1 init=3D/sbin/init conso=
le=3Dtty0 console=3DttyS0,57600n8
PID hash table entries: 1024 (order: 0, 4096 bytes)
Dentry cache hash table entries: 32768 (order: 5, 131072 bytes)
Inode-cache hash table entries: 16384 (order: 4, 65536 bytes)
Initializing CPU#0
allocated 1014528 bytes of page_cgroup
please try 'cgroup_disable=3Dmemory' option if you don't want memory cgroup=
s
Initializing HighMem for node 0 (00000000:00000000)
Memory: 241100k/253696k available (5440k kernel code, 12140k reserved, 2458=
k data, 492k init, 0k highmem)
virtual kernel memory layout:
    fixmap  : 0xfff17000 - 0xfffff000   ( 928 kB)
    pkmap   : 0xff800000 - 0xffc00000   (4096 kB)
    vmalloc : 0xcffc0000 - 0xff7fe000   ( 760 MB)
    lowmem  : 0xc0000000 - 0xcf7c0000   ( 247 MB)
      .init : 0xc17b7000 - 0xc1832000   ( 492 kB)
      .data : 0xc1550219 - 0xc17b6a80   (2458 kB)
      .text : 0xc1000000 - 0xc1550219   (5440 kB)
Checking if this processor honours the WP bit even in supervisor mode...Ok.
SLUB: Genslabs=3D15, HWalign=3D32, Order=3D0-3, MinObjects=3D0, CPUs=3D1, N=
odes=3D1
Preemptible hierarchical RCU implementation.
NR_IRQS:2304 nr_irqs:256 16
Console: colour VGA+ 80x25
console [tty0] enabled
console [ttyS0] enabled
Fast TSC calibration using PIT
Detected 499.922 MHz processor.
Calibrating delay loop (skipped), value calculated using timer frequency.. =
999.84 BogoMIPS (lpj=3D1999688)
pid_max: default: 32768 minimum: 301
Security Framework initialized
Mount-cache hash table entries: 512
Initializing cgroup subsys debug
Initializing cgroup subsys cpuacct
Initializing cgroup subsys memory
Initializing cgroup subsys devices
Initializing cgroup subsys freezer
Initializing cgroup subsys blkio
SMP alternatives: switching to UP code
Freeing SMP alternatives: 20k freed
ftrace: allocating 22469 entries in 44 pages
weird, boot CPU (#0) not listed by the BIOS.
SMP motherboard not detected.
Local APIC not detected. Using dummy APIC emulation.
SMP disabled
Performance Events: no PMU driver, software events only.
Brought up 1 CPUs
Total of 1 processors activated (999.84 BogoMIPS).
devtmpfs: initialized
NET: Registered protocol family 16
PCI: PCI BIOS revision 2.10 entry at 0xfaa70, last bus=3D0
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
vgaarb: device added: PCI:0000:00:01.1,decodes=3Dio+mem,owns=3Dio+mem,locks=
=3Dnone
Switching to clocksource pit
cfg80211: Calling CRDA to update world regulatory domain
pnp: PnP ACPI: disabled
pci 0000:00:0f.0: BAR 3: assigned [io  0x1000-0x101f]
pci 0000:00:0f.0: BAR 3: set to [io  0x1000-0x101f] (PCI address [0x1000-0x=
101f])
NET: Registered protocol family 2
IP route cache hash table entries: 2048 (order: 1, 8192 bytes)
TCP established hash table entries: 8192 (order: 4, 65536 bytes)
TCP bind hash table entries: 8192 (order: 4, 65536 bytes)
TCP: Hash tables configured (established 8192 bind 8192)
TCP reno registered
UDP hash table entries: 128 (order: 0, 4096 bytes)
UDP-Lite hash table entries: 128 (order: 0, 4096 bytes)
NET: Registered protocol family 1
RPC: Registered named UNIX socket transport module.
RPC: Registered udp transport module.
RPC: Registered tcp transport module.
RPC: Registered tcp NFSv4.1 backchannel transport module.
pci 0000:00:06.0: Firmware left e100 interrupts enabled; disabling
platform rtc_cmos: registered platform RTC device (no PNP device found)
microcode: no support for this CPU vendor
VFS: Disk quotas dquot_6.5.2
Dquot-cache hash table entries: 1024 (order 0, 4096 bytes)
Registering unionfs 2.5.10 (for 3.1.0-rc4)
msgmni has been set to 470
Block layer SCSI generic (bsg) driver version 0.4 loaded (major 253)
io scheduler noop registered
io scheduler deadline registered
io scheduler cfq registered (default)
Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
serial8250: ttyS0 at I/O 0x3f8 (irq =3D 4) is a 16550A
serial8250: ttyS1 at I/O 0x2f8 (irq =3D 3) is a 16550A
brd: module loaded
loop: module loaded
Uniform Multi-Platform E-IDE driver
ide-gd driver 1.18
ide-cd driver 5.00
pcnet32: pcnet32.c:v1.35 21.Apr.2008 tsbogend@alpha.franken.de
Atheros(R) L2 Ethernet Driver - version 2.2.3
Copyright (c) 2007 Atheros Corporation.
e100: Intel(R) PRO/100 Network Driver, 3.5.24-k2-NAPI
e100: Copyright(c) 1999-2006 Intel Corporation
e100 0000:00:06.0: eth0: addr 0xeffff000, irq 10, MAC addr 00:d0:c9:ae:29:3=
3
e1000: Intel(R) PRO/1000 Network Driver - version 7.3.21-k8-NAPI
e1000: Copyright (c) 1999-2006 Intel Corporation.
e1000e: Intel(R) PRO/1000 Network Driver - 1.5.1-k
e1000e: Copyright(c) 1999 - 2011 Intel Corporation.
ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
ehci_hcd 0000:00:0f.5: EHCI Host Controller
ehci_hcd 0000:00:0f.5: new USB bus registered, assigned bus number 1
ehci_hcd 0000:00:0f.5: irq 10, io mem 0xefffc000
ehci_hcd 0000:00:0f.5: USB 2.0 started, EHCI 1.00
hub 1-0:1.0: USB hub found
hub 1-0:1.0: 4 ports detected
uhci_hcd: USB Universal Host Controller Interface driver
Initializing USB Mass Storage driver...
usbcore: registered new interface driver usb-storage
USB Mass Storage support registered.
usbcore: registered new interface driver usbserial
USB Serial support registered for generic
usbcore: registered new interface driver usbserial_generic
usbserial: USB Serial Driver core
USB Serial support registered for FTDI USB Serial Device
usbcore: registered new interface driver ftdi_sio
ftdi_sio: v1.6.0:USB FTDI Serial Converters Driver
USB Serial support registered for pl2303
usbcore: registered new interface driver pl2303
pl2303: Prolific PL2303 USB to serial adaptor driver
i8042: PNP: No PS/2 controller found. Probing ports directly.
serio: i8042 KBD port at 0x60,0x64 irq 1
serio: i8042 AUX port at 0x60,0x64 irq 12
mousedev: PS/2 mouse device common for all mice
usbcore: registered new interface driver wacom
wacom: v1.53:USB Wacom tablet driver
rtc_cmos rtc_cmos: rtc core: registered rtc_cmos as rtc0
rtc0: alarms up to one day, 114 bytes nvram
md: linear personality registered for level -1
md: raid0 personality registered for level 0
md: raid1 personality registered for level 1
md: raid10 personality registered for level 10
md: multipath personality registered for level -4
md: faulty personality registered for level -5
device-mapper: ioctl: 4.22.0-ioctl (2011-10-19) initialised: dm-devel@redha=
t.com
cpuidle: using governor ladder
usbcore: registered new interface driver usbhid
usbhid: USB HID core driver
ALSA device list:
  No soundcards found.
oprofile: using NMI timer interrupt.
TCP cubic registered
NET: Registered protocol family 17
Registering the dns_resolver key type
Using IPI No-Shortcut mode
registered taskstats version 1
console [netcon0] enabled
netconsole: network logging started
rtc_cmos rtc_cmos: setting system clock to 2012-06-12 12:21:29 UTC (1339503=
689)
md: Waiting for all devices to be available before autodetect
md: If you don't use raid, use raid=3Dnoautodetect
md: Autodetecting RAID arrays.
md: Scanned 0 and added 0 devices.
md: autorun ...
md: ... autorun DONE.
Root-NFS: no NFS server address
VFS: Unable to mount root fs via NFS, trying floppy.
VFS: Cannot open root device "hdb1" or unknown-block(2,0)
Please append a correct "root=3D" boot option; here are the available parti=
tions:
VFS: Unable to mount root fs on unknown-block(2,0)
User configuration error - no valid root filesystem found
Kernel panic - not syncing: Invalid configuration from end user prevents co=
ntinuing
Pid: 1, comm: swapper/0 Not tainted 3.2.11-yocto-standard #1
Call Trace:
[<c15424b4>] ? printk+0x1d/0x1f
[<c15423a8>] panic+0x66/0x155
[<c17b7b8a>] mount_block_root+0x1c1/0x1d8
[<c11003cc>] ? sys_mknod+0x2c/0x30
[<c17b7d92>] mount_root+0xf1/0xf9
[<c17b7ee8>] prepare_namespace+0x14e/0x192
[<c10f1185>] ? sys_access+0x25/0x30
[<c17b788d>] kernel_init+0x168/0x16d
[<c17b7725>] ? start_kernel+0x2f9/0x2f9
[<c154f536>] kernel_thread_helper+0x6/0x10


--_000_A7B59F6D52627C44813C136D437B0832068BC78CACF3TKSSREX01ou_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Diso-8859-1"><meta name=3DGenerator content=3D"Micr=
osoft Word 14 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
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
	font-size:10.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DDE-CH link=3Dblue vli=
nk=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span lang=3DEN-=
US>Hi everybody.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-=
US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>The =
following problem occurs when I try to start a x86 linux system from CF-Car=
d.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;=
</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>I have generate a =
qemux86 core-image-minimal=A0 image with the latest pokey.<o:p></o:p></span=
></p><p class=3DMsoNormal><span lang=3DEN-US>After that I have copied every=
thing on a CF including bzImage-3.2.1-yocto-standard<o:p></o:p></span></p><=
p class=3DMsoNormal><span lang=3DEN-US>Grub was already installed from an o=
ld linux version.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN=
-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>I c=
onfigured grubs menu.lst.<o:p></o:p></span></p><p class=3DMsoNormal><span l=
ang=3DEN-US>Ther kernel starts perfectly util it like to finde the rootfs.<=
o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Only one ext2 =
partion exist on the CF-Card.<o:p></o:p></span></p><p class=3DMsoNormal><sp=
an lang=3DEN-US>If have tried hda1 hdb1 hdc1 sda1 sdb1 sdc1 for the to root=
 option. Same problem.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US>I also tried initrd. Same problem.<o:p></o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US>I also tried rootfs from narcissus. Same pr=
oblem.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&n=
bsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>I appreciate a=
ny help.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>=
&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Thanks.<o:p>=
</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p><=
/span></p><p class=3DMsoNormal><span lang=3DEN-US>Regards<o:p></o:p></span>=
</p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Juergen<o:p></o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoN=
ormal><span lang=3DEN-US>----------------------------------------<o:p></o:p=
></span></p><p class=3DMsoNormal><span lang=3DEN-US>Menu.lst :<o:p></o:p></=
span></p><p class=3DMsoNormal><span lang=3DEN-US>--------------------------=
--------------<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US=
>serial --unit=3D0 --speed=3D57600<o:p></o:p></span></p><p class=3DMsoNorma=
l><span lang=3DEN-US>terminal --timeout=3D1 serial console<o:p></o:p></span=
></p><p class=3DMsoNormal><span lang=3DEN-US>default 0<o:p></o:p></span></p=
><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p cla=
ss=3DMsoNormal><span lang=3DEN-US># tell grub to find the kernel on /dev/hd=
a1<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>root (hd0,0=
)<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>savedefault<=
o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o=
:p></span></p><p class=3DMsoNormal><span lang=3DEN-US># start menu entry wi=
th title<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>title=
 OpenEmbedded GNU/Linux<o:p></o:p></span></p><p class=3DMsoNormal><span lan=
g=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-=
US>title New OE serial console<o:p></o:p></span></p><p class=3DMsoNormal><s=
pan lang=3DEN-US>root (hd0,0)<o:p></o:p></span></p><p class=3DMsoNormal><sp=
an lang=3DEN-US>kernel /boot/bzImage-3.2.11-yocto-standard serialconsole ro=
ot=3D/dev/hdb1 init=3D/sbin/init console=3Dtty0 console=3DttyS0,57600n8<o:p=
></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>savedefault<o:p><=
/o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></=
span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></=
p><p class=3DMsoNormal><span lang=3DEN-US>------------------------<o:p></o:=
p></span></p><p class=3DMsoNormal><span lang=3DEN-US>KERNEL Output:<o:p></o=
:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>---------------------=
---<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>=A0 Bootin=
g 'New OE serial console'<o:p></o:p></span></p><p class=3DMsoNormal><span l=
ang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DE=
N-US>root (hd0,0)<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN=
-US> Filesystem type is ext2fs, partition type 0x83<o:p></o:p></span></p><p=
 class=3DMsoNormal><span lang=3DEN-US>kernel /boot/bzImage-3.2.11-yocto-sta=
ndard serialconsole root=3D/dev/hdb1 init=3D/s<o:p></o:p></span></p><p clas=
s=3DMsoNormal><span lang=3DEN-US>bin/init console=3Dtty0 console=3DttyS0,57=
600n8<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>=A0=A0 [=
Linux-bzImage, setup=3D0x3a00, size=3D0x441020]<o:p></o:p></span></p><p cla=
ss=3DMsoNormal><span lang=3DEN-US>savedefault<o:p></o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoN=
ormal><span lang=3DEN-US>Initializing cgroup subsys cpuset<o:p></o:p></span=
></p><p class=3DMsoNormal><span lang=3DEN-US>Initializing cgroup subsys cpu=
<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Linux version=
 3.2.11-yocto-standard (blabla@blabla-virtual-machine) (gcc version 4.6.4 2=
0120303 (prerelea2<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DE=
N-US>BIOS-provided physical RAM map:<o:p></o:p></span></p><p class=3DMsoNor=
mal><span lang=3DEN-US> </span>BIOS-e820: 0000000000000000 - 000000000009e0=
00 (usable)<o:p></o:p></p><p class=3DMsoNormal> BIOS-e820: 000000000009e000=
 - 00000000000a0000 (reserved)<o:p></o:p></p><p class=3DMsoNormal> <span la=
ng=3DEN-US>BIOS-e820: 00000000000f0000 - 0000000000100000 (reserved)<o:p></=
o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US> BIOS-e820: 00000000=
00100000 - 000000000f7c0000 (usable)<o:p></o:p></span></p><p class=3DMsoNor=
mal><span lang=3DEN-US> BIOS-e820: 00000000ffff0000 - 0000000100000000 (res=
erved)<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Notice:=
 NX (Execute Disable) protection missing in CPU!<o:p></o:p></span></p><p cl=
ass=3DMsoNormal><span lang=3DEN-US>DMI 2.2 present.<o:p></o:p></span></p><p=
 class=3DMsoNormal><span lang=3DEN-US>last_pfn =3D 0xf7c0 max_arch_pfn =3D =
0x100000<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>init_=
memory_mapping: 0000000000000000-000000000f7c0000<o:p></o:p></span></p><p c=
lass=3DMsoNormal><span lang=3DEN-US>ACPI Error: A valid RSDP was not found =
(20110623/tbxfroot-219)<o:p></o:p></span></p><p class=3DMsoNormal><span lan=
g=3DEN-US>0MB HIGHMEM available.<o:p></o:p></span></p><p class=3DMsoNormal>=
<span lang=3DEN-US>247MB LOWMEM available.<o:p></o:p></span></p><p class=3D=
MsoNormal><span lang=3DEN-US>=A0 mapped low ram: 0 - 0f7c0000<o:p></o:p></s=
pan></p><p class=3DMsoNormal><span lang=3DEN-US>=A0 low ram: 0 - 0f7c0000<o=
:p></o:p></span></p><p class=3DMsoNormal>Zone PFN ranges:<o:p></o:p></p><p =
class=3DMsoNormal>=A0 DMA=A0=A0=A0=A0=A0 0x00000010 -&gt; 0x00001000<o:p></=
o:p></p><p class=3DMsoNormal>=A0 <span lang=3DEN-US>Normal=A0=A0 0x00001000=
 -&gt; 0x0000f7c0<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN=
-US>=A0 HighMem=A0 empty<o:p></o:p></span></p><p class=3DMsoNormal><span la=
ng=3DEN-US>Movable zone start PFN for each node<o:p></o:p></span></p><p cla=
ss=3DMsoNormal><span lang=3DEN-US>early_node_map[2] active PFN ranges<o:p><=
/o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>=A0=A0=A0 0: 0x0000=
0010 -&gt; 0x0000009e<o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US>=A0=A0=A0 0: 0x00000100 -&gt; 0x0000f7c0<o:p></o:p></span></p><p c=
lass=3DMsoNormal><span lang=3DEN-US>Using APIC driver default<o:p></o:p></s=
pan></p><p class=3DMsoNormal><span lang=3DEN-US>SMP: Allowing 1 CPUs, 0 hot=
plug CPUs<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>No l=
ocal APIC present or hardware disabled<o:p></o:p></span></p><p class=3DMsoN=
ormal><span lang=3DEN-US>APIC: disable apic facility<o:p></o:p></span></p><=
p class=3DMsoNormal><span lang=3DEN-US>APIC: switched to apic NOOP<o:p></o:=
p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Allocating PCI resourc=
es starting at f7c0000 (gap: f7c0000:f0830000)<o:p></o:p></span></p><p clas=
s=3DMsoNormal><span lang=3DEN-US>setup_percpu: NR_CPUS:8 nr_cpumask_bits:8 =
nr_cpu_ids:1 nr_node_ids:1<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>PERCPU: Embedded 13 pages/cpu @cf000000 s29056 r0 d24192 u4194=
304<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Built 1 zo=
nelists in Zone order, mobility grouping on.=A0 Total pages: 62814<o:p></o:=
p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Kernel command line: s=
erialconsole root=3D/dev/hdb1 init=3D/sbin/init console=3Dtty0 console=3Dtt=
yS0,57600n8<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>PI=
D hash table entries: 1024 (order: 0, 4096 bytes)<o:p></o:p></span></p><p c=
lass=3DMsoNormal><span lang=3DEN-US>Dentry cache hash table entries: 32768 =
(order: 5, 131072 bytes)<o:p></o:p></span></p><p class=3DMsoNormal><span la=
ng=3DEN-US>Inode-cache hash table entries: 16384 (order: 4, 65536 bytes)<o:=
p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Initializing CPU=
#0<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>allocated 1=
014528 bytes of page_cgroup<o:p></o:p></span></p><p class=3DMsoNormal><span=
 lang=3DEN-US>please try 'cgroup_disable=3Dmemory' option if you don't want=
 memory cgroups<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-U=
S>Initializing HighMem for node 0 (00000000:00000000)<o:p></o:p></span></p>=
<p class=3DMsoNormal><span lang=3DEN-US>Memory: 241100k/253696k available (=
5440k kernel code, 12140k reserved, 2458k data, 492k init, 0k highmem)<o:p>=
</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>virtual kernel mem=
ory layout:<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>=
=A0=A0=A0 fixmap=A0 : 0xfff17000 - 0xfffff000=A0=A0 ( 928 kB)<o:p></o:p></s=
pan></p><p class=3DMsoNormal><span lang=3DEN-US>=A0=A0=A0 pkmap=A0=A0 : 0xf=
f800000 - 0xffc00000=A0=A0 (4096 kB)<o:p></o:p></span></p><p class=3DMsoNor=
mal><span lang=3DEN-US>=A0=A0=A0 vmalloc : 0xcffc0000 - 0xff7fe000=A0=A0 ( =
760 MB)<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>=A0=A0=
=A0 lowmem=A0 : 0xc0000000 - 0xcf7c0000=A0=A0 ( 247 MB)<o:p></o:p></span></=
p><p class=3DMsoNormal><span lang=3DEN-US>=A0=A0=A0=A0=A0 .init : 0xc17b700=
0 - 0xc1832000=A0=A0 ( 492 kB)<o:p></o:p></span></p><p class=3DMsoNormal><s=
pan lang=3DEN-US>=A0=A0=A0=A0=A0 .data : 0xc1550219 - 0xc17b6a80=A0=A0 (245=
8 kB)<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>=A0=A0=
=A0=A0=A0 .text : 0xc1000000 - 0xc1550219=A0=A0 (5440 kB)<o:p></o:p></span>=
</p><p class=3DMsoNormal><span lang=3DEN-US>Checking if this processor hono=
urs the WP bit even in supervisor mode...Ok.<o:p></o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US>SLUB: Genslabs=3D15, HWalign=3D32, Order=3D=
0-3, MinObjects=3D0, CPUs=3D1, Nodes=3D1<o:p></o:p></span></p><p class=3DMs=
oNormal><span lang=3DEN-US>Preemptible hierarchical RCU implementation.<o:p=
></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>NR_IRQS:2304 nr_i=
rqs:256 16<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Con=
sole: colour VGA+ 80x25<o:p></o:p></span></p><p class=3DMsoNormal><span lan=
g=3DEN-US>console [tty0] enabled<o:p></o:p></span></p><p class=3DMsoNormal>=
<span lang=3DEN-US>console [ttyS0] enabled<o:p></o:p></span></p><p class=3D=
MsoNormal><span lang=3DEN-US>Fast TSC calibration using PIT<o:p></o:p></spa=
n></p><p class=3DMsoNormal><span lang=3DEN-US>Detected 499.922 MHz processo=
r.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Calibrating=
 delay loop (skipped), value calculated using timer frequency.. 999.84 Bogo=
MIPS (lpj=3D1999688)<o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US>pid_max: default: 32768 minimum: 301<o:p></o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US>Security Framework initialized<o:p></o:p></=
span></p><p class=3DMsoNormal><span lang=3DEN-US>Mount-cache hash table ent=
ries: 512<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Init=
ializing cgroup subsys debug<o:p></o:p></span></p><p class=3DMsoNormal><spa=
n lang=3DEN-US>Initializing cgroup subsys cpuacct<o:p></o:p></span></p><p c=
lass=3DMsoNormal><span lang=3DEN-US>Initializing cgroup subsys memory<o:p><=
/o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Initializing cgroup=
 subsys devices<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-U=
S>Initializing cgroup subsys freezer<o:p></o:p></span></p><p class=3DMsoNor=
mal><span lang=3DEN-US>Initializing cgroup subsys blkio<o:p></o:p></span></=
p><p class=3DMsoNormal><span lang=3DEN-US>SMP alternatives: switching to UP=
 code<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Freeing =
SMP alternatives: 20k freed<o:p></o:p></span></p><p class=3DMsoNormal><span=
 lang=3DEN-US>ftrace: allocating 22469 entries in 44 pages<o:p></o:p></span=
></p><p class=3DMsoNormal><span lang=3DEN-US>weird, boot CPU (#0) not liste=
d by the BIOS.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US=
>SMP motherboard not detected.<o:p></o:p></span></p><p class=3DMsoNormal><s=
pan lang=3DEN-US>Local APIC not detected. Using dummy APIC emulation.<o:p><=
/o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>SMP disabled<o:p></=
o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Performance Events: =
no PMU driver, software events only.<o:p></o:p></span></p><p class=3DMsoNor=
mal><span lang=3DEN-US>Brought up 1 CPUs<o:p></o:p></span></p><p class=3DMs=
oNormal><span lang=3DEN-US>Total of 1 processors activated (999.84 BogoMIPS=
).<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>devtmpfs: i=
nitialized<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>NET=
: Registered protocol family 16<o:p></o:p></span></p><p class=3DMsoNormal><=
span lang=3DEN-US>PCI: PCI BIOS revision 2.10 entry at 0xfaa70, last bus=3D=
0<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>PCI: Using c=
onfiguration type 1 for base access<o:p></o:p></span></p><p class=3DMsoNorm=
al><span lang=3DEN-US>bio: create slab &lt;bio-0&gt; at 0<o:p></o:p></span>=
</p><p class=3DMsoNormal><span lang=3DEN-US>ACPI: Interpreter disabled.<o:p=
></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>vgaarb: loaded<o:=
p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>SCSI subsystem i=
nitialized<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>usb=
core: registered new interface driver usbfs<o:p></o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US>usbcore: registered new interface driver hu=
b<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>usbcore: reg=
istered new device driver usb<o:p></o:p></span></p><p class=3DMsoNormal><sp=
an lang=3DEN-US>Advanced Linux Sound Architecture Driver Version 1.0.24.<o:=
p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>PCI: Probing PCI=
 hardware<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>vgaa=
rb: device added: PCI:0000:00:01.1,decodes=3Dio+mem,owns=3Dio+mem,locks=3Dn=
one<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Switching =
to clocksource pit<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DE=
N-US>cfg80211: Calling CRDA to update world regulatory domain<o:p></o:p></s=
pan></p><p class=3DMsoNormal><span lang=3DEN-US>pnp: PnP ACPI: disabled<o:p=
></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>pci 0000:00:0f.0:=
 BAR 3: assigned [io=A0 0x1000-0x101f]<o:p></o:p></span></p><p class=3DMsoN=
ormal><span lang=3DEN-US>pci 0000:00:0f.0: BAR 3: set to [io=A0 0x1000-0x10=
1f] (PCI address [0x1000-0x101f])<o:p></o:p></span></p><p class=3DMsoNormal=
><span lang=3DEN-US>NET: Registered protocol family 2<o:p></o:p></span></p>=
<p class=3DMsoNormal><span lang=3DEN-US>IP route cache hash table entries: =
2048 (order: 1, 8192 bytes)<o:p></o:p></span></p><p class=3DMsoNormal><span=
 lang=3DEN-US>TCP established hash table entries: 8192 (order: 4, 65536 byt=
es)<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>TCP bind h=
ash table entries: 8192 (order: 4, 65536 bytes)<o:p></o:p></span></p><p cla=
ss=3DMsoNormal><span lang=3DEN-US>TCP: Hash tables configured (established =
8192 bind 8192)<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-U=
S>TCP reno registered<o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US>UDP hash table entries: 128 (order: 0, 4096 bytes)<o:p></o:p></spa=
n></p><p class=3DMsoNormal><span lang=3DEN-US>UDP-Lite hash table entries: =
128 (order: 0, 4096 bytes)<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>NET: Registered protocol family 1<o:p></o:p></span></p><p clas=
s=3DMsoNormal><span lang=3DEN-US>RPC: Registered named UNIX socket transpor=
t module.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>RPC:=
 Registered udp transport module.<o:p></o:p></span></p><p class=3DMsoNormal=
><span lang=3DEN-US>RPC: Registered tcp transport module.<o:p></o:p></span>=
</p><p class=3DMsoNormal><span lang=3DEN-US>RPC: Registered tcp NFSv4.1 bac=
kchannel transport module.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>pci 0000:00:06.0: Firmware left e100 interrupts enabled; disab=
ling<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>platform =
rtc_cmos: registered platform RTC device (no PNP device found)<o:p></o:p></=
span></p><p class=3DMsoNormal><span lang=3DEN-US>microcode: no support for =
this CPU vendor<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-U=
S>VFS: Disk quotas dquot_6.5.2<o:p></o:p></span></p><p class=3DMsoNormal><s=
pan lang=3DEN-US>Dquot-cache hash table entries: 1024 (order 0, 4096 bytes)=
<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Registering u=
nionfs 2.5.10 (for 3.1.0-rc4)<o:p></o:p></span></p><p class=3DMsoNormal><sp=
an lang=3DEN-US>msgmni has been set to 470<o:p></o:p></span></p><p class=3D=
MsoNormal><span lang=3DEN-US>Block layer SCSI generic (bsg) driver version =
0.4 loaded (major 253)<o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US>io scheduler noop registered<o:p></o:p></span></p><p class=3DMsoNo=
rmal><span lang=3DEN-US>io scheduler deadline registered<o:p></o:p></span><=
/p><p class=3DMsoNormal><span lang=3DEN-US>io scheduler cfq registered (def=
ault)<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Serial: =
8250/16550 driver, 4 ports, IRQ sharing disabled<o:p></o:p></span></p><p cl=
ass=3DMsoNormal><span lang=3DEN-US>serial8250: ttyS0 at I/O 0x3f8 (irq =3D =
4) is a 16550A<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US=
>serial8250: ttyS1 at I/O 0x2f8 (irq =3D 3) is a 16550A<o:p></o:p></span></=
p><p class=3DMsoNormal><span lang=3DEN-US>brd: module loaded<o:p></o:p></sp=
an></p><p class=3DMsoNormal><span lang=3DEN-US>loop: module loaded<o:p></o:=
p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Uniform Multi-Platform=
 E-IDE driver<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>=
ide-gd driver 1.18<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DE=
N-US>ide-cd driver 5.00<o:p></o:p></span></p><p class=3DMsoNormal><span lan=
g=3DEN-US>pcnet32: pcnet32.c:v1.35 21.Apr.2008 tsbogend@alpha.franken.de<o:=
p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Atheros(R) L2 Et=
hernet Driver - version 2.2.3<o:p></o:p></span></p><p class=3DMsoNormal><sp=
an lang=3DEN-US>Copyright (c) 2007 Atheros Corporation.<o:p></o:p></span></=
p><p class=3DMsoNormal><span lang=3DEN-US>e100: Intel(R) PRO/100 Network Dr=
iver, 3.5.24-k2-NAPI<o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US>e100: Copyright(c) 1999-2006 Intel Corporation<o:p></o:p></span></=
p><p class=3DMsoNormal><span lang=3DEN-US>e100 0000:00:06.0: eth0: addr 0xe=
ffff000, irq 10, MAC addr 00:d0:c9:ae:29:33<o:p></o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US>e1000: Intel(R) PRO/1000 Network Driver - v=
ersion 7.3.21-k8-NAPI<o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US>e1000: Copyright (c) 1999-2006 Intel Corporation.<o:p></o:p></span=
></p><p class=3DMsoNormal>e1000e: Intel(R) PRO/1000 Network Driver - 1.5.1-=
k<o:p></o:p></p><p class=3DMsoNormal><span lang=3DEN-US>e1000e: Copyright(c=
) 1999 - 2011 Intel Corporation.<o:p></o:p></span></p><p class=3DMsoNormal>=
<span lang=3DEN-US>ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driv=
er<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>ehci_hcd 00=
00:00:0f.5: EHCI Host Controller<o:p></o:p></span></p><p class=3DMsoNormal>=
<span lang=3DEN-US>ehci_hcd 0000:00:0f.5: new USB bus registered, assigned =
bus number 1<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>e=
hci_hcd 0000:00:0f.5: irq 10, io mem 0xefffc000<o:p></o:p></span></p><p cla=
ss=3DMsoNormal><span lang=3DEN-US>ehci_hcd 0000:00:0f.5: USB 2.0 started, E=
HCI 1.00<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>hub 1=
-0:1.0: USB hub found<o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US>hub 1-0:1.0: 4 ports detected<o:p></o:p></span></p><p class=3DMsoN=
ormal><span lang=3DEN-US>uhci_hcd: USB Universal Host Controller Interface =
driver<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Initial=
izing USB Mass Storage driver...<o:p></o:p></span></p><p class=3DMsoNormal>=
<span lang=3DEN-US>usbcore: registered new interface driver usb-storage<o:p=
></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>USB Mass Storage =
support registered.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3D=
EN-US>usbcore: registered new interface driver usbserial<o:p></o:p></span><=
/p><p class=3DMsoNormal><span lang=3DEN-US>USB Serial support registered fo=
r generic<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>usbc=
ore: registered new interface driver usbserial_generic<o:p></o:p></span></p=
><p class=3DMsoNormal><span lang=3DEN-US>usbserial: USB Serial Driver core<=
o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>USB Serial sup=
port registered for FTDI USB Serial Device<o:p></o:p></span></p><p class=3D=
MsoNormal><span lang=3DEN-US>usbcore: registered new interface driver ftdi_=
sio<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>ftdi_sio: =
v1.6.0:USB FTDI Serial Converters Driver<o:p></o:p></span></p><p class=3DMs=
oNormal><span lang=3DEN-US>USB Serial support registered for pl2303<o:p></o=
:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>usbcore: registered n=
ew interface driver pl2303<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>pl2303: Prolific PL2303 USB to serial adaptor driver<o:p></o:p=
></span></p><p class=3DMsoNormal><span lang=3DEN-US>i8042: PNP: No PS/2 con=
troller found. Probing ports directly.<o:p></o:p></span></p><p class=3DMsoN=
ormal><span lang=3DEN-US>serio: i8042 KBD port at 0x60,0x64 irq 1<o:p></o:p=
></span></p><p class=3DMsoNormal><span lang=3DEN-US>serio: i8042 AUX port a=
t 0x60,0x64 irq 12<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DE=
N-US>mousedev: PS/2 mouse device common for all mice<o:p></o:p></span></p><=
p class=3DMsoNormal><span lang=3DEN-US>usbcore: registered new interface dr=
iver wacom<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>wac=
om: v1.53:USB Wacom tablet driver<o:p></o:p></span></p><p class=3DMsoNormal=
><span lang=3DEN-US>rtc_cmos rtc_cmos: rtc core: registered rtc_cmos as rtc=
0<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>rtc0: alarms=
 up to one day, 114 bytes nvram<o:p></o:p></span></p><p class=3DMsoNormal><=
span lang=3DEN-US>md: linear personality registered for level -1<o:p></o:p>=
</span></p><p class=3DMsoNormal><span lang=3DEN-US>md: raid0 personality re=
gistered for level 0<o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US>md: raid1 personality registered for level 1<o:p></o:p></span></p>=
<p class=3DMsoNormal><span lang=3DEN-US>md: raid10 personality registered f=
or level 10<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>md=
: multipath personality registered for level -4<o:p></o:p></span></p><p cla=
ss=3DMsoNormal><span lang=3DEN-US>md: faulty personality registered for lev=
el -5<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>device-m=
apper: ioctl: 4.22.0-ioctl (2011-10-19) initialised: dm-devel@redhat.com<o:=
p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>cpuidle: using g=
overnor ladder<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US=
>usbcore: registered new interface driver usbhid<o:p></o:p></span></p><p cl=
ass=3DMsoNormal><span lang=3DEN-US>usbhid: USB HID core driver<o:p></o:p></=
span></p><p class=3DMsoNormal><span lang=3DEN-US>ALSA device list:<o:p></o:=
p></span></p><p class=3DMsoNormal><span lang=3DEN-US>=A0 No soundcards foun=
d.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>oprofile: u=
sing NMI timer interrupt.<o:p></o:p></span></p><p class=3DMsoNormal><span l=
ang=3DEN-US>TCP cubic registered<o:p></o:p></span></p><p class=3DMsoNormal>=
<span lang=3DEN-US>NET: Registered protocol family 17<o:p></o:p></span></p>=
<p class=3DMsoNormal><span lang=3DEN-US>Registering the dns_resolver key ty=
pe<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Using IPI N=
o-Shortcut mode<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-U=
S>registered taskstats version 1<o:p></o:p></span></p><p class=3DMsoNormal>=
<span lang=3DEN-US>console [netcon0] enabled<o:p></o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US>netconsole: network logging started<o:p></o=
:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>rtc_cmos rtc_cmos: se=
tting system clock to 2012-06-12 12:21:29 UTC (1339503689)<o:p></o:p></span=
></p><p class=3DMsoNormal><span lang=3DEN-US>md: Waiting for all devices to=
 be available before autodetect<o:p></o:p></span></p><p class=3DMsoNormal><=
span lang=3DEN-US>md: If you don't use raid, use raid=3Dnoautodetect<o:p></=
o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>md: Autodetecting RA=
ID arrays.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>md:=
 Scanned 0 and added 0 devices.<o:p></o:p></span></p><p class=3DMsoNormal><=
span lang=3DEN-US>md: autorun ...<o:p></o:p></span></p><p class=3DMsoNormal=
><span lang=3DEN-US>md: ... autorun DONE.<o:p></o:p></span></p><p class=3DM=
soNormal><span lang=3DEN-US>Root-NFS: no NFS server address<o:p></o:p></spa=
n></p><p class=3DMsoNormal><span lang=3DEN-US>VFS: Unable to mount root fs =
via NFS, trying floppy.<o:p></o:p></span></p><p class=3DMsoNormal><span lan=
g=3DEN-US>VFS: Cannot open root device &quot;hdb1&quot; or unknown-block(2,=
0)<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Please appe=
nd a correct &quot;root=3D&quot; boot option; here are the available partit=
ions:<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>VFS: Una=
ble to mount root fs on unknown-block(2,0)<o:p></o:p></span></p><p class=3D=
MsoNormal><span lang=3DEN-US>User configuration error - no valid root files=
ystem found<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Ke=
rnel panic - not syncing: Invalid configuration from end user prevents cont=
inuing<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Pid: 1,=
 comm: swapper/0 Not tainted 3.2.11-yocto-standard #1<o:p></o:p></span></p>=
<p class=3DMsoNormal><span lang=3DEN-US>Call Trace:<o:p></o:p></span></p><p=
 class=3DMsoNormal><span lang=3DEN-US> [&lt;c15424b4&gt;] ? printk+0x1d/0x1=
f<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US> [&lt;c15423=
a8&gt;] panic+0x66/0x155<o:p></o:p></span></p><p class=3DMsoNormal><span la=
ng=3DEN-US> [&lt;c17b7b8a&gt;] mount_block_root+0x1c1/0x1d8<o:p></o:p></spa=
n></p><p class=3DMsoNormal><span lang=3DEN-US> [&lt;c11003cc&gt;] ? sys_mkn=
od+0x2c/0x30<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US> =
[&lt;c17b7d92&gt;] mount_root+0xf1/0xf9<o:p></o:p></span></p><p class=3DMso=
Normal><span lang=3DEN-US> [&lt;c17b7ee8&gt;] prepare_namespace+0x14e/0x192=
<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US> [&lt;c10f118=
5&gt;] ? sys_access+0x25/0x30<o:p></o:p></span></p><p class=3DMsoNormal><sp=
an lang=3DEN-US> </span>[&lt;c17b788d&gt;] kernel_init+0x168/0x16d<o:p></o:=
p></p><p class=3DMsoNormal> [&lt;c17b7725&gt;] ? start_kernel+0x2f9/0x2f9<o=
:p></o:p></p><p class=3DMsoNormal> <span lang=3DEN-US>[&lt;c154f536&gt;] ke=
rnel_thread_helper+0x6/0x10<o:p></o:p></span></p><p class=3DMsoNormal><span=
 lang=3DEN-US><o:p>&nbsp;</o:p></span></p></div></body></html>=

--_000_A7B59F6D52627C44813C136D437B0832068BC78CACF3TKSSREX01ou_--
