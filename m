Return-Path: <martin@spotwise.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 653E9E00AB4; Sun,  6 Nov 2016 18:14:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.201.84.163 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 903 seconds by postgrey-1.32 at yocto-www;
	Sun, 06 Nov 2016 18:14:01 PST
Received: from sender163-mail.zoho.com (sender163-mail.zoho.com
	[74.201.84.163])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEC1CE0083E
	for <yocto@yoctoproject.org>; Sun,  6 Nov 2016 18:14:01 -0800 (PST)
Received: from [10.1.1.92] (c-4ab0e055.17-2-64736c10.cust.bredbandsbolaget.se
	[85.224.176.74]) by mx.zohomail.com
	with SMTPS id 147848393659877.30802477441455;
	Sun, 6 Nov 2016 17:58:56 -0800 (PST)
From: Martin Bergek <martin@spotwise.com>
Mime-Version: 1.0 (Mac OS X Mail 10.1 \(3251\))
Message-Id: <B95D2958-D096-45F7-AE33-48A4F733F146@spotwise.com>
Date: Mon, 7 Nov 2016 02:58:51 +0100
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3251)
Subject: [meta-raspberrypi] Issues with dtbo/dtb and USB failure using pl2303
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
X-List-Received-Date: Mon, 07 Nov 2016 02:14:03 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

I am trying to build an image using the morty branches of poky and =
meta-raspberrypi. However, I am only able to use kernel version 4.4 and =
with that version I have a major issue with the USB stack using pl2303 =
(USB to serial).

Previously I could do a workaround by running 4.1 but lately I am unable =
to build an image using that kernel version (apparently due to dtb/dtbo =
differences). I also can=E2=80=99t use 4.7 due to other errors.=20

Please see log excerpts below. The only difference between these setups =
is the value of PREFERRED_VERSION_linux-raspberrypi. I should add that I =
get the same result when I use the master branches for poky and =
meta-openembedded.

Ideally I would like to fix the kernel issue that causes the USB device =
to stop working but being able to build an image using kernel 4.1 would =
also help.

I appreciate any help. Thanks!

Regards,
Martin Bergek



### Setup 1

- poky:  morty (6c9f6b5f70ab3ee194b2c2c6f3bd462c994848fa)
- meta-openembedded: morty (7a491f384c277ee42ac895fec6fc2ef70f15df4d)
- meta-raspberrypi: master (17a6933adfc7bdf4e7e18dcc9d59e35718620fd4)
- Kernel: 4.1

Fails to build, exiting with "Image-hifiberry-amp.dtbo: No such file or =
directory" (log.do_image_rpi_sdimg.21049)


	Creating filesystem with Boot partition 40960 KiB and RootFS =
290816 KiB
	0+0 records in
	0+0 records out
	0 bytes copied, 0.000246618 s, 0.0 kB/s
	Model:  (file)
	Disk =
/home/martin/Yocto/poky/warp/tmp/work/raspberrypi3-poky-linux-gnueabi/dmet=
-image/1.0-r0/deploy-dmet-image-image-complete/dmet-image-raspberrypi3-201=
61106113649.rootfs.rpi-sdimg: 344MB
	Sector size (logical/physical): 512B/512B
	Partition Table: msdos
	Disk Flags:=20
=09
	Number  Start   End     Size    Type     File system  Flags
	 1      4194kB  46.1MB  41.9MB  primary               boot, lba
	 2      46.1MB  344MB   298MB   primary
=09
	mkfs.fat: warning - lowercase labels might not work properly =
with DOS or Windows
	mkfs.fat 4.0 (2016-05-06)
	Total number of sectors (81920) not a multiple of sectors per =
track (63)!
	Add mtools_skip_check=3D1 to your .mtoolsrc file to skip this =
test
	Total number of sectors (81920) not a multiple of sectors per =
track (63)!
	Add mtools_skip_check=3D1 to your .mtoolsrc file to skip this =
test
	Total number of sectors (81920) not a multiple of sectors per =
track (63)!
	Add mtools_skip_check=3D1 to your .mtoolsrc file to skip this =
test
	Total number of sectors (81920) not a multiple of sectors per =
track (63)!
	Add mtools_skip_check=3D1 to your .mtoolsrc file to skip this =
test
	Total number of sectors (81920) not a multiple of sectors per =
track (63)!
	Add mtools_skip_check=3D1 to your .mtoolsrc file to skip this =
test
	Total number of sectors (81920) not a multiple of sectors per =
track (63)!
	Add mtools_skip_check=3D1 to your .mtoolsrc file to skip this =
test
	Total number of sectors (81920) not a multiple of sectors per =
track (63)!
	Add mtools_skip_check=3D1 to your .mtoolsrc file to skip this =
test
	=
/home/martin/Yocto/poky/warp/tmp/deploy/images/raspberrypi3/Image-hifiberr=
y-amp.dtbo: No such file or directory
	WARNING: exit code 1 from a shell command.
	ERROR: Function failed: do_image_rpi_sdimg (log file is located =
at =
/home/martin/Yocto/poky/warp/tmp/work/raspberrypi3-poky-linux-gnueabi/dmet=
-image/1.0-r0/temp/log.do_image_rpi_sdimg.21049)



### Setup 2

- poky:  morty (6c9f6b5f70ab3ee194b2c2c6f3bd462c994848fa)
- meta-openembedded: morty (7a491f384c277ee42ac895fec6fc2ef70f15df4d)
- meta-raspberrypi: master (17a6933adfc7bdf4e7e18dcc9d59e35718620fd4)
- Kernel: 4.4

Builds successfully and results in a bootable image  - but PL2303 stops =
working after a number of hours (se log file below). There are two =
errors logged regarding the pl2303 device, the first one after about 40 =
minutes the system recovers from but after the second the is no more =
data coming from the USB device. This exact same thing worked on the 4.1 =
kernel previously. However I can't build a bootable image using 4.1 any =
longer due to dtbo/dtb differences (see error message above).


	root@raspberrypi3:~# grep pl2303 /var/log/messages=20
	Nov  6 10:52:06 raspberrypi3 user.info kernel: [    5.086827] =
usbcore: registered new interface driver pl2303
	Nov  6 10:52:06 raspberrypi3 user.info kernel: [    5.086951] =
usbserial: USB Serial support registered for pl2303
	Nov  6 10:52:06 raspberrypi3 user.info kernel: [    5.087084] =
pl2303 1-1.4:1.0: pl2303 converter detected
	Nov  6 10:52:06 raspberrypi3 user.info kernel: [    5.091224] =
usb 1-1.4: pl2303 converter now attached to ttyUSB0
	Nov  6 11:36:02 raspberrypi3 user.err kernel: [  392.698562] =
pl2303 ttyUSB0: usb_serial_generic_read_bulk_callback - urb stopped: -32
	Nov  6 13:14:04 raspberrypi3 user.err kernel: [ 6275.233811] =
pl2303 ttyUSB0: usb_serial_generic_read_bulk_callback - urb stopped: -32



### Setup 3

- poky:  morty (6c9f6b5f70ab3ee194b2c2c6f3bd462c994848fa)
- meta-openembedded: morty (7a491f384c277ee42ac895fec6fc2ef70f15df4d)
- meta-raspberrypi: master (17a6933adfc7bdf4e7e18dcc9d59e35718620fd4)
- Kernel: 4.7

Fails to build with the following message:


	ERROR: Fetcher failure: Unable to find revision =
a45a35c08598b23f9fd82e49c83b46c7d536244f in branch rpi-4.7.y even from =
upstream
	ERROR: Fetcher failure for URL: =
'git://github.com/raspberrypi/linux.git;protocol=3Dgit;branch=3Drpi-4.7.y'=
. Unable to fetch URL from any source.



