Return-Path: <sbabic@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08BEBE00E7E; Tue,  6 Oct 2015 08:03:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.18.0.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87A9FE00B3E
	for <yocto@yoctoproject.org>; Tue,  6 Oct 2015 08:03:26 -0700 (PDT)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 3nVhrD6vgJz3hkgP;
	Tue,  6 Oct 2015 17:03:24 +0200 (CEST)
Received: from babic.homelinux.org (host-88-217-136-221.customer.m-online.net
	[88.217.136.221])
	by mail.mnet-online.de (Postfix) with ESMTP id 3nVhrD38lKzvkl7;
	Tue,  6 Oct 2015 17:03:24 +0200 (CEST)
Received: from localhost (mail.babic.homelinux.org [127.0.0.1])
	by babic.homelinux.org (Postfix) with ESMTP id BFB3745406C9;
	Tue,  6 Oct 2015 17:03:23 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at babic.homelinux.org
Received: from babic.homelinux.org ([127.0.0.1])
	by localhost (mail.babic.homelinux.org [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id frSFORfevCNA; Tue,  6 Oct 2015 17:03:16 +0200 (CEST)
Received: from [192.168.17.10] (unknown [192.168.17.10])
	by babic.homelinux.org (Postfix) with ESMTPS id 6046845405DE;
	Tue,  6 Oct 2015 17:03:14 +0200 (CEST)
To: Alexander Korsos <akorsos@kranzetech.com>, stefano babic <sbabic@denx.de>
References: <CAGqgsEj=FFA-t=xPY7BR0g_ZjzinFkME+hR2kuwh1SH1FqTxRA@mail.gmail.com>
	<5613CAB5.3080508@denx.de>
	<CAGqgsEjDk+TM9ipj6iPU-rwYdpUGtK=_6Fmb6LPm_Paphn+Vaw@mail.gmail.com>
From: stefano babic <sbabic@denx.de>
Message-ID: <5613E2B0.50205@denx.de>
Date: Tue, 6 Oct 2015 16:03:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <CAGqgsEjDk+TM9ipj6iPU-rwYdpUGtK=_6Fmb6LPm_Paphn+Vaw@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Flashing Yocto to SOM?
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
X-List-Received-Date: Tue, 06 Oct 2015 15:03:31 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi Alexander,

I am afraid we are off-topic here - this is not a Yocto issue.

Am 06.10.2015 um 14:38 schrieb Alexander Korsos:
> Hi Stefano,
>
> Thanks for getting back to me. I just tried flashing u-boot.img
> instead of u-boot.bin, using "nandecc sw", and get:
>
>     U-Boot SPL 2012.07-dirty
>     Board: DM37xx Torpedo
>     Error: Bad compare! failed
>     Error: Bad compare! failed
>     ...
>
>
> I flashed it again with "nandecc hw" and got:
>
>     U-Boot SPL 2012.07-dirty
>     Board: DM37xx Torpedo
>
>     U-Boot 2012.07-dirty
>
>     OMAP3630/3730-GP ES1.2, CPU-OPP2, L3-165MHz, Max CPU Clock 1 Ghz
>     Logic DM37x/OMAP35x reference board + LPDDR/NAND
>     I2C:   ready
>     DRAM:  512 MiB
>     NAND:  512 MiB
>     MMC:   OMAP SD/MMC: 0
>     In:    serial
>     Out:   serial
>     Err:   serial
>     Die ID #511000029ff800000155b2141902501b
>     nand_unlock: start: 00000000, length: 536870912!
>     Net:   smc911x-0
>     Hit any key to stop autoboot:  0
>     Card did not respond to voltage select!
>     Booting from nand ...
>
>     NAND read: device 0 offset 0x280000, size 0x400000
>     NAND read from offset 280000 failed -74
>      0 bytes read: ERROR
>     ## Booting kernel from Legacy Image at 81000000 ...
>        Image Name:   Linux-3.2.0
>        Image Type:   ARM Linux Kernel Image (uncompressed)
>        Data Size:    2300032 Bytes = 2.2 MiB
>        Load Address: 80008000
>        Entry Point:  80008000
>        Verifying Checksum ... Bad Data CRC
>     ERROR: can't get kernel image!
>
> Could it have something to do with nand_unlock? Any advice on this
> issue is greatly appreciated.
>

As you see, you can now start u-boot and you get the bootloader's shell.
The -74 error means ECC error.

I guess that on this board, as on other TI's SOC, you have to switch to
nandecc sw for kernel and rootfs. U-Boot is flashed using the hardware
ECC controller.

Regards,
Stefano

> Thank you,
> Alex
>
> On Tue, Oct 6, 2015 at 8:20 AM, stefano babic <sbabic@denx.de
> <mailto:sbabic@denx.de>> wrote:
>
>     Hi Alexander,
>
>     Am 05.10.2015 um 20:31 schrieb Alexander Korsos:
>     >
>     > Hi,
>     >
>     > I'm trying to flash Yocto Dizzy (core-image-minimal built with
>     > BitBake) onto a LogicPD DM3730 / AM3730 Torpedo + Wireless SOM using
>     > the following commands at the U-Boot prompt:
>     >
>     > # nand erase.chip
>     > # env default -f
>     >
>     > # setenv loadaddr 0x81000000
>     >
>     > # setenv ramdiskaddr 0x82000000
>     >
>     > # setenv kernel_nand_offset 0x00280000
>     >
>     > # setenv kernel_nand_size 0x00400000
>     >
>     > # setenv ramdisk_nand_offset 0x00680000
>     >
>     > # setenv ramdisk_nand_size 0x00dd8680
>     >
>     > # setenv kernel_location nand
>     >
>     > # setenv rootfs_location nand
>     >
>     > # setenv rootfs_type ramdisk
>     >
>     > # saveenv
>     >
>     > # mmc init
>     >
>     > # mw.l ${loadaddr} 0xFFFFFFFF 0x400000
>     >
>     > # fatload mmc 0 ${loadaddr} mlo
>     >
>     > # nandecc hw
>     >
>     > # nand write ${loadaddr} 0x00000000 0x00020000
>     >
>     > # nand write ${loadaddr} 0x00020000 0x00020000
>     >
>     > # nand write ${loadaddr} 0x00040000 0x00020000
>     >
>     > # nand write ${loadaddr} 0x00060000 0x00020000
>     >
>     > # mw.l ${loadaddr} 0xFFFFFFFF 0x400000
>     >
>     > # fatload mmc 0 ${loadaddr} u-boot.bin
>     >
>     > # nandecc sw
>     >
>     > # nand write.i ${loadaddr} 0x00080000 0x00080000
>     >
>     > # mw.l ${loadaddr} 0xffffffff 0x400000
>     >
>     > # fatload mmc 0 ${loadaddr} uImage
>     >
>     > # nand write.i ${loadaddr} ${kernel_nand_offset} ${kernel_nand_size}
>     >
>     > # mw.l ${loadaddr} 0xffffffff 0x400000
>     > # fatload mmc 0 ${loadaddr} rootfs.ext2.gz.u-boot
>     >
>     > # nand write.i ${loadaddr} ${ramdisk_nand_offset}
>     ${ramdisk_nand_size}
>     >
>     >
>     >
>     > The source files I'm using in my boot partition are the MLO,
>     > u-boot.bin, rootfs.ext2.gz.u-boot, uImage, and u-boot.img. I am able
>     > to burn all the necessary files onto the SOM, but when I
>     complete the
>     > steps and power cycle, I get:
>     >
>     >
>     >
>     > U-Boot SPL 2012.07-dirty (Sep 30 2015 - 17:31:44)
>     > Board: DM37xx Torpedo
>     > Error: Bad compare! failed
>     > Error: Bad compare! failed
>     > Error: Bad compare! failed
>     >
>     > ...
>     >
>     > mkimage signature not found - ih_magic = ea000014
>     >
>     > ...
>     >
>     > Error: Bad compare! failed
>     > Error: Bad compare! failed
>     >
>     > ...
>     >
>     >
>     >
>     > I've done a good amount of research online and some people say that
>     > it's an issue with the nandecc setting, but my only options in
>     U-Boot
>     > are hw (hardware) and sw (software) ecc algorithms. Just curious if
>     > anyone could identify my errors or possibly point me in the
>     direction
>     > of good documentation?
>     >
>
>     Why do you flash u-boot.bin ? This is missing the header requested by
>     TI's  SOCs. You should flash u-boot.img.
>
>     Regards,
>     Stefano
>
>


