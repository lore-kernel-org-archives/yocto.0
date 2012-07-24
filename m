Return-Path: <B29882@freescale.com>
Received: from db3outboundpool.messaging.microsoft.com
	(db3ehsobe001.messaging.microsoft.com [213.199.154.139])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4083E00280
	for <yocto@yoctoproject.org>; Tue, 24 Jul 2012 12:15:55 -0700 (PDT)
Received: from mail111-db3-R.bigfish.com (10.3.81.232) by
	DB3EHSOBE006.bigfish.com (10.3.84.26) with Microsoft SMTP Server id
	14.1.225.23; Tue, 24 Jul 2012 19:15:53 +0000
Received: from mail111-db3 (localhost [127.0.0.1])	by
	mail111-db3-R.bigfish.com (Postfix) with ESMTP id 584AA380341;
	Tue, 24 Jul 2012 19:15:53 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -2
X-BigFish: VS-2(zz98dI9371I1432Izz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hf0ah107ah10d2hbe9i)
Received: from mail111-db3 (localhost.localdomain [127.0.0.1]) by mail111-db3
	(MessageSwitch) id 1343157351464587_7189;
	Tue, 24 Jul 2012 19:15:51 +0000 (UTC)
Received: from DB3EHSMHS001.bigfish.com (unknown [10.3.81.239])	by
	mail111-db3.bigfish.com (Postfix) with ESMTP id 6532B34012B;
	Tue, 24 Jul 2012 19:15:51 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by DB3EHSMHS001.bigfish.com
	(10.3.87.101) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Tue, 24 Jul 2012 19:15:50 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.109]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.02.0298.005; Tue, 24 Jul 2012 14:15:49 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Thread-Topic: [yocto] Unable to get login prompt for Xilinx ML507 PowerPC440
	target development board
Thread-Index: AQHNadC7OYpZNMvYkE6JpZKAaUPb/w==
Date: Tue, 24 Jul 2012 19:15:47 +0000
Message-ID: <CAEsOVNegFwoe+83-n88-XVAEh13cbXaX1dsY4gM9rEeuvgytCg@mail.gmail.com>
References: <3E35CC86-5BD8-4B88-99EE-F7C8A5742F50@gmail.com>
In-Reply-To: <3E35CC86-5BD8-4B88-99EE-F7C8A5742F50@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Unable to get login prompt for Xilinx ML507 PowerPC440 target development board
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 24 Jul 2012 19:15:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <41190135FCC5D74D93218A76B1A1DD7D@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 24, 2012 at 12:03 PM, Elvis Dowson <elvis.dowson@gmail.com> wro=
te:
> Hi,
>       I have progressed somewhat further with getting Yocto to build a
> kernel image and rootfilesystem for the Xilinx ML507 PowerPC440 target
> development board.
>
> For some reason, I'm unable to get a login prompt. The serial console dev=
ice
> is ttyUL0. If someone could help me figure out what's going wrong, it wou=
ld
> be great. I have checked /etc/securetty and it does contain an entry for
> ttyUL0.

You don't use /etc/inittab to spawn consoles?

-M


>
> Here is the output of the linux boot process:
>
> Using Xilinx Virtex440 machine description
> Linux version 2.6.38+ (elvis@eos) (gcc version 4.7.2 20120706 (prerelease=
)
> (GCC) ) #13 PREEMPT Mon Ju2
> Zone PFN ranges:
>   DMA      0x00000000 -> 0x00010000
>   Normal   empty
> Movable zone start PFN for each node
> early_node_map[1] active PFN ranges
>     0: 0x00000000 -> 0x00010000
> MMU: Allocated 1088 bytes of context maps for 255 contexts
> Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 6502=
4
> Kernel command line: console=3DttyUL0 root=3D/dev/xsa2 rw rootfstype=3Dex=
t3
> PID hash table entries: 1024 (order: 0, 4096 bytes)
> Dentry cache hash table entries: 32768 (order: 5, 131072 bytes)
> Inode-cache hash table entries: 16384 (order: 4, 65536 bytes)
> Memory: 254716k/262144k available (3788k kernel code, 7428k reserved, 132=
k
> data, 1146k bss, 168k init)
> Kernel virtual memory layout:
>   * 0xfffdf000..0xfffff000  : fixmap
>   * 0xfde00000..0xfe000000  : consistent mem
>   * 0xfde00000..0xfde00000  : early ioremap
>   * 0xd1000000..0xfde00000  : vmalloc & ioremap
> Preemptable hierarchical RCU implementation.
>         RCU-based detection of stalled CPUs is disabled.
>         Verbose stalled-CPUs detection is disabled.
> NR_IRQS:512 nr_irqs:512 16
> clocksource: timebase mult[a00000] shift[22] registered
> Console: colour dummy device 80x25
> pid_max: default: 32768 minimum: 301
> Mount-cache hash table entries: 512
> devtmpfs: initialized
> NET: Registered protocol family 16
> PCI: Probing PCI hardware
> bio: create slab <bio-0> at 0
> XGpio: /plb@0/gpio@81460000: registered
> XGpio: /plb@0/gpio@81440000: registered
> XGpio: /plb@0/gpio@81420000: registered
> XGpio: /plb@0/gpio@81400000: registered
> vgaarb: loaded
> Switching to clocksource timebase
> NET: Registered protocol family 2
> IP route cache hash table entries: 2048 (order: 1, 8192 bytes)
> TCP established hash table entries: 8192 (order: 4, 65536 bytes)
> TCP bind hash table entries: 8192 (order: 3, 32768 bytes)
> TCP: Hash tables configured (established 8192 bind 8192)
> TCP reno registered
> UDP hash table entries: 256 (order: 0, 4096 bytes)
> UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)
> NET: Registered protocol family 1
> RPC: Registered udp transport module.
> RPC: Registered tcp transport module.
> RPC: Registered tcp NFSv4.1 backchannel transport module.
> ROMFS MTD (C) 2007 Red Hat, Inc.
> JFS: nTxBlock =3D 1997, nTxLock =3D 15983
> msgmni has been set to 499
> Block layer SCSI generic (bsg) driver version 0.4 loaded (major 254)
> io scheduler noop registered
> io scheduler deadline registered
> io scheduler cfq registered (default)
> Console: switching to colour frame buffer device 80x30
> Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
> 84000000.serial: ttyUL0 at MMIO 0x84000000 (irq =3D 20) is a uartlite
> console [ttyUL0] enabled
> brd: module loaded
> loop: module loaded
> of:xsysace 83600000.sysace: Xilinx SystemACE revision 1.0.12
> of:xsysace 83600000.sysace: capacity: 3915072 sectors
>  xsa: xsa1 xsa2
> Xilinx SystemACE device driver, major=3D254
> 8c000000.flash: Found 1 x16 devices at 0x0 in 16-bit bank. Manufacturer I=
D
> 0x000089 Chip ID 0x008919
> Intel/Sharp Extended Query Table at 0x010A
> Intel/Sharp Extended Query Table at 0x010A
> Intel/Sharp Extended Query Table at 0x010A
> Intel/Sharp Extended Query Table at 0x010A
> Intel/Sharp Extended Query Table at 0x010A
> Using buffer write method
> Using auto-unlock on power-up/resume
> cfi_cmdset_0001: Erase suspend on write enabled
> RedBoot partition parsing not available
> of:xilinx_emaclite 81000000.ethernet: Device Tree Probing
> Xilinx Emaclite MDIO: probed
> of:xilinx_emaclite 81000000.ethernet: MAC address is now 00:0a:35:01:a5:0=
0
> of:xilinx_emaclite 81000000.ethernet: Xilinx EmacLite at 0x81000000 mappe=
d
> to 0xD11C0000, irq=3D17
> of:xilinx_ps2 81480000.ps2: Device Tree Probing 'ps2'
> of:xilinx_ps2 81480000.ps2: Xilinx PS2 at 0x81480000 mapped to 0xd103e000=
,
> irq=3D22
> of:xilinx_ps2 81481000.ps2: Device Tree Probing 'ps2'
> of:xilinx_ps2 81481000.ps2: Xilinx PS2 at 0x81481000 mapped to 0xd1052000=
,
> irq=3D23
> mousedev: PS/2 mouse device common for all mice
> TCP cubic registered
> NET: Registered protocol family 17
> atkbd serio0: keyboard reset failed on xilinxps2/serio at 81480000
> EXT3-fs: barriers not enabled
> kjournald starting.  Commit interval 5 seconds
> EXT3-fs (xsa2): using internal journal
> EXT3-fs (xsa2): mounted filesystem with writeback data mode
> VFS: Mounted root (ext3 filesystem) on device 254:2.
> devtmpfs: mounted
> Freeing unused kernel memory: 168k init
> input: AT Raw Set 2 keyboard as
> /devices/plb.0/xps-ps2.1/81481000.ps2/serio1/input/input0
>
> Best regards,
>
> Elvis Dowson
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>=


