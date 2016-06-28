Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70302E00875; Tue, 28 Jun 2016 11:07:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.204.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp485.redcondor.net (smtp485.redcondor.net [208.80.204.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06092E0045E
	for <yocto@yoctoproject.org>; Tue, 28 Jun 2016 11:06:57 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp485.redcondor.net ({3be039ea-4351-44b0-a8af-642c38b25916})
	via TCP (outbound) with ESMTPS id 20160628180655567_0485
	for <yocto@yoctoproject.org>; Tue, 28 Jun 2016 18:06:55 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [99.240.204.5] (port=41624 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1bHxR6-00087T-Vk
	for yocto@yoctoproject.org; Tue, 28 Jun 2016 14:08:37 -0400
Date: Tue, 28 Jun 2016 14:06:04 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.20.1606281335430.23607@localhost.localdomain>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: some questions about PPC yocto reference board mpc8315e-rdb
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
X-List-Received-Date: Tue, 28 Jun 2016 18:07:02 -0000
Content-Type: multipart/mixed; BOUNDARY="8323328-1390013833-1467137166=:23607"

--8323328-1390013833-1467137166=:23607
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 8BIT


  i'm currently working on a project involving some aging PPC boards
(including MPC8360), and i just happened across a MPC8315E-RDB
(apparently unused), which could be useful since it's the PPC yocto
reference board, which means i should be able to build fully working
images for it without a great deal of fuss.  but first ...

  i'm *reasonably* confident that this system is in the state it was
in as it came from the factory, so i'm curious as to what it should be
able to do without any tweaking. ergo, plugged it in, attached a
serial console, powered it up and ...

U-Boot 1.3.0-rc2 (Mar 21 2008 - 16:00:02) MPC83XX

Reset Status:

CPU:   e300c3, Rev: Unknown revision number:80b40011
Warning: Unsupported cpu revision!
Board: Freescale MPC8315ERDB Rev 1.0
I2C:   ready
DRAM:  128 MB
PCIE0: No link
PCIE1: No link
FLASH:  8 MB
NAND:  32 MiB
In:    serial
Out:   serial
Err:   serial
Net:   eTSEC0, eTSEC1
Hit any key to stop autoboot:  0

  whew, that is some kind of old. and here are the current variables
(again, i have no idea if these were changed since the factory):

=> print
nfsboot=setenv bootargs root=/dev/nfs rw nfsroot=$serverip:$rootpath
  ip=$ipaddr:$serverip:$gatewayip:$netmask:$hostname:$netdev:off
  console=$consoledev,$baudrate $othbootargs;tftp $loadaddr
  $bootfile;tftp $fdtaddr $fdtfile;bootm $loadaddr - $fdtaddr
bootdelay=6
baudrate=115200
loads_echo=1
ethaddr=04:00:00:00:00:0A
eth1addr=04:00:00:00:00:0B
loadaddr=200000
netdev=eth0
consoledev=ttyS0
ramdiskaddr=1000000
ramdiskfile=ramfs.83xx
fdtaddr=400000
fdtfile=mpc8315erdb.dtb
ethact=eTSEC0
mtdids=nor0=nor,nand0=nand
sataboot=set bootargs root=/dev/sda1 rw console=ttyS0,115200; bootm fe500000 - fe700000
bootcmd=run sataboot
smbboot=set bootargs root=/dev/ram rw console=ttyS0,115200 ramdisk_size=78800; tftp $ramdiskaddr $smbfs; bootm fe500000 $ramdiskaddr fe700000
ramboot=set bootargs root=/dev/ram rw console=ttyS0,115200; bootm fe500000 fe100000 fe700000
jffs2boot=set bootargs root=/dev/mtdblock1 rootfstype=jffs2 rw console=ttyS0,115200; bootm fe500000 - fe700000
ipaddr=10.196.31.57
serverip=10.196.31.38
bootargs=root=/dev/ram rw console=ttyS0,115200 ramdisk_size=500000
stdin=serial
stdout=serial
stderr=serial

Environment size: 1117/8188 bytes
=>

  so let's see what happens if i just let it boot:


Hit any key to stop autoboot:  0
## Booting image at fe500000 ...
   Image Name:   Linux-2.6.23
   Created:      2008-03-21   6:25:53 UTC
   Image Type:   PowerPC Linux Kernel Image (gzip compressed)
   Data Size:    1722476 Bytes =  1.6 MB
   Load Address: 00000000
   Entry Point:  00000000
   Verifying Checksum ... OK
   Uncompressing Kernel Image ... OK
   Booting using the fdt at 0xfe700000
   Loading Device Tree to 007fc000, end 007fefff ... OK
Using MPC8315 RDB machine description
Linux version 2.6.23 (yhh@rock) (gcc version 4.1.2) #1 Fri Mar 21 14:25:50 CST 2008
console [udbg0] enabled
setup_arch: bootmem
mpc8315_rdb_setup_arch()
Freescale SerDes at e00e3000 initialized
Found MPC83xx PCI host bridge at 0x0000000000008500. Firmware bus number: 0->0
Found MPC83xx PCI host bridge at 0x00000000e0009000. Firmware bus number: 0->0
Found MPC83xx PCI host bridge at 0x00000000e000a000. Firmware bus number: 0->0
arch: exit
Zone PFN ranges:
  DMA             0 ->    32768
  Normal      32768 ->    32768
Movable zone start PFN for each node
early_node_map[1] active PFN ranges
    0:        0 ->    32768
Built 1 zonelists in Zone order.  Total pages: 32512
Kernel command line: root=/dev/sda1 rw console=ttyS0,115200
IPIC (128 IRQ sources) at faef7700
PID hash table entries: 512 (order: 9, 2048 bytes)
Dentry cache hash table entries: 16384 (order: 4, 65536 bytes)
Inode-cache hash table entries: 8192 (order: 3, 32768 bytes)
Memory: 126064k/131072k available (3380k kernel code, 4864k reserved, 148k data, 100k bss, 164k init)
Mount-cache hash table entries: 512
NET: Registered protocol family 16
CI: Probing PCI hardware
Generic PHY: Registered new driver
SCSI subsystem initialized
usbcore: registered new interface driver usbfs
usbcore: registered new interface driver hub
usbcore: registered new device driver usb
NET: Registered protocol family 2
IP route cache hash table entries: 1024 (order: 0, 4096 bytes)
TCP established hash table entries: 4096 (order: 3, 32768 bytes)
TCP bind hash table entries: 4096 (order: 2, 16384 bytes)
TCP: Hash tables configured (established 4096 bind 4096)
TCP reno registered
JFFS2 version 2.2. (NAND) © 2001-2006 Red Hat, Inc.
io scheduler noop registered
io scheduler anticipatory registered (default)
io scheduler deadline registered
io scheduler cfq registered
Serial: 8250/16550 driver $Revision: 1.90 $ 4 ports, IRQ sharing disabled
serial8250.0: ttyS0 at MMIO 0xe0004500 (irq = 22) is a 16550A
console handover: boot [udbg0] -> real [ttyS0]
serial8250.0: ttyS1 at MMIO 0xe0004600 (irq = 23) is a 16550A
RAMDISK driver initialized: 16 RAM disks of 32768K size 1024 blocksize
loop: module loaded
Intel(R) PRO/1000 Network Driver - version 7.3.20-k2-NAPI
Copyright (c) 1999-2006 Intel Corporation.
Gianfar MII Bus: probed
eth0: Gianfar Ethernet Controller Version 1.3-skbr, 04:00:00:00:00:0a
GFAR: SKB Handler initialized at CPU#0(max=32)
eth0: MTU = 1500 (frame size=1526, truesize=1800)
eth0: Running with NAPI enabled
eth0: 64/64 RX/TX BD ring size
eth1: Gianfar Ethernet Controller Version 1.3-skbr, 04:00:00:00:00:0b
GFAR: SKB Handler initialized at CPU#0(max=32)
eth1: MTU = 1500 (frame size=1526, truesize=1800)
eth1: Running with NAPI enabled
eth1: 64/64 RX/TX BD ring size
e100: Intel(R) PRO/100 Network Driver, 3.5.23-k4-NAPI
e100: Copyright(c) 1999-2006 Intel Corporation
RTL821x Gigabit Ethernet: Registered new driver
st: Version 20070203, fixed bufsize 32768, s/g segs 256
fsl-sata e0018000.sata: Sata FSL Platform/CSB Driver init
scsi0 : sata_fsl
ata1: SATA max UDMA/133 cmd 0xc906c000 ctl 0x00000000 bmdma 0x00000000 irq 44
ata1: No Device OR PHYRDY change,Hstatus = 0xa0000000
ata1: reset failed (errno=-5), retrying in 10 secs
ata1: SATA link down (SStatus 0 SControl 300)
fsl-sata e0019000.sata: Sata FSL Platform/CSB Driver init
scsi1 : sata_fsl
ata2: SATA max UDMA/133 cmd 0xc906e000 ctl 0x00000000 bmdma 0x00000000 irq 45
ata2: No Device OR PHYRDY change,Hstatus = 0xa0000000
ata2: reset failed (errno=-5), retrying in 10 secs
ata2: SATA link down (SStatus 0 SControl 300)
nor: Found 1 x16 devices at 0x0 in 16-bit bank
 Amd/Fujitsu Extended Query Table at 0x0040
nor: Swapping erase regions for broken CFI table.
number of CFI chips: 1
cfi_cmdset_0002: Disabling erase-suspend-program due to code brokenness.
RedBoot partition parsing not available
physmap-flash nor: Using OF partition information
Creating 4 MTD partitions on "nor":
0x00000000-0x00100000 : "U-Boot"
0x00100000-0x00500000 : "FileSystem"
0x00500000-0x00700000 : "Kernel"
0x00700000-0x00800000 : "DTB"
Freescale eLBC NAND Driver (C) 2006-2007 Freescale
NAND device: Manufacturer ID: 0xec, Chip ID: 0x75 (Samsung NAND 32MiB
3,3V 8-bit)
Scanning device for bad blocks
fsl-elbc fsl-elbc.0: Using OF partition information
Creating 6 MTD partitions on "nand":
0x00000000-0x00100000 : "U-Boot-NAND"
0x00100000-0x00900000 : "JFFS2-NAND"
0x00900000-0x00d00000 : "Ramdisk-NAND"
0x00d00000-0x01d00000 : "Reserve-NAND"
0x01d00000-0x01f00000 : "Kernel-NAND"
0x01f00000-0x02000000 : "DTB-NAND"
mpc83xx_spi.0: MPC83xx SPI Controller driver at 0xc9072000 (irq = 24)
usbmon: debugfs is not available
fsl-ehci fsl-ehci.0: Freescale On-Chip EHCI Host Controller
fsl-ehci fsl-ehci.0: new USB bus registered, assigned bus number 1
fsl-ehci fsl-ehci.0: irq 38, io base 0xe0023000
fsl-ehci fsl-ehci.0: USB 2.0 started, EHCI 1.00, driver 10 Dec 2004
usb usb1: configuration #1 chosen from 1 choice
hub 1-0:1.0: USB hub found
hub 1-0:1.0: 1 port detected
usb 1-1: new high speed USB device using fsl-ehci and address 2
usb 1-1: configuration #1 chosen from 1 choice
hub 1-1:1.0: USB hub found
hub 1-1:1.0: 4 ports detected
usbcore: registered new interface driver usblp
Initializing USB Mass Storage driver...
usbcore: registered new interface driver usb-storage
USB Mass Storage support registered.
i2c /dev entries driver
rtc-ds1307 0-0068: rtc core: registered ds1339 as rtc0
WDT driver for MPC83xx initialized. mode:reset timeout=65535 (32
seconds)
md: linear personality registered for level -1
md: raid0 personality registered for level 0
md: raid1 personality registered for level 1
TCP cubic registered
NET: Registered protocol family 1
NET: Registered protocol family 17
rtc-ds1307 0-0068: setting the system clock to 2007-11-03 19:29:51
(1194118191)
md: Autodetecting RAID arrays.
md: autorun ...
md: ... autorun DONE.
Root-NFS: No NFS server available, giving up.
VFS: Unable to mount root fs via NFS, trying floppy.
VFS: Cannot open root device "sda1" or unknown-block(2,0)
Please append a correct "root=" boot option; here are the available
partitions:
1f00       1024 mtdblock0 (driver?)
1f01       4096 mtdblock1 (driver?)
1f02       2048 mtdblock2 (driver?)
1f03       1024 mtdblock3 (driver?)
1f04       1024 mtdblock4 (driver?)
1f05       8192 mtdblock5 (driver?)
1f06       4096 mtdblock6 (driver?)
1f07      16384 mtdblock7 (driver?)
1f08       2048 mtdblock8 (driver?)
1f09       1024 mtdblock9 (driver?)
Kernel panic - not syncing: VFS: Unable to mount root fs on
unknown-block(2,0)
Rebooting in 180 seconds..


  i didn't even bother trying to identify a root filesystem, i just
wanted to verify that the kernel would boot. is there anything there i
should be concerned about? do any mpc8315e experts out there see
anything amiss with the output above?

  next up ... i'll try to build appropriate images using the latest
poky content, but i'm wondering if that u-boot is simply too old and i
have to update it.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323328-1390013833-1467137166=:23607--
