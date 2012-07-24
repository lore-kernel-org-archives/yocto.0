Return-Path: <elvis.dowson@gmail.com>
Received: from mail-gh0-f176.google.com (mail-gh0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98B9DE00280
	for <yocto@yoctoproject.org>; Tue, 24 Jul 2012 10:04:00 -0700 (PDT)
Received: by ghbz10 with SMTP id z10so8046822ghb.35
	for <yocto@yoctoproject.org>; Tue, 24 Jul 2012 10:04:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:date:message-id:to:mime-version:x-mailer;
	bh=jgZJBjgu2/YLky0ri+pE52p26tc7fKSjmI1fU10C9r4=;
	b=xB91gTV4ZoJcTOV4taIynrqvt07N4/S/uJmUWhR8KGuR4oCgS3nItfS4pdkLs/Yg/h
	mHQaizt4StoTts7+sCjgGLmkKq9ceAl00NN21I9ovPnwRQE0MdvSEkkfiZzLFdqvuRes
	I1OUmz+RLaw/xXscQO9pIKc0bWCT+gRpLFvwskn+IkADVdLSrxxefi6GOdxLQ6tIbNcN
	HHn5y7GWJVz9dVMcT7TeVA+iuRMq0Zbs/fcRhrS9jAeMH/af6VAwnRZh5K1AboSKdW0t
	k7KaPZmOu4Fk32TsnbE5XUfli/Rih2zBV2YChum+kMcvky+oc9vzbxM/gAP9QoYAIWi6
	pT3Q==
Received: by 10.66.84.202 with SMTP id b10mr6076729paz.72.1343149439385;
	Tue, 24 Jul 2012 10:03:59 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id rs4sm12514418pbc.0.2012.07.24.10.03.56
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 24 Jul 2012 10:03:58 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Tue, 24 Jul 2012 21:03:52 +0400
Message-Id: <3E35CC86-5BD8-4B88-99EE-F7C8A5742F50@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
Subject: Unable to get login prompt for Xilinx ML507 PowerPC440 target development board
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
X-List-Received-Date: Tue, 24 Jul 2012 17:04:00 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_DF14C43D-A568-4D0A-AAC3-32C6DF0A8938"

--Apple-Mail=_DF14C43D-A568-4D0A-AAC3-32C6DF0A8938
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,
      I have progressed somewhat further with getting Yocto to build a =
kernel image and rootfilesystem for the Xilinx ML507 PowerPC440 target =
development board.

For some reason, I'm unable to get a login prompt. The serial console =
device is ttyUL0. If someone could help me figure out what's going =
wrong, it would be great. I have checked /etc/securetty and it does =
contain an entry for ttyUL0.

Here is the output of the linux boot process:

Using Xilinx Virtex440 machine description                     =20
Linux version 2.6.38+ (elvis@eos) (gcc version 4.7.2 20120706 =
(prerelease) (GCC) ) #13 PREEMPT Mon Ju2
Zone PFN ranges:                                               =20
  DMA      0x00000000 -> 0x00010000
  Normal   empty
Movable zone start PFN for each node
early_node_map[1] active PFN ranges
    0: 0x00000000 -> 0x00010000
MMU: Allocated 1088 bytes of context maps for 255 contexts
Built 1 zonelists in Zone order, mobility grouping on.  Total pages: =
65024
Kernel command line: console=3DttyUL0 root=3D/dev/xsa2 rw =
rootfstype=3Dext3
PID hash table entries: 1024 (order: 0, 4096 bytes)
Dentry cache hash table entries: 32768 (order: 5, 131072 bytes)
Inode-cache hash table entries: 16384 (order: 4, 65536 bytes)
Memory: 254716k/262144k available (3788k kernel code, 7428k reserved, =
132k data, 1146k bss, 168k init)
Kernel virtual memory layout:
  * 0xfffdf000..0xfffff000  : fixmap
  * 0xfde00000..0xfe000000  : consistent mem
  * 0xfde00000..0xfde00000  : early ioremap
  * 0xd1000000..0xfde00000  : vmalloc & ioremap
Preemptable hierarchical RCU implementation.
        RCU-based detection of stalled CPUs is disabled.
        Verbose stalled-CPUs detection is disabled.
NR_IRQS:512 nr_irqs:512 16
clocksource: timebase mult[a00000] shift[22] registered
Console: colour dummy device 80x25
pid_max: default: 32768 minimum: 301
Mount-cache hash table entries: 512
devtmpfs: initialized
NET: Registered protocol family 16
PCI: Probing PCI hardware
bio: create slab <bio-0> at 0
XGpio: /plb@0/gpio@81460000: registered
XGpio: /plb@0/gpio@81440000: registered
XGpio: /plb@0/gpio@81420000: registered
XGpio: /plb@0/gpio@81400000: registered
vgaarb: loaded
Switching to clocksource timebase
NET: Registered protocol family 2
IP route cache hash table entries: 2048 (order: 1, 8192 bytes)
TCP established hash table entries: 8192 (order: 4, 65536 bytes)
TCP bind hash table entries: 8192 (order: 3, 32768 bytes)
TCP: Hash tables configured (established 8192 bind 8192)
TCP reno registered
UDP hash table entries: 256 (order: 0, 4096 bytes)
UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)
NET: Registered protocol family 1
RPC: Registered udp transport module.
RPC: Registered tcp transport module.
RPC: Registered tcp NFSv4.1 backchannel transport module.
ROMFS MTD (C) 2007 Red Hat, Inc.
JFS: nTxBlock =3D 1997, nTxLock =3D 15983
msgmni has been set to 499
Block layer SCSI generic (bsg) driver version 0.4 loaded (major 254)
io scheduler noop registered
io scheduler deadline registered
io scheduler cfq registered (default)
Console: switching to colour frame buffer device 80x30
Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
84000000.serial: ttyUL0 at MMIO 0x84000000 (irq =3D 20) is a uartlite
console [ttyUL0] enabled
brd: module loaded
loop: module loaded
of:xsysace 83600000.sysace: Xilinx SystemACE revision 1.0.12
of:xsysace 83600000.sysace: capacity: 3915072 sectors
 xsa: xsa1 xsa2
Xilinx SystemACE device driver, major=3D254
8c000000.flash: Found 1 x16 devices at 0x0 in 16-bit bank. Manufacturer =
ID 0x000089 Chip ID 0x008919
Intel/Sharp Extended Query Table at 0x010A
Intel/Sharp Extended Query Table at 0x010A
Intel/Sharp Extended Query Table at 0x010A
Intel/Sharp Extended Query Table at 0x010A
Intel/Sharp Extended Query Table at 0x010A
Using buffer write method
Using auto-unlock on power-up/resume
cfi_cmdset_0001: Erase suspend on write enabled
RedBoot partition parsing not available
of:xilinx_emaclite 81000000.ethernet: Device Tree Probing
Xilinx Emaclite MDIO: probed
of:xilinx_emaclite 81000000.ethernet: MAC address is now =
00:0a:35:01:a5:00
of:xilinx_emaclite 81000000.ethernet: Xilinx EmacLite at 0x81000000 =
mapped to 0xD11C0000, irq=3D17
of:xilinx_ps2 81480000.ps2: Device Tree Probing 'ps2'
of:xilinx_ps2 81480000.ps2: Xilinx PS2 at 0x81480000 mapped to =
0xd103e000, irq=3D22
of:xilinx_ps2 81481000.ps2: Device Tree Probing 'ps2'
of:xilinx_ps2 81481000.ps2: Xilinx PS2 at 0x81481000 mapped to =
0xd1052000, irq=3D23
mousedev: PS/2 mouse device common for all mice
TCP cubic registered
NET: Registered protocol family 17
atkbd serio0: keyboard reset failed on xilinxps2/serio at 81480000
EXT3-fs: barriers not enabled
kjournald starting.  Commit interval 5 seconds
EXT3-fs (xsa2): using internal journal
EXT3-fs (xsa2): mounted filesystem with writeback data mode
VFS: Mounted root (ext3 filesystem) on device 254:2.
devtmpfs: mounted
Freeing unused kernel memory: 168k init
input: AT Raw Set 2 keyboard as =
/devices/plb.0/xps-ps2.1/81481000.ps2/serio1/input/input0

Best regards,

Elvis Dowson=

--Apple-Mail=_DF14C43D-A568-4D0A-AAC3-32C6DF0A8938
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div>&nbsp; &nbsp; &nbsp; I have progressed somewhat further with =
getting Yocto to build a kernel image and rootfilesystem for the Xilinx =
ML507 PowerPC440 target development board.</div><div><br></div><div>For =
some reason, I'm unable to get a login prompt. The serial console device =
is ttyUL0. If someone could help me figure out what's going wrong, it =
would be great. I have checked /etc/securetty and it does contain an =
entry for ttyUL0.</div><div><br></div><div>Here is the output of the =
linux boot process:</div><div><br></div><div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Using Xilinx =
Virtex440 machine description &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Linux version =
2.6.38+ (elvis@eos) (gcc version 4.7.2 20120706 (prerelease) (GCC) ) #13 =
PREEMPT Mon Ju2</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Zone PFN ranges: &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; DMA &nbsp; &nbsp; &nbsp;0x00000000 -&gt; =
0x00010000</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; Normal &nbsp; =
empty</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">Movable zone start PFN for each node</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">early_node_map[1] =
active PFN ranges</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 0: 0x00000000 -&gt; =
0x00010000</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">MMU: Allocated 1088 bytes of context maps for =
255 contexts</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Built 1 zonelists in Zone order, mobility =
grouping on. &nbsp;Total pages: 65024</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Kernel command =
line: console=3DttyUL0 root=3D/dev/xsa2 rw =
rootfstype=3Dext3</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">PID hash table entries: 1024 (order: 0, 4096 =
bytes)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">Dentry cache hash table entries: 32768 (order: 5, 131072 =
bytes)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">Inode-cache hash table entries: 16384 (order: 4, 65536 =
bytes)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">Memory: 254716k/262144k available (3788k kernel code, 7428k =
reserved, 132k data, 1146k bss, 168k init)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Kernel virtual =
memory layout:</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; * 0xfffdf000..0xfffff000 &nbsp;: =
fixmap</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; * 0xfde00000..0xfe000000 &nbsp;: consistent =
mem</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; * 0xfde00000..0xfde00000 &nbsp;: early =
ioremap</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; * 0xd1000000..0xfde00000 &nbsp;: vmalloc &amp; =
ioremap</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">Preemptable hierarchical RCU =
implementation.</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; RCU-based =
detection of stalled CPUs is disabled.</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; Verbose stalled-CPUs detection is =
disabled.</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NR_IRQS:512 nr_irqs:512 =
16</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">clocksource: timebase mult[a00000] shift[22] =
registered</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Console: colour dummy device =
80x25</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">pid_max: default: 32768 minimum: 301</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Mount-cache hash =
table entries: 512</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">devtmpfs: initialized</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NET: Registered =
protocol family 16</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">PCI: Probing PCI =
hardware</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">bio: create slab &lt;bio-0&gt; at 0</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">XGpio: =
/plb@0/gpio@81460000: registered</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">XGpio: =
/plb@0/gpio@81440000: registered</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">XGpio: =
/plb@0/gpio@81420000: registered</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">XGpio: =
/plb@0/gpio@81400000: registered</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">vgaarb: =
loaded</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">Switching to clocksource timebase</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NET: Registered =
protocol family 2</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">IP route cache hash table entries: 2048 =
(order: 1, 8192 bytes)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">TCP established hash table entries: 8192 =
(order: 4, 65536 bytes)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">TCP bind hash table entries: 8192 (order: 3, =
32768 bytes)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">TCP: Hash tables configured (established 8192 =
bind 8192)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">TCP reno registered</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">UDP hash table =
entries: 256 (order: 0, 4096 bytes)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">UDP-Lite hash =
table entries: 256 (order: 0, 4096 bytes)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NET: Registered =
protocol family 1</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">RPC: Registered udp transport =
module.</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">RPC: Registered tcp transport module.</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">RPC: Registered =
tcp NFSv4.1 backchannel transport module.</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">ROMFS MTD (C) 2007 =
Red Hat, Inc.</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">JFS: nTxBlock =3D 1997, nTxLock =3D =
15983</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">msgmni has been set to 499</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Block layer SCSI =
generic (bsg) driver version 0.4 loaded (major =
254)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">io scheduler noop registered</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">io scheduler =
deadline registered</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">io scheduler cfq registered =
(default)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Console: switching to colour frame buffer =
device 80x30</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Serial: 8250/16550 driver, 4 ports, IRQ =
sharing disabled</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">84000000.serial: ttyUL0 at MMIO 0x84000000 =
(irq =3D 20) is a uartlite</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">console [ttyUL0] =
enabled</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">brd: module loaded</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">loop: module =
loaded</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">of:xsysace 83600000.sysace: Xilinx SystemACE revision =
1.0.12</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">of:xsysace 83600000.sysace: capacity: 3915072 =
sectors</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;xsa: xsa1 xsa2</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Xilinx SystemACE =
device driver, major=3D254</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">8c000000.flash: =
Found 1 x16 devices at 0x0 in 16-bit bank. Manufacturer ID 0x000089 Chip =
ID 0x008919</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Intel/Sharp Extended Query Table at =
0x010A</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">Intel/Sharp Extended Query Table at =
0x010A</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">Intel/Sharp Extended Query Table at =
0x010A</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">Intel/Sharp Extended Query Table at =
0x010A</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">Intel/Sharp Extended Query Table at =
0x010A</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">Using buffer write method</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Using auto-unlock =
on power-up/resume</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">cfi_cmdset_0001: Erase suspend on write =
enabled</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">RedBoot partition parsing not =
available</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">of:xilinx_emaclite 81000000.ethernet: Device =
Tree Probing</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Xilinx Emaclite MDIO: =
probed</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">of:xilinx_emaclite 81000000.ethernet: MAC address is now =
00:0a:35:01:a5:00</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">of:xilinx_emaclite 81000000.ethernet: Xilinx =
EmacLite at 0x81000000 mapped to 0xD11C0000, =
irq=3D17</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">of:xilinx_ps2 81480000.ps2: Device Tree Probing =
'ps2'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">of:xilinx_ps2 81480000.ps2: Xilinx PS2 at 0x81480000 mapped =
to 0xd103e000, irq=3D22</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">of:xilinx_ps2 81481000.ps2: Device Tree =
Probing 'ps2'</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">of:xilinx_ps2 81481000.ps2: Xilinx PS2 at =
0x81481000 mapped to 0xd1052000, irq=3D23</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">mousedev: PS/2 =
mouse device common for all mice</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">TCP cubic =
registered</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NET: Registered protocol family =
17</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">atkbd serio0: keyboard reset failed on xilinxps2/serio at =
81480000</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">EXT3-fs: barriers not enabled</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">kjournald =
starting. &nbsp;Commit interval 5 seconds</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">EXT3-fs (xsa2): =
using internal journal</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">EXT3-fs (xsa2): mounted filesystem with =
writeback data mode</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">VFS: Mounted root (ext3 filesystem) on device =
254:2.</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">devtmpfs: mounted</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Freeing unused =
kernel memory: 168k init</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">input: AT Raw Set 2 keyboard as =
/devices/plb.0/xps-ps2.1/81481000.ps2/serio1/input/input0</font></div></di=
v><div><br></div><div>Best regards,</div><div><br></div><div>Elvis =
Dowson</div></body></html>=

--Apple-Mail=_DF14C43D-A568-4D0A-AAC3-32C6DF0A8938--
