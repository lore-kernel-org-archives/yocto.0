Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86A69E0142A
	for <yocto@yoctoproject.org>; Sat, 21 Jul 2012 19:40:17 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id q6M2eEEd020889
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 21 Jul 2012 19:40:14 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.22.133) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Sat, 21 Jul 2012 19:40:13 -0700
Message-ID: <500B680C.5000908@windriver.com>
Date: Sat, 21 Jul 2012 22:40:12 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: Edward Vidal <vidal.develone@gmail.com>
References: <CANwz6nwKcy7-TeR3W8MnAQxer-yhO3wzWUjm3nsfhuwNLGSHHg@mail.gmail.com>
In-Reply-To: <CANwz6nwKcy7-TeR3W8MnAQxer-yhO3wzWUjm3nsfhuwNLGSHHg@mail.gmail.com>
Cc: yocto@yoctoproject.org, "Wold, Saul" <saul.wold@intel.com>
Subject: Re: beagleboard not booting yacto1.2.1
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
X-List-Received-Date: Sun, 22 Jul 2012 02:40:17 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-07-21 11:58 AM, Edward Vidal wrote:
> hello,
>
> verifing that this is ver poky-1.2.1
> The post by Elizabeth Flanagan Wed Jul 18 14:20:41 PDT 2012
> Yocto 1.2.1 Released
> Flanagan, Elizabeth elizabeth.flanagan at intel.com <http://intel.com>
> Commit Information:
> Tree/Branch: denzil
> Commit id: 73cdebf60df225ee10f2eb215935be3b61e1b831
> git clone -b denzil git://git.yoctoproject.org/poky.git
> <http://git.yoctoproject.org/poky.git>
> cd poky
> git log
> commit 73cdebf60df225ee10f2eb215935be3b61e1b831
> I tried the default kernel 3.0 this would get a kernel panic could not
> mount the mmc
>
> Modified the file meta-yocto/conf/machine/beagleboard.conf
>
> PREFERRED_VERSION_linux-yocto ?= "3.0%" -->
> PREFERRED_VERSION_linux-yocto ?= "3.4%"
> In this version there is no
> /home/vidal/poky/meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend as
> in version poky-1.2.0
> so the kernel was Image Name: Linux-3.2.9-yocto-standard
> git status
> # On branch denzil
> # Changes not staged for commit:
> # (use "git add <file>..." to update what will be committed)
> # (use "git checkout -- <file>..." to discard changes in working directory)
> #
> # modified: meta-yocto/conf/machine/beagleboard.conf
> #
> # Untracked files:
> # (use "git add <file>..." to include in what will be committed)
> #
> # build/
> no changes added to commit (use "git add" and/or "git commit -a")
>
> -rw-r--r--. 1 vidal users 57409536 Jul 20 16:29
> core-image-sato-beagleboard-20120720200156.rootfs.jffs2
> -rw-r--r--. 1 vidal users 42607308 Jul 20 16:28
> core-image-sato-beagleboard-20120720200156.rootfs.tar.bz2
> -rw-r--r--. 1 vidal users 57409536 Jul 21 08:06
> core-image-sato-beagleboard-20120721135125.rootfs.jffs2
> -rw-r--r--. 1 vidal users 42612264 Jul 21 08:05
> core-image-sato-beagleboard-20120721135125.rootfs.tar.bz2
> lrwxrwxrwx. 1 vidal users 55 Jul 21 08:06
> core-image-sato-beagleboard.jffs2 ->
> core-image-sato-beagleboard-20120721135125.rootfs.jffs2
> lrwxrwxrwx. 1 vidal users 57 Jul 21 08:05
> core-image-sato-beagleboard.tar.bz2 ->
> core-image-sato-beagleboard-20120721135125.rootfs.tar.bz2
> -rw-r--r--. 1 vidal users 205521920 Jul 20 18:50
> core-image-sato-qemuarm-20120720223121.rootfs.ext3
> -rw-r--r--. 1 vidal users 37671422 Jul 20 18:50
> core-image-sato-qemuarm-20120720223121.rootfs.tar.bz2
> lrwxrwxrwx. 1 vidal users 50 Jul 20 18:50 core-image-sato-qemuarm.ext3
> -> core-image-sato-qemuarm-20120720223121.rootfs.ext3
> lrwxrwxrwx. 1 vidal users 53 Jul 20 18:50
> core-image-sato-qemuarm.tar.bz2 ->
> core-image-sato-qemuarm-20120720223121.rootfs.tar.bz2
> lrwxrwxrwx. 1 vidal users 70 Jul 20 16:04 MLO-beagleboard ->
> MLO-beagleboard-1.5.0+git1+9f94c6577e3a018b6b75cbe39f32bb331871f915-r0
> -rwxr-xr-x. 1 vidal users 22388 Jul 20 16:04
> MLO-beagleboard-1.5.0+git1+9f94c6577e3a018b6b75cbe39f32bb331871f915-r0
> -rw-r--r--. 1 vidal users 33114370 Jul 20 18:26
> modules-3.2.18-yocto-standard-r1-qemuarm.tgz
> -rw-r--r--. 1 vidal users 35180410 Jul 20 16:04
> modules-3.2.9-yocto-standard-r1-beagleboard.tgz
> -rw-r--r--. 1 vidal users 294 Jul 21 07:54
> README_-_DO_NOT_DELETE_FILES_IN_THIS_DIRECTORY.txt
> lrwxrwxrwx. 1 vidal users 81 Jul 21 07:54 u-boot-beagleboard.bin ->
> u-boot-beagleboard-v2011.06+git12+b1af6f532e0d348b153d5c148369229d24af361a-r1.bin
> -rwxr-xr-x. 1 vidal users 316348 Jul 21 07:54
> u-boot-beagleboard-v2011.06+git12+b1af6f532e0d348b153d5c148369229d24af361a-r1.bin
> -rw-r--r--. 1 vidal users 3375864 Jul 20 16:04
> uImage-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+90e3138c5a2a390dd6ddf2ed84fe5a9756d43397-r1-beagleboard-20120720200156.bin
> lrwxrwxrwx. 1 vidal users 136 Jul 20 16:04 uImage-beagleboard.bin ->
> uImage-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+90e3138c5a2a390dd6ddf2ed84fe5a9756d43397-r1-beagleboard-20120720200156.bin
> -rwxr-xr-x. 1 vidal users 22388 Jul 20 16:04
> x-load-beagleboard-1.5.0+git1+9f94c6577e3a018b6b75cbe39f32bb331871f915-r0.bin.ift
> lrwxrwxrwx. 1 vidal users 81 Jul 20 16:04 x-load-beagleboard.bin.ift ->
> x-load-beagleboard-1.5.0+git1+9f94c6577e3a018b6b75cbe39f32bb331871f915-r0.bin.ift
> -rw-r--r--. 1 vidal users 3034248 Jul 20 18:26
> zImage-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+259cff0813417d16baaaaf44b00a9f75103ebfcb-r1-qemuarm-20120720223121.bin
> lrwxrwxrwx. 1 vidal users 132 Jul 20 18:26 zImage-qemuarm.bin ->
> zImage-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+259cff0813417d16baaaaf44b00a9f75103ebfcb-r1-qemuarm-20120720223121.bin
> cp
> MLO-beagleboard-1.5.0+git1+9f94c6577e3a018b6b75cbe39f32bb331871f915-r0
> /run/media/vidal/boot/MLO
> cp
> u-boot-beagleboard-v2011.06+git12+b1af6f532e0d348b153d5c148369229d24af361a-r1.bin
> /run/media/vidal/boot/u-boot.bin
> cp
> uImage-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+90e3138c5a2a390dd6ddf2ed84fe5a9756d43397-r1-beagleboard-20120720200156.bin
> /run/media/vidal/boot/uImage
> cp /home/vidal/uEnv.txt /run/media/vidal/boot/
> ls /run/media/vidal/boot/
> MLO u-boot.bin uEnv.txt uImage
>
> cd /run/media/vidal/rootfs/
> tar jxf
> /home/vidal/poky/build/tmp/deploy/images/core-image-sato-beagleboard-20120721135125.rootfs.tar.bz2
>
> cd ~/
> umount /run/media/vidal/boot
> umount /run/media/vidal/rootfs
> sync
>
> Texas Instruments X-Loader 1.5.0 (Jul 19 2012 - 17:05:29)
> Beagle xM
> Reading boot sector
> Loading u-boot.bin from mmc
>
>
> U-Boot 2011.06 (Jul 19 2012 - 21:25:33)
>
> OMAP3630/3730-GP ES2.1, CPU-OPP2, L3-165MHz, Max CPU Clock 1 Ghz
> OMAP3 Beagle board + LPDDR/NAND
> I2C: ready
> DRAM: 512 MiB
> NAND: 0 MiB
> MMC: OMAP SD/MMC: 0
> *** Warning - readenv() failed, using default environment
>
> In: serial
> Out: serial
> Err: serial
> Beagle unknown 0x02
> No EEPROM on expansion board
> Die ID #158000029ff800000160a7450b02602d
> Hit any key to stop autoboot: 10 9 8 7 6 5 4 3 2 1 0
> SD/MMC found on device 0
> reading uEnv.txt
>
> 130 bytes read
> Importing environment from mmc ...
> reading uImage
>
> 3375856 bytes read
> Booting from mmc ...
> ## Booting kernel from Legacy Image at 82000000 ...
> Image Name: Linux-3.2.9-yocto-standard
> Image Type: ARM Linux Kernel Image (uncompressed)
> Data Size: 3375792 Bytes = 3.2 MiB
> Load Address: 80008000
> Entry Point: 80008000
> Verifying Checksum ... OK
> Loading Kernel Image ... OK
> OK
>
> Starting kernel ...
>
> Uncompressing Linux... done, booting the kernel.
> This ver finds the mmc but does not
> get to login screen on serial port or display
> nothing displayed on beagleboard monitor expection sato display.
> smsc95xx 1-2.1:1.0: eth0: link up, 100Mbps, full-duplex, lpa 0x45E1 but
> no IP assigned.
>
> The lines below just keep repeating.
>
> Mouse] on usb-ehci-omap.0-2.5/input0
> usb 1-2.5: USB disconnect, device number 65
> usb 1-2.5: new low-speed USB device number 66 using ehci-omap
> input: PixArt USB Optical Mouse as
> /devices/platform/usbhs-omap.0/ehci-omap.0/us
> b1/1-2/1-2.5/1-2.5:1.0/input/input63
> generic-usb 0003:093A:2510.0040: input: USB HID v1.11 Mouse [PixArt USB
> Optical
> Mouse] on usb-ehci-omap.0-2.5/input0
> usb 1-2.5: USB disconnect, device number 66
> usb 1-2.5: new low-speed USB device number 67 using ehci-omap
> input: PixArt USB Optical Mouse as
> /devices/platform/usbhs-omap.0/ehci-omap.0/us
> b1/1-2/1-2.5/1-2.5:1.0/input/input64
> generic-usb 0003:093A:2510.0041: input: USB HID v1.11 Mouse [PixArt USB
> Optical
> Mouse] on usb-ehci-omap.0-2.5/input0
> usb 1-2.5: USB disconnect, device number 67
> usb 1-2.5: new low-speed USB device number 68 using ehci-omap
> input: PixArt USB Optical Mouse as
> /devices/platform/usbhs-omap.0/ehci-omap.0/us
> b1/1-2/1-2.5/1-2.5:1.0/input/input65
> generic-usb 0003:093A:2510.0042: input: USB HID v1.11 Mouse [PixArt USB
> Optical
> Mouse] on usb-ehci-omap.0-2.5/input0
>
> Is there any other information that I can provide?

This should be enough .. What we still need is a comment from the QA
folks that are reporting green builds and boots for the beagleboard.

Saul: Do you know who the contact for that is ? I've lost track of who
it should be ..

Cheers,

Bruce


> Any help will be appreciated
> Regards
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


