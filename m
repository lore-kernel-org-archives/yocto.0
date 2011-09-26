Return-Path: <niqingliang@insigma.com.cn>
Received: from WX-Edge.insigma.com.cn (mx.insigma.com.cn [115.236.48.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2878FE00552
	for <yocto@yoctoproject.org>; Sun, 25 Sep 2011 18:42:07 -0700 (PDT)
Received: from WX-ExchMB.insigma.com.cn (10.0.1.203) by WX-Edge.insigma.com.cn
	(10.0.1.205) with Microsoft SMTP Server (TLS) id 8.1.436.0;
	Mon, 26 Sep 2011 09:42:04 +0800
Received: from [192.168.0.98] (122.224.76.38) by WX-ExchMB.insigma.com.cn
	(10.0.1.203) with Microsoft SMTP Server id 8.1.240.5; Mon, 26 Sep 2011
	09:42:02 +0800
From: Ni Qingliang <niqingliang@insigma.com.cn>
To: McClintock Matthew-B29882 <B29882@freescale.com>
Date: Mon, 26 Sep 2011 09:41:25 +0800
In-Reply-To: <CAEsOVNf5VNoxAGwwZG7yQzmNe6KY5=YZAm-dWy6QQaH3s6Qb4Q@mail.gmail.com>
References: <1316656573.17177.66.camel@localhost.localdomain>
	<CAEsOVNc2uOTzhxqbh4VzopYVC0-iUPBccXfNb3ey5wKZFA_VZQ@mail.gmail.com>
	<1316668170.17177.72.camel@localhost.localdomain>
	<1316740588.17177.76.camel@localhost.localdomain>
	<CAEsOVNeZK0+-KKovDG46TPnUj8GQPpRuJ+5PDzspWXbPv5KN2w@mail.gmail.com>
	<1316749868.17177.86.camel@localhost.localdomain>
	<1316750116.17177.89.camel@localhost.localdomain>
	<1316767728.6536.0.camel@localhost.localdomain>
	<CAEsOVNf5VNoxAGwwZG7yQzmNe6KY5=YZAm-dWy6QQaH3s6Qb4Q@mail.gmail.com>
Organization: Insigma
X-Mailer: Evolution 3.0.3 
Message-ID: <1317001285.6536.21.camel@localhost.localdomain>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: rootfs-ramdisk error
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: niqingliang@insigma.com.cn
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 26 Sep 2011 01:42:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

I'm using ramdisk, and get some error when booting, the udhcpc can't
write resolv.conf (No space left on device) and the rpm-postinsts fail.

my analysis:
	for the former, I only find some info in ./default/volatiles/00_core,
the /etc/resolv.conf is a link to /var/run/resolv.conf, but I have no
idea about udhcpd's error.

	for the latter, rpm-postinsts, the reason is: in rpm-postinsts, all sh
files have been executed, and moved to *.done,
(through /etc/rcS.d/S98configure), but /etc/rcS.d/S98configure have not
been deleted, so it is executed again when booting, but there is no any
*.sh file, so fail. ( as expected, if the /etc/rpm-postinsts/*.sh is
moved to *.sh.done, the /etc/rcS.d/S98configure should be deleted, but
it does exist in the rootfs)

the content of /etc/rcS.d/S98configure is:
for i in /etc/rpm-postinsts/*.sh; do
	echo "Running postinst $i..."
	if [ -f $i ] && sh $i; then
		# rm $i
		mv $i $i.done
	else
		echo "ERROR: postinst $i failed."
	fi
done
rm -f /etc/rcS.d/S98configure
I think the for sentence is not so robust as expected when no any *.sh
files.



1. the bootargs in uboot is
	root=/dev/ram rw ramdisk_size=65535 console=ttyS1,115200
2. the image type is 
	ext2.gz.u-boot
3. the `df` after login:
root@xx~#df
Filesystem           1K-blocks      Used Available Use% Mounted on
/dev/root                16275     11121      4335  72% /
devtmpfs                127664       112    127552   0% /dev
none                    127664       112    127552   0% /dev
tmpfs                   127664        20    127644   0% /var/volatile
tmpfs                   127664         0    127664   0% /media/ram

the rootfs size is 16M, and the ext2.gz.u-boot is 4.1M.

4. indeed, I have encountered one similar problem when using LTIB, that
is:
	after login, I can't find the /dev/mtdX, I don't know detail of the
udev, so I checked the auto mount devfs in kernel config, and so get the
expected.

5. the bootlog is:
## Booting kernel from Legacy Image at fc100000 ...
   Image Name:   Linux-3.0.4
   Created:      2011-09-21   8:45:32 UTC
   Image Type:   PowerPC Linux Kernel Image (gzip compressed)
   Data Size:    2262322 Bytes =  2.2 MB
   Load Address: 00000000
   Entry Point:  00000000
   Verifying Checksum ... OK
## Loading init Ramdisk from Legacy Image at fc500000 ...
   Image Name:   core-image-sa735-sa735-201109230
   Created:      2011-09-23   3:35:58 UTC
   Image Type:   PowerPC Linux RAMDisk Image (gzip compressed)
   Data Size:    4311933 Bytes =  4.1 MB
   Load Address: 00000000
   Entry Point:  00000000
   Verifying Checksum ... OK
## Flattened Device Tree blob at fc0e0000
   Booting using the fdt blob at 0xfc0e0000
   Uncompressing Kernel Image ... OK
   Loading Ramdisk to 0faf5000, end 0ff11b7d ... OK
   Loading Device Tree to 007fa000, end 007ff4ed ... OK
Using MPC831x RDB machine description
Linux version 3.0.4 (ll@myhost) (gcc version 4.6.1 20110627 (prerelease)
(GCC) ) #1 Wed Sep 21 16:45:26 CST 2011
Found initrd at 0xcfaf5000:0xcff11b7d
bootconsole [udbg0] enabled
setup_arch: bootmem
mpc831x_rdb_setup_arch()
Found FSL PCI host bridge at 0x00000000e0008500. Firmware bus number:
0->0
PCI host bridge /pci@e0008500 (primary) ranges:
 MEM 0x0000000090000000..0x000000009fffffff -> 0x0000000090000000 
 MEM 0x0000000080000000..0x000000008fffffff -> 0x0000000080000000
Prefetch
  IO 0x00000000e0300000..0x00000000e03fffff -> 0x0000000000000000
arch: exit
Zone PFN ranges:
  DMA      0x00000000 -> 0x00010000
  Normal   empty
Movable zone start PFN for each node
early_node_map[1] active PFN ranges
    0: 0x00000000 -> 0x00010000
Built 1 zonelists in Zone order, mobility grouping on.  Total pages:
65024
Kernel command line: root=/dev/ram rw ramdisk_size=65535
console=ttyS1,115200
PID hash table entries: 1024 (order: 0, 4096 bytes)
Dentry cache hash table entries: 32768 (order: 5, 131072 bytes)
Inode-cache hash table entries: 16384 (order: 4, 65536 bytes)
Memory: 249928k/262144k available (4392k kernel code, 12216k reserved,
156k data, 1111k bss, 172k init)
Kernel virtual memory layout:
  * 0xfffdf000..0xfffff000  : fixmap
  * 0xfdefd000..0xfe000000  : early ioremap
  * 0xd1000000..0xfdefd000  : vmalloc & ioremap
NR_IRQS:512 nr_irqs:512 16
IPIC (128 IRQ sources) at d1000700
clocksource: timebase mult[7800001] shift[22] registered
pid_max: default: 32768 minimum: 301
Mount-cache hash table entries: 512
devtmpfs: initialized
NET: Registered protocol family 16
             
PCI: Probing PCI hardware
bio: create slab <bio-0> at 0
Freescale Elo / Elo Plus DMA driver
vgaarb: loaded
usbcore: registered new interface driver usbfs
usbcore: registered new interface driver hub
usbcore: registered new device driver usb
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
RPC: Registered named UNIX socket transport module.
RPC: Registered udp transport module.
RPC: Registered tcp transport module.
RPC: Registered tcp NFSv4.1 backchannel transport module.
Trying to unpack rootfs image as initramfs...
rootfs image is not initramfs (no cpio magic); looks like an initrd
Freeing initrd memory: 4212k freed
WDT driver for MPC8xxx initialized. mode:reset timeout=65535 (32
seconds)
fsl-elo-dma e00082a8.dma: #0 (fsl,elo-dma-channel), irq 71
fsl-elo-dma e00082a8.dma: #1 (fsl,elo-dma-channel), irq 71
fsl-elo-dma e00082a8.dma: #2 (fsl,elo-dma-channel), irq 71
fsl-elo-dma e00082a8.dma: #3 (fsl,elo-dma-channel), irq 71
JFFS2 version 2.2. (NAND) © 2001-2006 Red Hat, Inc.
msgmni has been set to 498
io scheduler noop registered
io scheduler deadline registered
io scheduler cfq registered (default)
Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
serial8250.0: ttyS0 at MMIO 0xe0004500 (irq = 16) is a 16550A
serial8250.0: ttyS1 at MMIO 0xe0004600 (irq = 17) is a 16550A
console [ttyS1] enabled, bootconsole disabled
console [ttyS1] enabled, bootconsole disabled
Freescale QUICC Engine UART device driver
brd: module loaded
loop: module loaded
fc000000.flash: Found 1 x16 devices at 0x0 in 16-bit bank. Manufacturer
ID 0x000089 Chip ID 0x00227e
Amd/Fujitsu Extended Query Table at 0x0040
  Amd/Fujitsu Extended Query version 1.3.
number of CFI chips: 1
Creating 7 MTD partitions on "fc000000.flash":
0x0000000c0000-0x0000000e0000 : "NOR (RO) Platform Version Info"
0x0000000e0000-0x000000100000 : "NOR (RO) Device Tree Blob"
0x000000100000-0x000000500000 : "NOR (RO) Linux Kernel Image"
0x000000500000-0x000002000000 : "NOR (RO) Ramdisk Root File System"
0x000002000000-0x000004000000 : "NOR (RW) JFFS2 User File System"
0x000000000000-0x000000080000 : "NOR (RO) U-Boot Image"
0x000000080000-0x0000000a0000 : "NOR (RO) U-Boot Environment"
Fixed MDIO Bus: probed
eth0: Gianfar Ethernet Controller Version 1.2, 04:00:00:00:00:0a
eth0: Running with NAPI enabled
eth0: RX BD ring size for Q[0]: 256
eth0: TX BD ring size for Q[0]: 256
eth1: Gianfar Ethernet Controller Version 1.2, 04:00:00:00:00:0b
eth1: Running with NAPI enabled
eth1: RX BD ring size for Q[0]: 256
eth1: TX BD ring size for Q[0]: 256
ucc_geth: QE UCC Gigabit Ethernet Controller
Freescale PowerQUICC MII Bus: probed
Freescale PowerQUICC MII Bus: probed
usbmon: debugfs is not available
ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
i2c /dev entries driver
mpc-i2c e0003000.i2c: timeout 1000000 us
at24 0-0050: 256 byte 24c02 EEPROM, writable, 1 bytes/write
rtc-ds1374 0-0068: rtc core: registered ds1374 as rtc0
at24 0-0051: 256 byte 24c02 EEPROM, writable, 1 bytes/write
pcf857x: probe of 0-0021 failed with error -5
lm75 0-0048: hwmon0: sensor 'tcn75'
lm75: probe of 0-0049 failed with error -5
usbcore: registered new interface driver usbhid
usbhid: USB HID core driver
oprofile: using timer interrupt.
TCP cubic registered
Initializing XFRM netlink socket
NET: Registered protocol family 17
NET: Registered protocol family 15
Registering the dns_resolver key type
rtc-ds1374 0-0068: setting system clock to 2011-09-22 12:17:13 UTC
(1316693833)
RAMDISK: gzip image found at block 0
VFS: Mounted root (ext2 filesystem) on device 1:0.
devtmpfs: mounted
Freeing unused kernel memory: 172k init
INIT: version 2.88 booting
Starting udev
Starting Bootlog daemon: bootlogd.
Configuring network interfaces... udhcpc (v1.18.5) started
Sending discover...
PHY: mdio@e0024520:02 - Link is Up - 100/Full
Sending discover...
Sending select for 192.168.0.108...
Lease of 192.168.0.108 obtained, lease time 604800
/etc/udhcpc.d/50default: line 63: /etc/resolv.conf: No space left on
device
adding dns 192.168.0.1
/etc/udhcpc.d/50default: line 67: /etc/resolv.conf: No space left on
device
done.
Fri Sep 23 03:35:00 UTC 2011
Running postinst /etc/rpm-postinsts/*.sh...
ERROR: postinst /etc/rpm-postinsts/*.sh failed.
INIT: Entering runlevel: 5
Starting internet superserver: inetd.
Starting syslogd/klogd: done
Stopping Bootlog daemon: bootlogd.


-- 
Yi Qingliang
niqingliang@insigma.com.cn
http://niqingliang2003.wordpress.com



