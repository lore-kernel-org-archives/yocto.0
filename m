Return-Path: <zhenhua.luo@nxp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 896ADE009C3; Wed, 29 Jun 2016 02:22:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.55.234.68 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from emea01-db3-obe.outbound.protection.outlook.com
	(mail-db3on0068.outbound.protection.outlook.com [157.55.234.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0692E00971
	for <yocto@yoctoproject.org>; Wed, 29 Jun 2016 02:22:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=FhCV0oeyiORLbGqkFJvuIE5SIXp2neaZvbgg1jEQHuQ=;
	b=hCSWpPqf8Rzxo/il2Oqca/nlxEeJNuNAxL7/F8eMagS1Jz36AFiaJtkutwGJ6IUBypk2uGvz1HRltlI4ysc/B1BXu7ePLuM1o3bCYylrKNJkdwQ36j9vIdXqdxuOAl7ecneRr5tGq0XetZrPrN0NgX/PAJP6v+Q8Rjbzx0TEQys=
Received: from DB3PR04MB0684.eurprd04.prod.outlook.com (10.160.49.142) by
	DB3PR04MB0683.eurprd04.prod.outlook.com (10.160.49.141) with Microsoft
	SMTP Server (TLS) id 15.1.517.8; Wed, 29 Jun 2016 09:07:50 +0000
Received: from DB3PR04MB0684.eurprd04.prod.outlook.com
	([fe80::1d30:44c0:d745:ccc5]) by
	DB3PR04MB0684.eurprd04.prod.outlook.com
	([fe80::1d30:44c0:d745:ccc5%18]) with mapi id 15.01.0523.024;
	Wed, 29 Jun 2016 09:07:50 +0000
From: Zhenhua Luo <zhenhua.luo@nxp.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Thread-Topic: [yocto] some questions about PPC yocto reference board
	mpc8315e-rdb
Thread-Index: AQHR0Wf6HPLkG4uvnkiFQGtheK9pyaAAJ0eg
Date: Wed, 29 Jun 2016 09:07:49 +0000
Message-ID: <DB3PR04MB0684E1F63F455136847DBF39EE230@DB3PR04MB0684.eurprd04.prod.outlook.com>
References: <alpine.LFD.2.20.1606281335430.23607@localhost.localdomain>
In-Reply-To: <alpine.LFD.2.20.1606281335430.23607@localhost.localdomain>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=zhenhua.luo@nxp.com; 
x-originating-ip: [199.59.225.131]
x-ms-office365-filtering-correlation-id: 0affb14a-9a2e-4cac-a612-08d39ffcd86e
x-microsoft-exchange-diagnostics: 1; DB3PR04MB0683;
	6:Aeqg1BGhbrRL/P+4kumKT+ivEUz1mGehe6E1612T27iDW5dzoO+nkdlPp9rNYYI2pStRMjzhO01206bb7F8nhlEcLKRIAP9Cer381K+eBq+S3juMm4pTwGwro6NBtPM3XqZ0vX8hfb5w8cFb9T4XVLc7Dh0/xVodlp8XbUCIZMc4sOI5oOKoCd8O7UZXpz+cGNZK0ohpd/iwEIDDnHiSyYQkC0o+DjVa9OT5Lq3b4tQenl2ZDXwIZglqdkpA6wraMofz37i+R8zS18S5gIHZu7Newy4DXpUlAeuM7aV6uX2JJklypA1qA0eQLqlXxprY5GfkhVyqj249fwHD3UYAWh9lkx9vS+GfVX3lY5LH7ZM=;
	5:Khm6lJwkcvLCT2bYECQbdPHy6QtTWhBrGZajQYanLn9zLspDhuh8pLFlVh8uYkj7skJbZp6smBGPeq2Z0r+YTYnPs8bAUptgWeHvUCRWOTVPpfvUCKrTyHHWvTg5IR7/+fvh4ZRuLVbFG1j5B+YmqQ==;
	24:Hp4OYbGFi/DEDLQFv08weu9yEkRHTsIAZkTKhubOIpIgTlTaTU8z2EnVjckegViHPL7MVNH+w0aQYowKzwGGa625kXsrNJt+y+lD5b3TKE8=;
	7:mn2jfKrhLymZmwhpyBpYVApJ3qydNx1TK7oovy8626DcT3X1YV3B7+wa9ODuglmxhse1AXPUobQhKH0zwNvoKNnNe/r8sAbCmnxqrTej7tmhVw/op4dYSi1r6mb+Fz41XR28YrrlVfq6JEH9C6On8+8UfokBiQQ5ASAYsDxQw1FM0sYEhWL7dbyk49GCI8erJvdSdL247tS88QroxFtV9JTth/1/7z5p2AsXkkjrBybhaitAdqWZXE/chaE5Z06V
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DB3PR04MB0683;
x-microsoft-antispam-prvs: <DB3PR04MB0683EDEFA9D9B10F9278F879EE230@DB3PR04MB0683.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(158342451672863)(148322886591682)(31418570063057)(116415991822766)(81160342030619)(126878219848629);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046)(6055026);
	SRVR:DB3PR04MB0683; BCL:0; PCL:0; RULEID:; SRVR:DB3PR04MB0683; 
x-forefront-prvs: 09888BC01D
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(377454003)(377424004)(199003)(13464003)(189002)(51694002)(76176999)(15395725005)(50986999)(54356999)(5890100001)(105586002)(106116001)(101416001)(106356001)(33656002)(5250100002)(3280700002)(586003)(9686002)(3660700001)(6116002)(3846002)(102836003)(97736004)(86362001)(5002640100001)(76576001)(15975445007)(1720100001)(68736007)(4326007)(2950100001)(305945005)(2900100001)(19580395003)(19580405001)(74316001)(8676002)(87936001)(8936002)(7736002)(7846002)(81156014)(11100500001)(81166006)(16601075003)(7696003)(92566002)(5003600100003)(110136002)(189998001)(2906002)(66066001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR04MB0683;
	H:DB3PR04MB0684.eurprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; CAT:NONE; LANG:en; CAT:NONE; 
received-spf: None (protection.outlook.com: nxp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jun 2016 09:07:50.0276 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR04MB0683
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: some questions about PPC yocto reference board mpc8315e-rdb
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
X-List-Received-Date: Wed, 29 Jun 2016 09:22:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello rday,=20

The error logs indicate that the default boot option(bootcmd=3Drun sataboot=
) finds rootfs in /dev/sda1, but seems like the disk drive is not available=
 or enabled on your board.=20

To check whether kernel can boot up, you can try ramboot(ramboot=3Dset boot=
args root=3D/dev/ram rw console=3DttyS0,115200; bootm fe500000 fe100000 fe7=
00000").=20
=3D> run ramboot=20


Best Regards,

Zhenhua


> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
> Sent: Wednesday, June 29, 2016 2:06 AM
> To: Yocto discussion list <yocto@yoctoproject.org>
> Subject: [yocto] some questions about PPC yocto reference board mpc8315e-
> rdb
>=20
>=20
>   i'm currently working on a project involving some aging PPC boards (inc=
luding
> MPC8360), and i just happened across a MPC8315E-RDB (apparently unused),
> which could be useful since it's the PPC yocto reference board, which mea=
ns i
> should be able to build fully working images for it without a great deal =
of fuss.
> but first ...
>=20
>   i'm *reasonably* confident that this system is in the state it was in a=
s it came
> from the factory, so i'm curious as to what it should be able to do witho=
ut any
> tweaking. ergo, plugged it in, attached a serial console, powered it up a=
nd ...
>=20
> U-Boot 1.3.0-rc2 (Mar 21 2008 - 16:00:02) MPC83XX
>=20
> Reset Status:
>=20
> CPU:   e300c3, Rev: Unknown revision number:80b40011
> Warning: Unsupported cpu revision!
> Board: Freescale MPC8315ERDB Rev 1.0
> I2C:   ready
> DRAM:  128 MB
> PCIE0: No link
> PCIE1: No link
> FLASH:  8 MB
> NAND:  32 MiB
> In:    serial
> Out:   serial
> Err:   serial
> Net:   eTSEC0, eTSEC1
> Hit any key to stop autoboot:  0
>=20
>   whew, that is some kind of old. and here are the current variables (aga=
in, i
> have no idea if these were changed since the factory):
>=20
> =3D> print
> nfsboot=3Dsetenv bootargs root=3D/dev/nfs rw nfsroot=3D$serverip:$rootpat=
h
>   ip=3D$ipaddr:$serverip:$gatewayip:$netmask:$hostname:$netdev:off
>   console=3D$consoledev,$baudrate $othbootargs;tftp $loadaddr
>   $bootfile;tftp $fdtaddr $fdtfile;bootm $loadaddr - $fdtaddr
> bootdelay=3D6
> baudrate=3D115200
> loads_echo=3D1
> ethaddr=3D04:00:00:00:00:0A
> eth1addr=3D04:00:00:00:00:0B
> loadaddr=3D200000
> netdev=3Deth0
> consoledev=3DttyS0
> ramdiskaddr=3D1000000
> ramdiskfile=3Dramfs.83xx
> fdtaddr=3D400000
> fdtfile=3Dmpc8315erdb.dtb
> ethact=3DeTSEC0
> mtdids=3Dnor0=3Dnor,nand0=3Dnand
> sataboot=3Dset bootargs root=3D/dev/sda1 rw console=3DttyS0,115200; bootm
> fe500000 - fe700000 bootcmd=3Drun sataboot smbboot=3Dset bootargs
> root=3D/dev/ram rw console=3DttyS0,115200 ramdisk_size=3D78800; tftp
> $ramdiskaddr $smbfs; bootm fe500000 $ramdiskaddr fe700000 ramboot=3Dset
> bootargs root=3D/dev/ram rw console=3DttyS0,115200; bootm fe500000 fe1000=
00
> fe700000 jffs2boot=3Dset bootargs root=3D/dev/mtdblock1 rootfstype=3Djffs=
2 rw
> console=3DttyS0,115200; bootm fe500000 - fe700000
> ipaddr=3D10.196.31.57
> serverip=3D10.196.31.38
> bootargs=3Droot=3D/dev/ram rw console=3DttyS0,115200 ramdisk_size=3D50000=
0
> stdin=3Dserial stdout=3Dserial stderr=3Dserial
>=20
> Environment size: 1117/8188 bytes
> =3D>
>=20
>   so let's see what happens if i just let it boot:
>=20
>=20
> Hit any key to stop autoboot:  0
> ## Booting image at fe500000 ...
>    Image Name:   Linux-2.6.23
>    Created:      2008-03-21   6:25:53 UTC
>    Image Type:   PowerPC Linux Kernel Image (gzip compressed)
>    Data Size:    1722476 Bytes =3D  1.6 MB
>    Load Address: 00000000
>    Entry Point:  00000000
>    Verifying Checksum ... OK
>    Uncompressing Kernel Image ... OK
>    Booting using the fdt at 0xfe700000
>    Loading Device Tree to 007fc000, end 007fefff ... OK Using MPC8315 RDB
> machine description Linux version 2.6.23 (yhh@rock) (gcc version 4.1.2) #=
1 Fri
> Mar 21 14:25:50 CST 2008 console [udbg0] enabled
> setup_arch: bootmem
> mpc8315_rdb_setup_arch()
> Freescale SerDes at e00e3000 initialized Found MPC83xx PCI host bridge at
> 0x0000000000008500. Firmware bus number: 0->0 Found MPC83xx PCI host
> bridge at 0x00000000e0009000. Firmware bus number: 0->0 Found MPC83xx
> PCI host bridge at 0x00000000e000a000. Firmware bus number: 0->0
> arch: exit
> Zone PFN ranges:
>   DMA             0 ->    32768
>   Normal      32768 ->    32768
> Movable zone start PFN for each node
> early_node_map[1] active PFN ranges
>     0:        0 ->    32768
> Built 1 zonelists in Zone order.  Total pages: 32512 Kernel command line:
> root=3D/dev/sda1 rw console=3DttyS0,115200 IPIC (128 IRQ sources) at faef=
7700 PID
> hash table entries: 512 (order: 9, 2048 bytes) Dentry cache hash table en=
tries:
> 16384 (order: 4, 65536 bytes) Inode-cache hash table entries: 8192 (order=
: 3,
> 32768 bytes)
> Memory: 126064k/131072k available (3380k kernel code, 4864k reserved, 148=
k
> data, 100k bss, 164k init) Mount-cache hash table entries: 512
> NET: Registered protocol family 16
> CI: Probing PCI hardware
> Generic PHY: Registered new driver
> SCSI subsystem initialized
> usbcore: registered new interface driver usbfs
> usbcore: registered new interface driver hub
> usbcore: registered new device driver usb
> NET: Registered protocol family 2
> IP route cache hash table entries: 1024 (order: 0, 4096 bytes) TCP establ=
ished
> hash table entries: 4096 (order: 3, 32768 bytes) TCP bind hash table entr=
ies:
> 4096 (order: 2, 16384 bytes)
> TCP: Hash tables configured (established 4096 bind 4096) TCP reno registe=
red
> JFFS2 version 2.2. (NAND) (c) 2001-2006 Red Hat, Inc.
> io scheduler noop registered
> io scheduler anticipatory registered (default) io scheduler deadline regi=
stered
> io scheduler cfq registered
> Serial: 8250/16550 driver $Revision: 1.90 $ 4 ports, IRQ sharing disabled
> serial8250.0: ttyS0 at MMIO 0xe0004500 (irq =3D 22) is a 16550A console h=
andover:
> boot [udbg0] -> real [ttyS0]
> serial8250.0: ttyS1 at MMIO 0xe0004600 (irq =3D 23) is a 16550A RAMDISK d=
river
> initialized: 16 RAM disks of 32768K size 1024 blocksize
> loop: module loaded
> Intel(R) PRO/1000 Network Driver - version 7.3.20-k2-NAPI Copyright (c) 1=
999-
> 2006 Intel Corporation.
> Gianfar MII Bus: probed
> eth0: Gianfar Ethernet Controller Version 1.3-skbr, 04:00:00:00:00:0a
> GFAR: SKB Handler initialized at CPU#0(max=3D32)
> eth0: MTU =3D 1500 (frame size=3D1526, truesize=3D1800)
> eth0: Running with NAPI enabled
> eth0: 64/64 RX/TX BD ring size
> eth1: Gianfar Ethernet Controller Version 1.3-skbr, 04:00:00:00:00:0b
> GFAR: SKB Handler initialized at CPU#0(max=3D32)
> eth1: MTU =3D 1500 (frame size=3D1526, truesize=3D1800)
> eth1: Running with NAPI enabled
> eth1: 64/64 RX/TX BD ring size
> e100: Intel(R) PRO/100 Network Driver, 3.5.23-k4-NAPI
> e100: Copyright(c) 1999-2006 Intel Corporation RTL821x Gigabit Ethernet:
> Registered new driver
> st: Version 20070203, fixed bufsize 32768, s/g segs 256 fsl-sata e0018000=
.sata:
> Sata FSL Platform/CSB Driver init
> scsi0 : sata_fsl
> ata1: SATA max UDMA/133 cmd 0xc906c000 ctl 0x00000000 bmdma 0x00000000
> irq 44
> ata1: No Device OR PHYRDY change,Hstatus =3D 0xa0000000
> ata1: reset failed (errno=3D-5), retrying in 10 secs
> ata1: SATA link down (SStatus 0 SControl 300) fsl-sata e0019000.sata: Sat=
a FSL
> Platform/CSB Driver init
> scsi1 : sata_fsl
> ata2: SATA max UDMA/133 cmd 0xc906e000 ctl 0x00000000 bmdma 0x00000000
> irq 45
> ata2: No Device OR PHYRDY change,Hstatus =3D 0xa0000000
> ata2: reset failed (errno=3D-5), retrying in 10 secs
> ata2: SATA link down (SStatus 0 SControl 300)
> nor: Found 1 x16 devices at 0x0 in 16-bit bank  Amd/Fujitsu Extended Quer=
y
> Table at 0x0040
> nor: Swapping erase regions for broken CFI table.
> number of CFI chips: 1
> cfi_cmdset_0002: Disabling erase-suspend-program due to code brokenness.
> RedBoot partition parsing not available
> physmap-flash nor: Using OF partition information Creating 4 MTD partitio=
ns on
> "nor":
> 0x00000000-0x00100000 : "U-Boot"
> 0x00100000-0x00500000 : "FileSystem"
> 0x00500000-0x00700000 : "Kernel"
> 0x00700000-0x00800000 : "DTB"
> Freescale eLBC NAND Driver (C) 2006-2007 Freescale NAND device:
> Manufacturer ID: 0xec, Chip ID: 0x75 (Samsung NAND 32MiB 3,3V 8-bit)
> Scanning device for bad blocks fsl-elbc fsl-elbc.0: Using OF partition in=
formation
> Creating 6 MTD partitions on "nand":
> 0x00000000-0x00100000 : "U-Boot-NAND"
> 0x00100000-0x00900000 : "JFFS2-NAND"
> 0x00900000-0x00d00000 : "Ramdisk-NAND"
> 0x00d00000-0x01d00000 : "Reserve-NAND"
> 0x01d00000-0x01f00000 : "Kernel-NAND"
> 0x01f00000-0x02000000 : "DTB-NAND"
> mpc83xx_spi.0: MPC83xx SPI Controller driver at 0xc9072000 (irq =3D 24)
> usbmon: debugfs is not available
> fsl-ehci fsl-ehci.0: Freescale On-Chip EHCI Host Controller fsl-ehci fsl-=
ehci.0:
> new USB bus registered, assigned bus number 1 fsl-ehci fsl-ehci.0: irq 38=
, io
> base 0xe0023000 fsl-ehci fsl-ehci.0: USB 2.0 started, EHCI 1.00, driver 1=
0 Dec
> 2004 usb usb1: configuration #1 chosen from 1 choice hub 1-0:1.0: USB hub
> found hub 1-0:1.0: 1 port detected usb 1-1: new high speed USB device usi=
ng
> fsl-ehci and address 2 usb 1-1: configuration #1 chosen from 1 choice hub=
 1-
> 1:1.0: USB hub found hub 1-1:1.0: 4 ports detected
> usbcore: registered new interface driver usblp Initializing USB Mass Stor=
age
> driver...
> usbcore: registered new interface driver usb-storage USB Mass Storage
> support registered.
> i2c /dev entries driver
> rtc-ds1307 0-0068: rtc core: registered ds1339 as rtc0 WDT driver for MPC=
83xx
> initialized. mode:reset timeout=3D65535 (32
> seconds)
> md: linear personality registered for level -1
> md: raid0 personality registered for level 0
> md: raid1 personality registered for level 1 TCP cubic registered
> NET: Registered protocol family 1
> NET: Registered protocol family 17
> rtc-ds1307 0-0068: setting the system clock to 2007-11-03 19:29:51
> (1194118191)
> md: Autodetecting RAID arrays.
> md: autorun ...
> md: ... autorun DONE.
> Root-NFS: No NFS server available, giving up.
> VFS: Unable to mount root fs via NFS, trying floppy.
> VFS: Cannot open root device "sda1" or unknown-block(2,0) Please append a
> correct "root=3D" boot option; here are the available
> partitions:
> 1f00       1024 mtdblock0 (driver?)
> 1f01       4096 mtdblock1 (driver?)
> 1f02       2048 mtdblock2 (driver?)
> 1f03       1024 mtdblock3 (driver?)
> 1f04       1024 mtdblock4 (driver?)
> 1f05       8192 mtdblock5 (driver?)
> 1f06       4096 mtdblock6 (driver?)
> 1f07      16384 mtdblock7 (driver?)
> 1f08       2048 mtdblock8 (driver?)
> 1f09       1024 mtdblock9 (driver?)
> Kernel panic - not syncing: VFS: Unable to mount root fs on
> unknown-block(2,0)
> Rebooting in 180 seconds..
>=20
>=20
>   i didn't even bother trying to identify a root filesystem, i just wante=
d to verify
> that the kernel would boot. is there anything there i should be concerned
> about? do any mpc8315e experts out there see anything amiss with the outp=
ut
> above?
>=20
>   next up ... i'll try to build appropriate images using the latest poky =
content, but
> i'm wondering if that u-boot is simply too old and i have to update it.
>=20
> rday
>=20
> --
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>=20
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

