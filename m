Return-Path: <jessica.zhang@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id E84CE4C80FAD
	for <yocto@yoctoproject.org>; Wed, 24 Nov 2010 21:18:49 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 24 Nov 2010 19:18:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,251,1288594800"; 
	d="p7s'?scan'208,217";a="353016557"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by azsmga001.ch.intel.com with ESMTP; 24 Nov 2010 19:18:49 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.226.213) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 24 Nov 2010 19:18:48 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx601.amr.corp.intel.com ([10.22.226.213]) with mapi;
	Wed, 24 Nov 2010 19:18:48 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: sachin kumar <sachinsomeone@gmail.com>, "Garman, Scott A"
	<scott.a.garman@intel.com>
Date: Wed, 24 Nov 2010 19:18:46 -0800
Thread-Topic: [yocto] Using poky qemy for powerpc
Thread-Index: AcuMSLLMkIBZb14yRle4yBZxY8q2FgABnB8Q
Message-ID: <9AFCD584B0B67B48AE8D8585BE30BA9501CC4A97@orsmsx504.amr.corp.intel.com>
References: <AANLkTik_ZG=s7P-c0rojD8Udy-AW==WzOxHtKxYa1oON@mail.gmail.com>
	<4CED8155.1090904@intel.com>
	<AANLkTim3nRy+F=kUD_FzhhcyiGD1C=P1m8hes4-nMBJn@mail.gmail.com>
In-Reply-To: <AANLkTim3nRy+F=kUD_FzhhcyiGD1C=P1m8hes4-nMBJn@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Using poky qemy for powerpc
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
X-List-Received-Date: Thu, 25 Nov 2010 03:18:50 -0000
X-Groupsio-MsgNum: 402
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_006D_01CB8C0C.6AA1B5B0"

------=_NextPart_000_006D_01CB8C0C.6AA1B5B0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_006E_01CB8C0C.6AA1B5B0"

------=_NextPart_001_006E_01CB8C0C.6AA1B5B0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Kumar,
 
I just download the exact same set on my Ubuntu 10.04 (I know many people
are using F13, so I'm sure it's a pretty stable distro for Yocto to be run
on) and everything works, here's my output:
 
jzhang@jzhang-desktop:/opt/poky$ source environment-setup-ppc603e-poky-linux

jzhang@jzhang-desktop:/opt/poky$ poky-qemu qemuppc
/home/jzhang/Downloads/zImage-2.6.34-qemuppc-0.9.bin
/home/jzhang/Downloads/yocto-image-minimal-qemuppc-0.9.rootfs.ext3 ext3
 
Continuing with the following parameters:
KERNEL: [/home/jzhang/Downloads/zImage-2.6.34-qemuppc-0.9.bin]
ROOTFS: [/home/jzhang/Downloads/yocto-image-minimal-qemuppc-0.9.rootfs.ext3]
FSTYPE: [ext3]
Acquiring lockfile for tap0...
Warning: Stale lock file detected, deleting /tmp/qemu-tap-locks/tap0.lock
Using preconfigured tap device 'tap0'
Starting distccd...
Running qemu-system-ppc...
/opt/poky/sysroots/i586-pokysdk-linux/usr/bin/qemu-system-ppc -kernel
/home/jzhang/Downloads/zImage-2.6.34-qemuppc-0.9.bin -net nic,vlan=0 -net
tap,vlan=0,ifname=tap0,script=no,downscript=no -cpu 603e -M prep -bios
powerpc_rom.bin -hda
/home/jzhang/Downloads/yocto-image-minimal-qemuppc-0.9.rootfs.ext3
-no-reboot -show-cursor -usb -usbdevice wacom-tablet -nographic -no-reboot
--append "root=/dev/hda console=ttyS0 console=tty0
ip=192.168.7.2::192.168.7.1:255.255.255.0 mem=128M "
Using QEMU machine description
Linux version 2.6.34.7-wr-standard (pokybuild@autobuilder) (gcc version
4.5.0 20100729 (prerelease) (GCC) ) #1 PREEMPT Sun Oct 24 08:14:18 PDT 2010
PCI host bridge /pci@80800000 (primary) ranges:
  IO 0x0000000080000000..0x00000000807fffff -> 0x0000000000000000
 MEM 0x00000000c0000000..0x00000000c0ffffff -> 0x0000000000000000 
bootconsole [udbg0] enabled
qemu_find_bridges: config at fd400000
arch: exit
Zone PFN ranges:
  DMA      0x00000000 -> 0x00008000
  Normal   empty
Movable zone start PFN for each node
early_node_map[1] active PFN ranges
    0: 0x00000000 -> 0x00008000
Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 32512
Kernel command line: root=/dev/hda console=ttyS0 console=tty0
ip=192.168.7.2::192.168.7.1:255.255.255.0 mem=128M 
PID hash table entries: 512 (order: -1, 2048 bytes)
Dentry cache hash table entries: 16384 (order: 4, 65536 bytes)
Inode-cache hash table entries: 8192 (order: 3, 32768 bytes)
Memory: 124600k/131072k available (4808k kernel code, 6472k reserved, 200k
data, 311k bss, 180k init)
Kernel virtual memory layout:
  * 0xfffdf000..0xfffff000  : fixmap
  * 0xfd400000..0xfe000000  : early ioremap
  * 0xc9000000..0xfd400000  : vmalloc & ioremap
SLUB: Genslabs=13, HWalign=32, Order=0-3, MinObjects=0, CPUs=1, Nodes=1
Hierarchical RCU implementation.
RCU-based detection of stalled CPUs is enabled.
NR_IRQS:512 nr_irqs:512
i8259 legacy interrupt controller initialized
clocksource: timebase mult[2800000] shift[22] registered
Console: colour dummy device 80x25
console [tty0] enabled, bootconsole disabled
             
Using QEMU machine description
Linux version 2.6.34.7-wr-standard (pokybuild@autobuilder) (gcc version
4.5.0 20100729 (prerelease) (GCC) ) #1 PREEMPT Sun Oct 24 08:14:18 PDT 2010
PCI host bridge /pci@80800000 (primary) ranges:
  IO 0x0000000080000000..0x00000000807fffff -> 0x0000000000000000
 MEM 0x00000000c0000000..0x00000000c0ffffff -> 0x0000000000000000 
bootconsole [udbg0] enabled
qemu_find_bridges: config at fd400000
Zone PFN ranges:
  DMA      0x00000000 -> 0x00008000
  Normal   empty
Movable zone start PFN for each node
early_node_map[1] active PFN ranges
    0: 0x00000000 -> 0x00008000
Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 32512
Kernel command line: root=/dev/hda console=ttyS0 console=tty0
ip=192.168.7.2::192.168.7.1:255.255.255.0 mem=128M 
PID hash table entries: 512 (order: -1, 2048 bytes)
Dentry cache hash table entries: 16384 (order: 4, 65536 bytes)
Inode-cache hash table entries: 8192 (order: 3, 32768 bytes)
Memory: 124600k/131072k available (4808k kernel code, 6472k reserved, 200k
data, 311k bss, 180k init)
Kernel virtual memory layout:
  * 0xfffdf000..0xfffff000  : fixmap
  * 0xfd400000..0xfe000000  : early ioremap
  * 0xc9000000..0xfd400000  : vmalloc & ioremap
SLUB: Genslabs=13, HWalign=32, Order=0-3, MinObjects=0, CPUs=1, Nodes=1
Hierarchical RCU implementation.
RCU-based detection of stalled CPUs is enabled.
NR_IRQS:512 nr_irqs:512
i8259 legacy interrupt controller initialized
clocksource: timebase mult[2800000] shift[22] registered
Console: colour dummy device 80x25
console [tty0] enabled, bootconsole disabled
Security Framework initialized
Mount-cache hash table entries: 512
NET: Registered protocol family 16
PCI: Probing PCI hardware
pci 0000:00:0c.0: BAR 0: assigned [mem 0xc0800000-0xc0ffffff pref]
pci 0000:00:0c.0: BAR 0: set to [mem 0xc0800000-0xc0ffffff pref] (PCI
address [0x800000-0xffffff]
pci 0000:00:0d.0: BAR 0: assigned [mem 0xc0000000-0xc00000ff]
pci 0000:00:0d.0: BAR 0: set to [mem 0xc0000000-0xc00000ff] (PCI address
[0x0-0xff]
bio: create slab <bio-0> at 0
vgaarb: device added: PCI:0000:00:0c.0,decodes=io+mem,owns=none,locks=none
vgaarb: loaded
Switching to clocksource timebase
NET: Registered protocol family 2
IP route cache hash table entries: 1024 (order: 0, 4096 bytes)
TCP established hash table entries: 4096 (order: 3, 32768 bytes)
TCP bind hash table entries: 4096 (order: 2, 16384 bytes)
TCP: Hash tables configured (established 4096 bind 4096)
TCP reno registered
UDP hash table entries: 256 (order: 0, 4096 bytes)
UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)
NET: Registered protocol family 1
RPC: Registered udp transport module.
RPC: Registered tcp transport module.
RPC: Registered tcp NFSv4.1 backchannel transport module.
VFS: Disk quotas dquot_6.5.2
Dquot-cache hash table entries: 1024 (order 0, 4096 bytes)
Registering unionfs 2.5.4 (for 2.6.34-rc0)
msgmni has been set to 243
alg: No test for stdrng (krng)
Block layer SCSI generic (bsg) driver version 0.4 loaded (major 254)
io scheduler noop registered
io scheduler deadline registered
io scheduler cfq registered (default)
LTT : ltt-relay init
Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
serial8250.0: ttyS0 at I/O 0x3f8 (irq = 4) is a 16550A
console [ttyS0] enabled
brd: module loaded
Uniform Multi-Platform E-IDE driver
ide_generic: please use "probe_mask=0x3f" module parameter for probing all
legacy ISA IDE ports
hda: QEMU HARDDISK, ATA DISK drive
ide0 at 0x1f0-0x1f7,0x3f6 on irq 13
hdc: QEMU DVD-ROM, ATAPI CD/DVD-ROM drive
ide1: disabled, unable to get IRQ 13
ide1: failed to initialize IDE interface
ide1: disabling port
ide-gd driver 1.18
hda: max request size: 512KiB
hda: 173634 sectors (88 MB) w/256KiB Cache, CHS=172/255/63
hda: cache flushes supported
 hda: unknown partition table
ne.c:v1.10 9/23/94 Donald Becker (becker@scyld.com)
Last modified Nov 1, 2000 by Paul Gortmaker
NE*000 ethercard probe at 0x300:52:54:00:12:34:56
eth0: NE2000 found at 0x300, using IRQ 9.
console [netcon0] enabled
netconsole: network logging started
mice: PS/2 mouse device common for all mice
md: linear personality registered for level -1
md: raid0 personality registered for level 0
md: raid1 personality registered for level 1
md: raid10 personality registered for level 10
md: multipath personality registered for level -4
md: faulty personality registered for level -5
device-mapper: ioctl: 4.17.0-ioctl (2010-03-05) initialised:
dm-devel@redhat.com
oprofile: using timer interrupt.
TCP cubic registered
NET: Registered protocol family 17
IP-Config: Complete:
     device=eth0, addr=192.168.7.2, mask=255.255.255.0, gw=192.168.7.1,
     host=192.168.7.2, domain=, nis-domain=(none),
     bootserver=255.255.255.255, rootserver=255.255.255.255, rootpath=
md: Waiting for all devices to be available before autodetect
md: If you don't use raid, use raid=noautodetect
md: Autodetecting RAID arrays.
md: Scanned 0 and added 0 devices.
md: autorun ...
md: ... autorun DONE.
EXT3-fs (hda): warning: feature flags set on rev 0 fs, running e2fsck is
recommended
EXT3-fs (hda): mounted filesystem with writeback data mode
VFS: Mounted root (ext3 filesystem) readonly on device 3:0.
Freeing unused kernel memory: 180k init
kjournald starting.  Commit interval 5 seconds
EXT3-fs (hda): warning: updating to rev 1 because of new feature flag,
running e2fsck is recommended
EXT3-fs (hda): using internal journal
 
Yocto Linux (Built by Poky 4.0) 0.9 qemuppc ttyS0
 
qemuppc login: root
root@qemuppc:~# 


  _____  

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
On Behalf Of sachin kumar
Sent: Wednesday, November 24, 2010 6:30 PM
To: Garman, Scott A
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Using poky qemy for powerpc


Hello Scott:

I want to run linux on powerpc on qemu. My host machine is running Fedora13.

For that i have downloaded following from yocto project website.

Disk Image: yocto-image-minimal-qemuppc-0.9.rootfs.ext3
Kernel Image : zImage-2.6.34-qemuppc-0.9.bin
Toolchain: yocto-eglibc-i586-powerpc-toolchain-sdk-0.9.tar.bz2

I have installed toolchain in /opt/poky

I have also copied Disk "yocto-image-minimal-qemuppc-0.9.rootfs.ext3" and
"Kernel Image : zImage-2.6.34-qemuppc-0.9.bin" in the /opt/poky directory


To run qemu i am using following commands


[sachin@sachinlinux poky]$ source environment-setup-ppc603e-poky-linux


[sachin@sachinlinux poky]$ poky-qemu qemuppc zImage-2.6.34-qemuppc-0.9.bin
yocto-image-minimal-qemuppc-0.9.rootfs.ext3 
In order for this script to dynamically infer paths
to kernels or filesystem images, you either need
bitbake in your PATH or to source poky-init-build-env
before running this script


So i am not able to run poky-qemu command.

Please suggest what to do next.

Regards
Sachin


On Thu, Nov 25, 2010 at 2:49 AM, Scott Garman <scott.a.garman@intel.com>
wrote:


On 11/24/2010 08:26 AM, sachin kumar wrote:


Dear All:

Please let me know if there is proper documentation of using poky qemu
for running linux on powerpc platform.

Regards
Sachin



Hi Sachin,

I'm a Yocto Project developer at Intel and was responsible for making some
significant changes to the poky-qemu script for our 0.9 release.

I wanted to follow-up with you off-list to see if you are still having
issues after following Jessica's advice and let you know that I'm available
as a resource to resolve any further problems you're having with that
script.

Scott

-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project




------=_NextPart_001_006E_01CB8C0C.6AA1B5B0
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD>
<META content=3D"text/html; charset=3Dus-ascii" =
http-equiv=3DContent-Type>
<META name=3DGENERATOR content=3D"MSHTML 8.00.6001.18975"></HEAD>
<BODY>
<DIV dir=3Dltr align=3Dleft><SPAN class=3D252231603-25112010><FONT =
color=3D#0000ff=20
size=3D2 face=3DArial>Kumar,</FONT></SPAN></DIV>
<DIV dir=3Dltr align=3Dleft><SPAN class=3D252231603-25112010><FONT =
color=3D#0000ff=20
size=3D2 face=3DArial></FONT></SPAN>&nbsp;</DIV>
<DIV dir=3Dltr align=3Dleft><SPAN class=3D252231603-25112010><FONT =
color=3D#0000ff=20
size=3D2 face=3DArial>I just download the exact same set on my Ubuntu =
10.04 (I know=20
many&nbsp;people are using F13, so I'm sure it's a pretty stable distro =
for=20
Yocto to be run on) and everything works, here's my =
output:</FONT></SPAN></DIV>
<DIV dir=3Dltr align=3Dleft><SPAN class=3D252231603-25112010><FONT =
color=3D#0000ff=20
size=3D2 face=3DArial></FONT></SPAN>&nbsp;</DIV>
<DIV dir=3Dltr align=3Dleft><SPAN class=3D252231603-25112010><FONT =
color=3D#0000ff=20
size=3D2 face=3DArial><A=20
href=3D"mailto:jzhang@jzhang-desktop:/opt/poky$">jzhang@jzhang-desktop:/o=
pt/poky$</A>=20
source environment-setup-ppc603e-poky-linux <BR><A=20
href=3D"mailto:jzhang@jzhang-desktop:/opt/poky$">jzhang@jzhang-desktop:/o=
pt/poky$</A>=20
poky-qemu qemuppc /home/jzhang/Downloads/zImage-2.6.34-qemuppc-0.9.bin=20
/home/jzhang/Downloads/yocto-image-minimal-qemuppc-0.9.rootfs.ext3=20
ext3</FONT></SPAN></DIV>
<DIV>&nbsp;</DIV>
<DIV dir=3Dltr align=3Dleft><SPAN class=3D252231603-25112010><FONT =
color=3D#0000ff=20
size=3D2 face=3DArial>Continuing with the following =
parameters:<BR>KERNEL:=20
[/home/jzhang/Downloads/zImage-2.6.34-qemuppc-0.9.bin]<BR>ROOTFS:=20
[/home/jzhang/Downloads/yocto-image-minimal-qemuppc-0.9.rootfs.ext3]<BR>F=
STYPE:=20
[ext3]<BR>Acquiring lockfile for tap0...<BR>Warning: Stale lock file =
detected,=20
deleting /tmp/qemu-tap-locks/tap0.lock<BR>Using preconfigured tap device =

'tap0'<BR>Starting distccd...<BR>Running=20
qemu-system-ppc...<BR>/opt/poky/sysroots/i586-pokysdk-linux/usr/bin/qemu-=
system-ppc=20
-kernel /home/jzhang/Downloads/zImage-2.6.34-qemuppc-0.9.bin -net =
nic,vlan=3D0=20
-net tap,vlan=3D0,ifname=3Dtap0,script=3Dno,downscript=3Dno -cpu 603e -M =
prep -bios=20
powerpc_rom.bin -hda=20
/home/jzhang/Downloads/yocto-image-minimal-qemuppc-0.9.rootfs.ext3 =
-no-reboot=20
-show-cursor -usb -usbdevice wacom-tablet -nographic -no-reboot --append =

"root=3D/dev/hda console=3DttyS0 console=3Dtty0=20
ip=3D192.168.7.2::192.168.7.1:255.255.255.0 mem=3D128M "<BR>Using QEMU =
machine=20
description<BR>Linux version 2.6.34.7-wr-standard (<A=20
href=3D"mailto:pokybuild@autobuilder">pokybuild@autobuilder</A>) (gcc =
version=20
4.5.0 20100729 (prerelease) (GCC) ) #1 PREEMPT Sun Oct 24 08:14:18 PDT=20
2010<BR>PCI host bridge <A>/pci@80800000</A> (primary) ranges:<BR>&nbsp; =
IO=20
0x0000000080000000..0x00000000807fffff -&gt; =
0x0000000000000000<BR>&nbsp;MEM=20
0x00000000c0000000..0x00000000c0ffffff -&gt; 0x0000000000000000 =
<BR>bootconsole=20
[udbg0] enabled<BR>qemu_find_bridges: config at fd400000<BR>arch: =
exit<BR>Zone=20
PFN ranges:<BR>&nbsp; DMA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x00000000 -&gt; =

0x00008000<BR>&nbsp; Normal&nbsp;&nbsp; empty<BR>Movable zone start PFN =
for each=20
node<BR>early_node_map[1] active PFN ranges<BR>&nbsp;&nbsp;&nbsp; 0: =
0x00000000=20
-&gt; 0x00008000<BR>Built 1 zonelists in Zone order, mobility grouping =
on.&nbsp;=20
Total pages: 32512<BR>Kernel command line: root=3D/dev/hda =
console=3DttyS0=20
console=3Dtty0 ip=3D192.168.7.2::192.168.7.1:255.255.255.0 mem=3D128M =
<BR>PID hash=20
table entries: 512 (order: -1, 2048 bytes)<BR>Dentry cache hash table =
entries:=20
16384 (order: 4, 65536 bytes)<BR>Inode-cache hash table entries: 8192 =
(order: 3,=20
32768 bytes)<BR>Memory: 124600k/131072k available (4808k kernel code, =
6472k=20
reserved, 200k data, 311k bss, 180k init)<BR>Kernel virtual memory=20
layout:<BR>&nbsp; * 0xfffdf000..0xfffff000&nbsp; : fixmap<BR>&nbsp; *=20
0xfd400000..0xfe000000&nbsp; : early ioremap<BR>&nbsp; *=20
0xc9000000..0xfd400000&nbsp; : vmalloc &amp; ioremap<BR>SLUB: =
Genslabs=3D13,=20
HWalign=3D32, Order=3D0-3, MinObjects=3D0, CPUs=3D1, =
Nodes=3D1<BR>Hierarchical RCU=20
implementation.<BR>RCU-based detection of stalled CPUs is=20
enabled.<BR>NR_IRQS:512 nr_irqs:512<BR>i8259 legacy interrupt controller =

initialized<BR>clocksource: timebase mult[2800000] shift[22]=20
registered<BR>Console: colour dummy device 80x25<BR>console [tty0] =
enabled,=20
bootconsole=20
disabled<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;=20
<BR>Using QEMU machine description<BR>Linux version 2.6.34.7-wr-standard =
(<A=20
href=3D"mailto:pokybuild@autobuilder">pokybuild@autobuilder</A>) (gcc =
version=20
4.5.0 20100729 (prerelease) (GCC) ) #1 PREEMPT Sun Oct 24 08:14:18 PDT=20
2010<BR>PCI host bridge <A>/pci@80800000</A> (primary) ranges:<BR>&nbsp; =
IO=20
0x0000000080000000..0x00000000807fffff -&gt; =
0x0000000000000000<BR>&nbsp;MEM=20
0x00000000c0000000..0x00000000c0ffffff -&gt; 0x0000000000000000 =
<BR>bootconsole=20
[udbg0] enabled<BR>qemu_find_bridges: config at fd400000<BR>Zone PFN=20
ranges:<BR>&nbsp; DMA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x00000000 -&gt;=20
0x00008000<BR>&nbsp; Normal&nbsp;&nbsp; empty<BR>Movable zone start PFN =
for each=20
node<BR>early_node_map[1] active PFN ranges<BR>&nbsp;&nbsp;&nbsp; 0: =
0x00000000=20
-&gt; 0x00008000<BR>Built 1 zonelists in Zone order, mobility grouping =
on.&nbsp;=20
Total pages: 32512<BR>Kernel command line: root=3D/dev/hda =
console=3DttyS0=20
console=3Dtty0 ip=3D192.168.7.2::192.168.7.1:255.255.255.0 mem=3D128M =
<BR>PID hash=20
table entries: 512 (order: -1, 2048 bytes)<BR>Dentry cache hash table =
entries:=20
16384 (order: 4, 65536 bytes)<BR>Inode-cache hash table entries: 8192 =
(order: 3,=20
32768 bytes)<BR>Memory: 124600k/131072k available (4808k kernel code, =
6472k=20
reserved, 200k data, 311k bss, 180k init)<BR>Kernel virtual memory=20
layout:<BR>&nbsp; * 0xfffdf000..0xfffff000&nbsp; : fixmap<BR>&nbsp; *=20
0xfd400000..0xfe000000&nbsp; : early ioremap<BR>&nbsp; *=20
0xc9000000..0xfd400000&nbsp; : vmalloc &amp; ioremap<BR>SLUB: =
Genslabs=3D13,=20
HWalign=3D32, Order=3D0-3, MinObjects=3D0, CPUs=3D1, =
Nodes=3D1<BR>Hierarchical RCU=20
implementation.<BR>RCU-based detection of stalled CPUs is=20
enabled.<BR>NR_IRQS:512 nr_irqs:512<BR>i8259 legacy interrupt controller =

initialized<BR>clocksource: timebase mult[2800000] shift[22]=20
registered<BR>Console: colour dummy device 80x25<BR>console [tty0] =
enabled,=20
bootconsole disabled<BR>Security Framework initialized<BR>Mount-cache =
hash table=20
entries: 512<BR>NET: Registered protocol family 16<BR>PCI: Probing PCI=20
hardware<BR>pci 0000:00:0c.0: BAR 0: assigned [mem 0xc0800000-0xc0ffffff =

pref]<BR>pci 0000:00:0c.0: BAR 0: set to [mem 0xc0800000-0xc0ffffff =
pref] (PCI=20
address [0x800000-0xffffff]<BR>pci 0000:00:0d.0: BAR 0: assigned [mem=20
0xc0000000-0xc00000ff]<BR>pci 0000:00:0d.0: BAR 0: set to [mem=20
0xc0000000-0xc00000ff] (PCI address [0x0-0xff]<BR>bio: create slab =
&lt;bio-0&gt;=20
at 0<BR>vgaarb: device added:=20
PCI:0000:00:0c.0,decodes=3Dio+mem,owns=3Dnone,locks=3Dnone<BR>vgaarb:=20
loaded<BR>Switching to clocksource timebase<BR>NET: Registered protocol =
family=20
2<BR>IP route cache hash table entries: 1024 (order: 0, 4096 =
bytes)<BR>TCP=20
established hash table entries: 4096 (order: 3, 32768 bytes)<BR>TCP bind =
hash=20
table entries: 4096 (order: 2, 16384 bytes)<BR>TCP: Hash tables =
configured=20
(established 4096 bind 4096)<BR>TCP reno registered<BR>UDP hash table =
entries:=20
256 (order: 0, 4096 bytes)<BR>UDP-Lite hash table entries: 256 (order: =
0, 4096=20
bytes)<BR>NET: Registered protocol family 1<BR>RPC: Registered udp =
transport=20
module.<BR>RPC: Registered tcp transport module.<BR>RPC: Registered tcp =
NFSv4.1=20
backchannel transport module.<BR>VFS: Disk quotas =
dquot_6.5.2<BR>Dquot-cache=20
hash table entries: 1024 (order 0, 4096 bytes)<BR>Registering unionfs =
2.5.4 (for=20
2.6.34-rc0)<BR>msgmni has been set to 243<BR>alg: No test for stdrng=20
(krng)<BR>Block layer SCSI generic (bsg) driver version 0.4 loaded =
(major=20
254)<BR>io scheduler noop registered<BR>io scheduler deadline =
registered<BR>io=20
scheduler cfq registered (default)<BR>LTT : ltt-relay init<BR>Serial: =
8250/16550=20
driver, 4 ports, IRQ sharing disabled<BR>serial8250.0: ttyS0 at I/O =
0x3f8 (irq =3D=20
4) is a 16550A<BR>console [ttyS0] enabled<BR>brd: module =
loaded<BR>Uniform=20
Multi-Platform E-IDE driver<BR>ide_generic: please use =
"probe_mask=3D0x3f" module=20
parameter for probing all legacy ISA IDE ports<BR>hda: QEMU HARDDISK, =
ATA DISK=20
drive<BR>ide0 at 0x1f0-0x1f7,0x3f6 on irq 13<BR>hdc: QEMU DVD-ROM, ATAPI =

CD/DVD-ROM drive<BR>ide1: disabled, unable to get IRQ 13<BR>ide1: failed =
to=20
initialize IDE interface<BR>ide1: disabling port<BR>ide-gd driver =
1.18<BR>hda:=20
max request size: 512KiB<BR>hda: 173634 sectors (88 MB) w/256KiB Cache,=20
CHS=3D172/255/63<BR>hda: cache flushes supported<BR>&nbsp;hda: unknown =
partition=20
table<BR>ne.c:v1.10 9/23/94 Donald Becker (<A=20
href=3D"mailto:becker@scyld.com">becker@scyld.com</A>)<BR>Last modified =
Nov 1,=20
2000 by Paul Gortmaker<BR>NE*000 ethercard probe at=20
0x300:52:54:00:12:34:56<BR>eth0: NE2000 found at 0x300, using IRQ =
9.<BR>console=20
[netcon0] enabled<BR>netconsole: network logging started<BR>mice: PS/2 =
mouse=20
device common for all mice<BR>md: linear personality registered for =
level=20
-1<BR>md: raid0 personality registered for level 0<BR>md: raid1 =
personality=20
registered for level 1<BR>md: raid10 personality registered for level =
10<BR>md:=20
multipath personality registered for level -4<BR>md: faulty personality=20
registered for level -5<BR>device-mapper: ioctl: 4.17.0-ioctl =
(2010-03-05)=20
initialised: <A=20
href=3D"mailto:dm-devel@redhat.com">dm-devel@redhat.com</A><BR>oprofile: =
using=20
timer interrupt.<BR>TCP cubic registered<BR>NET: Registered protocol =
family=20
17<BR>IP-Config: Complete:<BR>&nbsp;&nbsp;&nbsp;&nbsp; device=3Deth0,=20
addr=3D192.168.7.2, mask=3D255.255.255.0,=20
gw=3D192.168.7.1,<BR>&nbsp;&nbsp;&nbsp;&nbsp; host=3D192.168.7.2, =
domain=3D,=20
nis-domain=3D(none),<BR>&nbsp;&nbsp;&nbsp;&nbsp; =
bootserver=3D255.255.255.255,=20
rootserver=3D255.255.255.255, rootpath=3D<BR>md: Waiting for all devices =
to be=20
available before autodetect<BR>md: If you don't use raid, use=20
raid=3Dnoautodetect<BR>md: Autodetecting RAID arrays.<BR>md: Scanned 0 =
and added 0=20
devices.<BR>md: autorun ...<BR>md: ... autorun DONE.<BR>EXT3-fs (hda): =
warning:=20
feature flags set on rev 0 fs, running e2fsck is recommended<BR>EXT3-fs =
(hda):=20
mounted filesystem with writeback data mode<BR>VFS: Mounted root (ext3=20
filesystem) readonly on device 3:0.<BR>Freeing unused kernel memory: =
180k=20
init<BR>kjournald starting.&nbsp; Commit interval 5 seconds<BR>EXT3-fs =
(hda):=20
warning: updating to rev 1 because of new feature flag, running e2fsck =
is=20
recommended<BR>EXT3-fs (hda): using internal journal</FONT></SPAN></DIV>
<DIV>&nbsp;</DIV>
<DIV dir=3Dltr align=3Dleft><SPAN class=3D252231603-25112010><FONT =
color=3D#0000ff=20
size=3D2 face=3DArial>Yocto Linux (Built by Poky 4.0) 0.9 qemuppc=20
ttyS0</FONT></SPAN></DIV>
<DIV>&nbsp;</DIV>
<DIV dir=3Dltr align=3Dleft><SPAN class=3D252231603-25112010><FONT =
color=3D#0000ff=20
size=3D2 face=3DArial>qemuppc login: root<BR><A=20
href=3D"mailto:root@qemuppc">root@qemuppc</A>:~# =
<BR></FONT></SPAN></DIV><BR>
<DIV dir=3Dltr lang=3Den-us class=3DOutlookMessageHeader align=3Dleft>
<HR tabIndex=3D-1>
<FONT size=3D2 face=3DTahoma><B>From:</B> yocto-bounces@yoctoproject.org =

[mailto:yocto-bounces@yoctoproject.org] <B>On Behalf Of </B>sachin=20
kumar<BR><B>Sent:</B> Wednesday, November 24, 2010 6:30 PM<BR><B>To:</B> =
Garman,=20
Scott A<BR><B>Cc:</B> yocto@yoctoproject.org<BR><B>Subject:</B> Re: =
[yocto]=20
Using poky qemy for powerpc<BR></FONT><BR></DIV>
<DIV></DIV>Hello Scott:<BR><BR>I want to run linux on powerpc on qemu. =
My host=20
machine is running Fedora13.<BR><BR>For that i have downloaded following =
from=20
yocto project website.<BR><BR>Disk Image:=20
yocto-image-minimal-qemuppc-0.9.rootfs.ext3<BR>Kernel Image :=20
zImage-2.6.34-qemuppc-0.9.bin<BR>Toolchain:=20
yocto-eglibc-i586-powerpc-toolchain-sdk-0.9.tar.bz2<BR><BR>I have =
installed=20
toolchain in /opt/poky<BR><BR>I have also copied Disk=20
"yocto-image-minimal-qemuppc-0.9.rootfs.ext3" and "Kernel Image :=20
zImage-2.6.34-qemuppc-0.9.bin" in the /opt/poky directory<BR><BR><BR>To =
run qemu=20
i am using following commands<BR><BR><BR>[sachin@sachinlinux poky]$ =
source=20
environment-setup-ppc603e-poky-linux<BR><BR><BR>[sachin@sachinlinux =
poky]$=20
poky-qemu qemuppc zImage-2.6.34-qemuppc-0.9.bin=20
yocto-image-minimal-qemuppc-0.9.rootfs.ext3 <BR>In order for this script =
to=20
dynamically infer paths<BR>to kernels or filesystem images, you either=20
need<BR>bitbake in your PATH or to source poky-init-build-env<BR>before =
running=20
this script<BR><BR><BR>So i am not able to run poky-qemu =
command.<BR><BR>Please=20
suggest what to do next.<BR><BR>Regards<BR>Sachin<BR><BR>
<DIV class=3Dgmail_quote>On Thu, Nov 25, 2010 at 2:49 AM, Scott Garman =
<SPAN=20
dir=3Dltr>&lt;<A href=3D"mailto:scott.a.garman@intel.com"=20
target=3D_blank>scott.a.garman@intel.com</A>&gt;</SPAN> wrote:<BR>
<BLOCKQUOTE=20
style=3D"BORDER-LEFT: rgb(204,204,204) 1px solid; MARGIN: 0pt 0pt 0pt =
0.8ex; PADDING-LEFT: 1ex"=20
class=3Dgmail_quote>
  <DIV>
  <DIV></DIV>
  <DIV>On 11/24/2010 08:26 AM, sachin kumar wrote:<BR>
  <BLOCKQUOTE=20
  style=3D"BORDER-LEFT: rgb(204,204,204) 1px solid; MARGIN: 0pt 0pt 0pt =
0.8ex; PADDING-LEFT: 1ex"=20
  class=3Dgmail_quote>Dear All:<BR><BR>Please let me know if there is =
proper=20
    documentation of using poky qemu<BR>for running linux on powerpc=20
    =
platform.<BR><BR>Regards<BR>Sachin<BR></BLOCKQUOTE><BR></DIV></DIV>Hi=20
  Sachin,<BR><BR>I'm a Yocto Project developer at Intel and was =
responsible for=20
  making some significant changes to the poky-qemu script for our 0.9=20
  release.<BR><BR>I wanted to follow-up with you off-list to see if you =
are=20
  still having issues after following Jessica's advice and let you know =
that I'm=20
  available as a resource to resolve any further problems you're having =
with=20
  that script.<BR><BR>Scott<BR><FONT color=3D#888888><BR>-- <BR>Scott=20
  Garman<BR>Embedded Linux Distro Engineer - Yocto=20
Project<BR></FONT></BLOCKQUOTE></DIV><BR></BODY></HTML>

------=_NextPart_001_006E_01CB8C0C.6AA1B5B0--

------=_NextPart_000_006D_01CB8C0C.6AA1B5B0
Content-Type: application/x-pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIIdiDCCAyAw
ggKJoAMCAQICBDXe9M8wDQYJKoZIhvcNAQEFBQAwTjELMAkGA1UEBhMCVVMxEDAOBgNVBAoTB0Vx
dWlmYXgxLTArBgNVBAsTJEVxdWlmYXggU2VjdXJlIENlcnRpZmljYXRlIEF1dGhvcml0eTAeFw05
ODA4MjIxNjQxNTFaFw0xODA4MjIxNjQxNTFaME4xCzAJBgNVBAYTAlVTMRAwDgYDVQQKEwdFcXVp
ZmF4MS0wKwYDVQQLEyRFcXVpZmF4IFNlY3VyZSBDZXJ0aWZpY2F0ZSBBdXRob3JpdHkwgZ8wDQYJ
KoZIhvcNAQEBBQADgY0AMIGJAoGBAMFdsVhnCGLuoJotHwhtkRRomAoe/toEbxOEYiHD0XzOnwXg
uAHwTjTs4oqVBGSs8WtTXwWzy2eAv0ICjv7dAQns4QAUT/z78AzdQ7pbK+EfgHCZFVeTFvEPl2q3
wmgjHMxNWTCsUR47ryvW7mNFe8XZX1DS41APOojnvxT94Me5AgMBAAGjggEJMIIBBTBwBgNVHR8E
aTBnMGWgY6BhpF8wXTELMAkGA1UEBhMCVVMxEDAOBgNVBAoTB0VxdWlmYXgxLTArBgNVBAsTJEVx
dWlmYXggU2VjdXJlIENlcnRpZmljYXRlIEF1dGhvcml0eTENMAsGA1UEAxMEQ1JMMTAaBgNVHRAE
EzARgQ8yMDE4MDgyMjE2NDE1MVowCwYDVR0PBAQDAgEGMB8GA1UdIwQYMBaAFEjmaPkr0rKV10fY
IyAQTzOYkJ/UMB0GA1UdDgQWBBRI5mj5K9KylddH2CMgEE8zmJCf1DAMBgNVHRMEBTADAQH/MBoG
CSqGSIb2fQdBAAQNMAsbBVYzLjBjAwIGwDANBgkqhkiG9w0BAQUFAAOBgQBYzinq/Pfetc4CuRe1
hdG54+CVzCUxDQCmkm5/tpJjnlCV0Zpv5BHeY4VumO6o/1rI01WyZnFX3sAh6z0qpyNJAQSGQnv8
7n+iFlK1Z2fTQNs7JliyKHc9rhR3Ydb6KmYnoA36p3Nc6nDxlCFlRF/6/O8paKmih3nvee9PrAd3
ODCCAz0wggKmoAMCAQICAwWw/zANBgkqhkiG9w0BAQUFADBOMQswCQYDVQQGEwJVUzEQMA4GA1UE
ChMHRXF1aWZheDEtMCsGA1UECxMkRXF1aWZheCBTZWN1cmUgQ2VydGlmaWNhdGUgQXV0aG9yaXR5
MB4XDTA2MDIxNjE4MDEzMFoXDTE2MDIxOTE4MDEzMFowUjELMAkGA1UEBhMCVVMxGjAYBgNVBAoT
EUludGVsIENvcnBvcmF0aW9uMScwJQYDVQQDEx5JbnRlbCBFeHRlcm5hbCBCYXNpYyBQb2xpY3kg
Q0EwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDBpd/XOb9QVqEZ8mQ1042TdOIq3ATD
IsV2xDyt30yLyMR5Wjtus0bn3B+he89BiNO/LP6+rFzEwlD55PlX+HLGIKeNNG97dqyc30FElEUj
ZzTZFq2N4e3kVJ/XAEEgANzV8v9qp7qWwxugPgfc3z9BkYot+CifozexHLb/hEZj+yISCU61kRZv
uSQ0E11yYL4dRgcglJeaHo3oX57rvIckaLsYV5/1Aj+R8DM1Ppk965XQAKsHfnyT7C4S50T4lVn4
lz36wOdNZn/zegG1zp41lnoTFfT4KuKVJH5x7YD1p6KbgJCKLovnujGuohquBNfdXKpZkvz6pGv+
iC1HawJdAgMBAAGjgaAwgZ0wDgYDVR0PAQH/BAQDAgEGMB0GA1UdDgQWBBQaxgxKxEdvqNutK/D0
Vgaj7TdUDDA6BgNVHR8EMzAxMC+gLaArhilodHRwOi8vY3JsLmdlb3RydXN0LmNvbS9jcmxzL3Nl
Y3VyZWNhLmNybDAfBgNVHSMEGDAWgBRI5mj5K9KylddH2CMgEE8zmJCf1DAPBgNVHRMBAf8EBTAD
AQH/MA0GCSqGSIb3DQEBBQUAA4GBABMQOK2kVKVIlUWwLTdywJ+e2O+PC/uQltK2F3lRyrPfBn69
tOkIP4SgDJOfsxyobIrPLe75kBLw+Dom13OBDp/EMZJZ1CglQfVV8co9mT3aZMjSGGQiMgkJLR3j
Mfr900fXZKj5XeqCJ+JP0mEhJGEdVCY+FFlksJjV86fDrq1QMIIFYzCCBEugAwIBAgIKYSyUiQAA
AAAABTANBgkqhkiG9w0BAQUFADBSMQswCQYDVQQGEwJVUzEaMBgGA1UEChMRSW50ZWwgQ29ycG9y
YXRpb24xJzAlBgNVBAMTHkludGVsIEV4dGVybmFsIEJhc2ljIFBvbGljeSBDQTAeFw0wNjAzMjIy
MjIyNDJaFw0xMjAzMjIyMjMyNDJaMFYxCzAJBgNVBAYTAlVTMRowGAYDVQQKExFJbnRlbCBDb3Jw
b3JhdGlvbjErMCkGA1UEAxMiSW50ZWwgRXh0ZXJuYWwgQmFzaWMgSXNzdWluZyBDQSAzQTCCASIw
DQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKvXqH/ah10uJc7YzQUh+XEDNqS6IsXOyqCtizr9
x6F+v6iRAbvddRRJRWixfV78qarSN9WMymJ90M8c9/Dfr1yzFuq95RgCAF3vdve3wKi7kJv6lkMJ
wyyB+uIYcWtljYx2LDqbb9S6Z6He3q8W/aGKvu23I9ksNx+cmZcDNZwGdXVIEHpEMyA4bp0RvYtf
p8BsGAyn6YuK63HugeyYdeFL+4+Wz2tGUqw9OWhob6oV1oDH3zboLhHJiQ2oIj3jAJ3/LrIkzcWP
2R20UIliDAPAAl6MNWJPdsNK5EEeuxEuUSpdFsMj5rBmPHH4U8i8rUmi6GEOcX5rwAw64AzS3gEC
AwEAAaOCAjUwggIxMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFAlpgTN7BnOPI0wKA9/3FoER
ghMFMAsGA1UdDwQEAwIBhjAQBgkrBgEEAYI3FQEEAwIBADAZBgkrBgEEAYI3FAIEDB4KAFMAdQBi
AEMAQTAfBgNVHSMEGDAWgBQaxgxKxEdvqNutK/D0Vgaj7TdUDDCBvQYDVR0fBIG1MIGyMIGvoIGs
oIGphk5odHRwOi8vd3d3LmludGVsLmNvbS9yZXBvc2l0b3J5L0NSTC9JbnRlbCUyMEV4dGVybmFs
JTIwQmFzaWMlMjBQb2xpY3klMjBDQS5jcmyGV2h0dHA6Ly9jZXJ0aWZpY2F0ZXMuaW50ZWwuY29t
L3JlcG9zaXRvcnkvQ1JML0ludGVsJTIwRXh0ZXJuYWwlMjBCYXNpYyUyMFBvbGljeSUyMENBLmNy
bDCB4wYIKwYBBQUHAQEEgdYwgdMwYwYIKwYBBQUHMAKGV2h0dHA6Ly93d3cuaW50ZWwuY29tL3Jl
cG9zaXRvcnkvY2VydGlmaWNhdGVzL0ludGVsJTIwRXh0ZXJuYWwlMjBCYXNpYyUyMFBvbGljeSUy
MENBLmNydDBsBggrBgEFBQcwAoZgaHR0cDovL2NlcnRpZmljYXRlcy5pbnRlbC5jb20vcmVwb3Np
dG9yeS9jZXJ0aWZpY2F0ZXMvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIwUG9saWN5JTIwQ0Eu
Y3J0MA0GCSqGSIb3DQEBBQUAA4IBAQCuNCnecJ+vDpXzsHOzMEyz4KgTNDbJROHag8H/ZVga7soc
oJyC+HKqDfQgxifVorbTbSajCBEAxqg6bbNWBJ6qKOFHneBrXkENf5WdD50eCTCFWRV3EIsHEOQ1
kP0eNYV5Ed4hp9y6wASV6z2z86O4+qouLJiow4AIhoCKD8rEyD7ODgTvjvLCKpsVyPlG1jOVSsOS
IF2VUmueAmK3RFU4np83zerK/j0G37owhniEDT6ZhwkUd0XL45nt1m7yApMEbnXUTHNaXnE+P98k
k3nDXdW25sB+5xWcYR3GpgMdQiZgP/f0KZ+yZKNE7gcp3I/O4pXqUNWIsLSYTi3soAR2MIIFYzCC
BEugAwIBAgIKYSyl/gAAAAAABjANBgkqhkiG9w0BAQUFADBSMQswCQYDVQQGEwJVUzEaMBgGA1UE
ChMRSW50ZWwgQ29ycG9yYXRpb24xJzAlBgNVBAMTHkludGVsIEV4dGVybmFsIEJhc2ljIFBvbGlj
eSBDQTAeFw0wNjAzMjIyMjIyNDdaFw0xMjAzMjIyMjMyNDdaMFYxCzAJBgNVBAYTAlVTMRowGAYD
VQQKExFJbnRlbCBDb3Jwb3JhdGlvbjErMCkGA1UEAxMiSW50ZWwgRXh0ZXJuYWwgQmFzaWMgSXNz
dWluZyBDQSAzQjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMDoHJYUGvcdR4k0Qv8/
RrwNX4+vEe5PN2LnGn4xfIWwdUbk5+zvrRy1HjoKdG/AShZfxAuFoVyNIah5GJLpiS/vGbsDYKK+
EZcIcmtPfvbB9Yg09EnQ0OpsZ2ORRd5lYUfMUU+zkpgL96vKFdkiG+eeHEwnSS3VikGVrF7UDdKf
vxZwRwQCx6rEHAFPCjBDVfGYZuYT1EDhSDvzEiU7KzBsxrdBCFU4RYL7kh+do+vyMDlBzpw3WKvM
Vbf3s5lxYiY7AjEhU8OSyZEQlgtK8PNyifHjmyrSaeJrPshM3PuLFG4d3gm1UJEiGNzxcHGb6YLP
29IQAwY5mAk8j+UOVcsCAwEAAaOCAjUwggIxMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFG/D
cREooZ0ZV/VnV8/ZKSaI1aWiMAsGA1UdDwQEAwIBhjAQBgkrBgEEAYI3FQEEAwIBADAZBgkrBgEE
AYI3FAIEDB4KAFMAdQBiAEMAQTAfBgNVHSMEGDAWgBQaxgxKxEdvqNutK/D0Vgaj7TdUDDCBvQYD
VR0fBIG1MIGyMIGvoIGsoIGphk5odHRwOi8vd3d3LmludGVsLmNvbS9yZXBvc2l0b3J5L0NSTC9J
bnRlbCUyMEV4dGVybmFsJTIwQmFzaWMlMjBQb2xpY3klMjBDQS5jcmyGV2h0dHA6Ly9jZXJ0aWZp
Y2F0ZXMuaW50ZWwuY29tL3JlcG9zaXRvcnkvQ1JML0ludGVsJTIwRXh0ZXJuYWwlMjBCYXNpYyUy
MFBvbGljeSUyMENBLmNybDCB4wYIKwYBBQUHAQEEgdYwgdMwYwYIKwYBBQUHMAKGV2h0dHA6Ly93
d3cuaW50ZWwuY29tL3JlcG9zaXRvcnkvY2VydGlmaWNhdGVzL0ludGVsJTIwRXh0ZXJuYWwlMjBC
YXNpYyUyMFBvbGljeSUyMENBLmNydDBsBggrBgEFBQcwAoZgaHR0cDovL2NlcnRpZmljYXRlcy5p
bnRlbC5jb20vcmVwb3NpdG9yeS9jZXJ0aWZpY2F0ZXMvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2lj
JTIwUG9saWN5JTIwQ0EuY3J0MA0GCSqGSIb3DQEBBQUAA4IBAQBAiWWHL6T21QXFZDyaUIye0jh7
f40GXqi75Ro5JbpROtlZBqyRq6oPMAG6Igxd5Bd9TMtNkOvguknFnK1y17UdMhLOl+FuInE+FAWk
803aRW27OsX+ot0KmPioKnZ3L1K5qcQS3tp6or7AaZzd0w0qFitm4UfP9nnTXQtY9XM5QJ07IKFD
E3tlOlamKhjbiJV3FKigCVesPZSx9h2G7Ve4irEfz915Vks26AJHGZagEHNxM9exkgem4ENsG+t0
vYqn9x7YsqJ6fmbOSyrzjzb3CYeEfyE5SL+f3Vx9uMsQDyb8LVCDBXQtxLEHnFEBPrRSSF9kPmyj
avx4UqFdPEyCMIIGAzCCBOugAwIBAgIKGmwusAAAAAApdjANBgkqhkiG9w0BAQUFADBWMQswCQYD
VQQGEwJVUzEaMBgGA1UEChMRSW50ZWwgQ29ycG9yYXRpb24xKzApBgNVBAMTIkludGVsIEV4dGVy
bmFsIEJhc2ljIElzc3VpbmcgQ0EgM0IwHhcNMDgwNDE0MjMxNDQ4WhcNMTEwNDE0MjMxNDQ4WjBB
MRcwFQYDVQQDEw5aaGFuZywgSmVzc2ljYTEmMCQGCSqGSIb3DQEJARYXamVzc2ljYS56aGFuZ0Bp
bnRlbC5jb20wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDQbirxoX/8OWYyzy4UnZ7N
xXoADLZqxxH1q4lMF2zuAHjyDnNj/4ReRzB6AIDEg1BQWS4z5jC6oApos3HvFEsGbS3pYCWSo5Vb
jtY5HWOBRPJ2rQ8wzITqcEEBWooYCj5LJeAjPuOZoZPVrKPI1khbOYzaJUwQpICfaErHZyM4p2mV
AYXcUa/N0zKGnZmNaO6Dff96g41C9jEyfOFEtYOpLdQoXhD1i8tW17WxbHMuiXx3PR3GUdBADrRf
I3wzqn4rh0y0D4l9mBfgTybVN3UR35ZFGSRsuldyJeeKcCSgghJi3K4ZTxzMfQ6+OKBu6SBeNKWk
e2Q4f8CIf0+8ZpwfAgMBAAGjggLmMIIC4jALBgNVHQ8EBAMCB4AwHQYDVR0OBBYEFPIpOYEzCqH+
037yR8d0Rarz7r7mMDwGCSsGAQQBgjcVBwQvMC0GJSsGAQQBgjcVCIbDjHWEmeVRg/2BKIWOn1OC
kcAJZ4HevTmV8EMCAWQCAQYwHwYDVR0jBBgwFoAUb8NxESihnRlX9WdXz9kpJojVpaIwgckGA1Ud
HwSBwTCBvjCBu6CBuKCBtYZUaHR0cDovL3d3dy5pbnRlbC5jb20vcmVwb3NpdG9yeS9DUkwvSW50
ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIwSXNzdWluZyUyMENBJTIwM0IuY3Jshl1odHRwOi8vY2Vy
dGlmaWNhdGVzLmludGVsLmNvbS9yZXBvc2l0b3J5L0NSTC9JbnRlbCUyMEV4dGVybmFsJTIwQmFz
aWMlMjBJc3N1aW5nJTIwQ0ElMjAzQi5jcmwwge8GCCsGAQUFBwEBBIHiMIHfMGkGCCsGAQUFBzAC
hl1odHRwOi8vd3d3LmludGVsLmNvbS9yZXBvc2l0b3J5L2NlcnRpZmljYXRlcy9JbnRlbCUyMEV4
dGVybmFsJTIwQmFzaWMlMjBJc3N1aW5nJTIwQ0ElMjAzQi5jcnQwcgYIKwYBBQUHMAKGZmh0dHA6
Ly9jZXJ0aWZpY2F0ZXMuaW50ZWwuY29tL3JlcG9zaXRvcnkvY2VydGlmaWNhdGVzL0ludGVsJTIw
RXh0ZXJuYWwlMjBCYXNpYyUyMElzc3VpbmclMjBDQSUyMDNCLmNydDAfBgNVHSUEGDAWBggrBgEF
BQcDBAYKKwYBBAGCNwoDDDApBgkrBgEEAYI3FQoEHDAaMAoGCCsGAQUFBwMEMAwGCisGAQQBgjcK
AwwwSwYDVR0RBEQwQqAnBgorBgEEAYI3FAIDoBkMF2plc3NpY2EuemhhbmdAaW50ZWwuY29tgRdq
ZXNzaWNhLnpoYW5nQGludGVsLmNvbTANBgkqhkiG9w0BAQUFAAOCAQEANFSBbauSm1ktwUQI6fGq
9XhTSUsty5/CHOrOwFe4K7LX0clVirXUYakIZXXG86lD1piRrjt23MhKRekYNIv0mfJklEF7yV5M
VVqwDK1Uz6bsiw/SQnqfBuFrd70W4cua3bU1uu3dAhZBh482BtBZYFockuHd3YBFT7xmykOaAMLP
CttrNSijP7HsbetGG2GLLc3CWauSXXr2ELseXkw3KkUKBPMw+DFAJdsRyBe0L+OwlDplr8POBXXb
uuQK7Wo84mX7gMT0uSq/Luex/BD1xn2brKVs9t4FvL8ifxv4LuWRzv45EgPN4T12I202GBQ8iJtZ
DkT3+9QPiQ35Hmuy6zCCBkowggUyoAMCAQICCnmKHVEAAAAAHyswDQYJKoZIhvcNAQEFBQAwVjEL
MAkGA1UEBhMCVVMxGjAYBgNVBAoTEUludGVsIENvcnBvcmF0aW9uMSswKQYDVQQDEyJJbnRlbCBF
eHRlcm5hbCBCYXNpYyBJc3N1aW5nIENBIDNBMB4XDTA4MDQxNDIzMTM1MVoXDTExMDQxNDIzMTM1
MVowQTEXMBUGA1UEAxMOWmhhbmcsIEplc3NpY2ExJjAkBgkqhkiG9w0BCQEWF2plc3NpY2Euemhh
bmdAaW50ZWwuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA2Lgwg9E/0F9weWx5
ZCk0oiuerOIqOFTXcithjh7zRhiq8v/z9sXR/yWXUA7JK5E5JLPRNl0nQJFv/FLTaq9/9PchiI/N
4v7L/ERXTzdMNvwOEqNOy8SOmmOOjF8N1vtrIv+WdBYiqBvtfQ9xGXadxckgrBOSTtTrw4iShbnG
mVrw6mYYIOdPIKhq3QFmxHs93R8IrmIjvMbf31JhiAp7KJ/mc+bckmYW/9fNNEQkMbuF3B6iWsTk
8c+D8oWmxuw+m6svwEMKck8yr3ldF6sZ6NCKXJChwDmjZMHBBSV6IUUycyl6SJ33j3r9Beki5bvG
mhZnfGBLWODaLv4PDbG7BwIDAQABo4IDLTCCAykwCwYDVR0PBAQDAgQwMEQGCSqGSIb3DQEJDwQ3
MDUwDgYIKoZIhvcNAwICAgCAMA4GCCqGSIb3DQMEAgIAgDAHBgUrDgMCBzAKBggqhkiG9w0DBzAd
BgNVHQ4EFgQUKEdHKlCw71rRzz5gJWoRJwoviW0wPQYJKwYBBAGCNxUHBDAwLgYmKwYBBAGCNxUI
hsOMdYSZ5VGD/YEohY6fU4KRwAlnhLnZQYeE/04CAWQCAQkwHwYDVR0jBBgwFoAUCWmBM3sGc48j
TAoD3/cWgRGCEwUwgckGA1UdHwSBwTCBvjCBu6CBuKCBtYZUaHR0cDovL3d3dy5pbnRlbC5jb20v
cmVwb3NpdG9yeS9DUkwvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIwSXNzdWluZyUyMENBJTIw
M0EuY3Jshl1odHRwOi8vY2VydGlmaWNhdGVzLmludGVsLmNvbS9yZXBvc2l0b3J5L0NSTC9JbnRl
bCUyMEV4dGVybmFsJTIwQmFzaWMlMjBJc3N1aW5nJTIwQ0ElMjAzQS5jcmwwge8GCCsGAQUFBwEB
BIHiMIHfMGkGCCsGAQUFBzAChl1odHRwOi8vd3d3LmludGVsLmNvbS9yZXBvc2l0b3J5L2NlcnRp
ZmljYXRlcy9JbnRlbCUyMEV4dGVybmFsJTIwQmFzaWMlMjBJc3N1aW5nJTIwQ0ElMjAzQS5jcnQw
cgYIKwYBBQUHMAKGZmh0dHA6Ly9jZXJ0aWZpY2F0ZXMuaW50ZWwuY29tL3JlcG9zaXRvcnkvY2Vy
dGlmaWNhdGVzL0ludGVsJTIwRXh0ZXJuYWwlMjBCYXNpYyUyMElzc3VpbmclMjBDQSUyMDNBLmNy
dDAfBgNVHSUEGDAWBggrBgEFBQcDBAYKKwYBBAGCNwoDBDApBgkrBgEEAYI3FQoEHDAaMAoGCCsG
AQUFBwMEMAwGCisGAQQBgjcKAwQwSwYDVR0RBEQwQqAnBgorBgEEAYI3FAIDoBkMF2plc3NpY2Eu
emhhbmdAaW50ZWwuY29tgRdqZXNzaWNhLnpoYW5nQGludGVsLmNvbTANBgkqhkiG9w0BAQUFAAOC
AQEAlkSHAnj2YSCjtyOIJJtoNia1mv4qLpp3rxqxeZzEG9Bk4k4hGHkozj1p+mi368ieYl/fTPtK
IIBDCwod9o12adTGGW7wyUHjZfalumhsFoKTXbUU/CC7lpooUKuDxCjaIjsc4rdDxP1MEAUX43IG
kLRqq9elDWluC0WjR+q+cAqKMJxLmAKhKz7JDTNrbfWwuoETGdCMkLUK464/FSvfDKoV+Ypkoq1x
YiTi71VhwWenYKPnyKbLgiULEgdfwQscMzJQ9rmq1iyfoXuXPSkCA6nfZKoSkBOVJQXjW/+B2wxe
YmaO9Qc5P3CJvsmgmgX5mK2wyKEw0JCwTHE3w7FkFjGCA0EwggM9AgEBMGQwVjELMAkGA1UEBhMC
VVMxGjAYBgNVBAoTEUludGVsIENvcnBvcmF0aW9uMSswKQYDVQQDEyJJbnRlbCBFeHRlcm5hbCBC
YXNpYyBJc3N1aW5nIENBIDNCAgoabC6wAAAAACl2MAkGBSsOAwIaBQCgggGyMBgGCSqGSIb3DQEJ
AzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTEwMTEyNTAzMTg0NlowIwYJKoZIhvcNAQkE
MRYEFNJtTTTW7XYPcxVm5PblL4ltfxuYMGcGCSqGSIb3DQEJDzFaMFgwCgYIKoZIhvcNAwcwDgYI
KoZIhvcNAwICAgCAMA0GCCqGSIb3DQMCAgFAMAcGBSsOAwIHMA0GCCqGSIb3DQMCAgEoMAcGBSsO
AwIaMAoGCCqGSIb3DQIFMHMGCSsGAQQBgjcQBDFmMGQwVjELMAkGA1UEBhMCVVMxGjAYBgNVBAoT
EUludGVsIENvcnBvcmF0aW9uMSswKQYDVQQDEyJJbnRlbCBFeHRlcm5hbCBCYXNpYyBJc3N1aW5n
IENBIDNBAgp5ih1RAAAAAB8rMHUGCyqGSIb3DQEJEAILMWagZDBWMQswCQYDVQQGEwJVUzEaMBgG
A1UEChMRSW50ZWwgQ29ycG9yYXRpb24xKzApBgNVBAMTIkludGVsIEV4dGVybmFsIEJhc2ljIElz
c3VpbmcgQ0EgM0ECCnmKHVEAAAAAHyswDQYJKoZIhvcNAQEBBQAEggEADyTMbckBY81xyuzYE/11
qV3Mn78DaKiMOEJzSOTxQg6LgLWCGXWSYlEunp0E0bsYuVQTXUjY8fAIsDAMSq8m++Mh4WlhjO+E
IJK9jVZjlp2Rrr7dKrTpTVlySfABSghVCM+LE1G2lNig0OmdrWcBpquMa6ENd1WPV7wqrgO93bOH
N5IDyQq15J0thfj68qYaXUnSWfACopymh12DfdJOBLsqZgZMDh3MeyC+H5CzF/BCVTAa6YGXME7l
x9aKgbXzGyfwsUKPAGHRbzPoTHNY1EfxoE3t39CnTUbI6y8SzNpmsj80RPT6UMiAr2U4Nx+X02db
XbHsUWo18fOfpqXTiwAAAAAAAA==

------=_NextPart_000_006D_01CB8C0C.6AA1B5B0--
