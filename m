Return-Path: <hrsourabh011@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 42DAFC433EF
	for <webhook@archiver.kernel.org>; Tue, 22 Feb 2022 22:35:42 +0000 (UTC)
Subject: Building Yocto images for RPi CM4
To: yocto@lists.yoctoproject.org
From: "Sourabh Hegde" <hrsourabh011@gmail.com>
X-Originating-Location: Munich, Bavaria, DE (95.91.249.119)
X-Originating-Platform: Windows Firefox 91
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 22 Feb 2022 14:35:41 -0800
Message-ID: <wIdm.1645569341501824443.TIUi@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="teuP9bQkcpD8YaHWqrsc"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Feb 2022 22:35:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56253

--teuP9bQkcpD8YaHWqrsc
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello All,

I am building a basic image (core-image-base) for RPi CM4(Lite) on "Honiste=
r" release with "uboot" as bootloader.

In my conf/local.conf file MACHINE =3D "raspberrypi4-64" and also I have se=
t

RPI_USE_U_BOOT =3D "1"
PREFERRED_PROVIDER_virtual/bootloader =3D "u-boot"

Image builds successfully and I transferred the image to SD card and tried =
to boot. I am using WKS_FILE =3D "sdimage-dual-raspberrypi.wks.in"

sdimage-dual-raspberrypi.wks.in :

part /boot --source bootimg-partition --ondisk mmcblk0 --fstype=3Dvfat --la=
bel boot --active --align 4096 --size 100
part / --source rootfs --ondisk mmcblk0 --fstype=3Dext4 --label rootfs_A --=
align 4096
part / --source rootfs --ondisk mmcblk0 --fstype=3Dext4 --label rootfs_B --=
align 4096
part /home --source rootfs --rootfs-dir=3D${IMAGE_ROOTFS}/home --ondisk mmc=
blk0 --fstype=3Dext4 --label homefs --align 1024 --size 500 --fsoptions "x-=
systemd.growfs"

But unfortunately, i am not able to boot using this image and initially it =
starts with
.
.
Detecting USB Device.
.
.
Hit any key to stop auto-boot..
.
.
Starting kernel..

But right after this screen turns off and after a second screen turns on wi=
th "Loading progress bar" and as soon as it loads, a blank screen pops-up. =
I am not sure whether system is booted properly or not. I am not able to in=
teract with it. And no Linux user space is accessible

Sadly, the custom carrier board I am using has no serial console, so I can =
only use a RPi display to see the progress and messages.

Can anyone please let me know what could be the issue here and how to resol=
ve it?

Your help will be much appreciated.

thanks in advance..

--teuP9bQkcpD8YaHWqrsc
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello All,<br /><br />I am building a basic image (core-image-base) for RPi=
 CM4(Lite) on "Honister" release with "uboot" as bootloader.<br /><br />In =
my conf/local.conf file MACHINE =3D "raspberrypi4-64" and also I have set<b=
r /><br />RPI_USE_U_BOOT =3D "1"<br />PREFERRED_PROVIDER_virtual/bootloader=
 =3D "u-boot"<br /><br />Image builds successfully and I transferred the im=
age to SD card and tried to boot. I am using WKS_FILE =3D "sdimage-dual-ras=
pberrypi.wks.in"<br /><br />sdimage-dual-raspberrypi.wks.in :<br /><br />pa=
rt /boot --source bootimg-partition --ondisk mmcblk0 --fstype=3Dvfat --labe=
l boot --active --align 4096 --size 100<br />part / --source rootfs --ondis=
k mmcblk0 --fstype=3Dext4 --label rootfs_A --align 4096<br />part / --sourc=
e rootfs --ondisk mmcblk0 --fstype=3Dext4 --label rootfs_B --align 4096<br =
/>part /home --source rootfs --rootfs-dir=3D${IMAGE_ROOTFS}/home --ondisk m=
mcblk0 --fstype=3Dext4 --label homefs --align 1024 --size 500 --fsoptions "=
x-systemd.growfs"<br /><br />But unfortunately, i am not able to boot using=
 this image and initially it starts with <br />.<br />.<br />Detecting USB =
Device.<br />.<br />.<br />Hit any key to stop auto-boot..<br />.<br />.<br=
 />Starting kernel..<br /><br />But right after this screen turns off and a=
fter a second screen turns on with "Loading progress bar" and as soon as it=
 loads, a blank screen pops-up. I am not sure whether system is booted prop=
erly or not. I am not able to interact with it. And no Linux user space is =
accessible<br /><br />Sadly, the custom carrier board I am using has no ser=
ial console, so I can only use a RPi display to see the progress and messag=
es.<br /><br />Can anyone please let me know what could be the issue here a=
nd how to resolve it?<br /><br />Your help will be much appreciated.<br /><=
br />thanks in advance..

--teuP9bQkcpD8YaHWqrsc--

