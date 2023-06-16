Return-Path: <gary@missionsecure.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E34AEB64D7
	for <webhook@archiver.kernel.org>; Fri, 16 Jun 2023 16:26:59 +0000 (UTC)
Subject: #kirkstone Error creating A/B partitions using wks
To: yocto@lists.yoctoproject.org
From: "Gary Huband" <gary@missionsecure.com>
X-Originating-Location: Charlottesville, Virginia, US (216.197.64.240)
X-Originating-Platform: Linux Firefox 114
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 16 Jun 2023 09:26:55 -0700
Message-ID: <4Gdm.1686932815397333791.FaHc@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="hNmJ1Ar2UrdVEhchrZMx"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Jun 2023 16:26:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60327

--hNmJ1Ar2UrdVEhchrZMx
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm getting an error when building my image that will use RAUC for A/B upda=
tes. The image should have the following partitions:

bootA
rootfsA
bootB
rootfsB

My wks file:

# short-description: Create an EFI disk image with systemd-boot
# long-description: Creates a partitioned EFI disk image that the user
# can directly dd to boot media. The selected bootloader is systemd-boot.
# It also includes intel-microcode as an initrd for early update support.
# Based on OE-core's systemd-bootdisk.wks file.
#
# RAUC partitions

bootloader --ptable gpt --timeout=3D5 --append=3D" rootfstype=3Dext4 "

# bootA
part /boot --source bootimg-efi --sourceparams=3D"loader=3Dsystemd-boot,ini=
trd=3Dmicrocode.cpio" --ondisk sda --label bootA --active --align 1024 --us=
e-uuid
# rootfsA
part / --source rootfs --ondisk sda --fstype=3Dext4 --label rootfsA --align=
 1024 --use-uuid --size 4096

# bitbake throws an error with multiple boot partitions
# bootB
part /boot --source bootimg-efi --sourceparams=3D"loader=3Dsystemd-boot,ini=
trd=3Dmicrocode.cpio" --ondisk sda --label bootB --align 1024 --use-uuid
# rootfsB
part / --source rootfs --ondisk sda --fstype=3Dext4 --label rootfsB --align=
 1024 --use-uuid --size 4096

# recovery boot
#part /boot --source bootimg-efi --sourceparams=3D"loader=3Dsystemd-boot,in=
itrd=3Dmicrocode.cpio" --ondisk sda --label bootRescue --align 1024 --use-u=
uid
# recovery rootfs
part / --source rootfs --ondisk sda --fstype=3Dext4 --label rootfsRescue --=
align 1024 --use-uuid --size 2048

# user/MSi data partition
part /data --ondisk sda --fstype=3Dext4 --fsoptions=3D"defaults" --label da=
ta --align 4096 --size 2048 --use-uuid

The error:

| DEBUG: Python function set_image_size finished
| DEBUG: Executing shell function do_image_wic
| INFO: Creating image(s)...
|
| ERROR: _exec_cmd: export PATH=3D/data/kirkstone/yocto_intel/build-msi1/tm=
p/work/msi1_intel_corei7_64-poky-linux/core-image-full-cmdline/1.0-r0/recip=
e-sysroot-native/sbin:/data/kirkstone/yocto_intel/build-msi1/tmp/work/msi1_=
intel_corei7_64-poky-linux/core-image-full-cmdline/1.0-r0/recipe-sysroot-na=
tive/usr/sbin:/data/kirkstone/yocto_intel/build-msi1/tmp/work/msi1_intel_co=
rei7_64-poky-linux/core-image-full-cmdline/1.0-r0/recipe-sysroot-native/usr=
/bin:/data/kirkstone/yocto_intel/build-msi1/tmp/work/msi1_intel_corei7_64-p=
oky-linux/core-image-full-cmdline/1.0-r0/recipe-sysroot-native/usr/bin/x86_=
64-poky-linux:/data/kirkstone/yocto_intel/build-msi1/tmp/work/msi1_intel_co=
rei7_64-poky-linux/core-image-full-cmdline/1.0-r0/recipe-sysroot-native/bin=
:/data/kirkstone/yocto_intel/build-msi1/tmp/hosttools:$PATH;mkdosfs -n boot=
B -i 0x77D66529 -C /data/kirkstone/yocto_intel/build-msi1/tmp/work/msi1_int=
el_corei7_64-poky-linux/core-image-full-cmdline/1.0-r0/tmp-wic/boot.img 331=
03 returned '1' instead of 0
| output: mkdosfs: file /data/kirkstone/yocto_intel/build-msi1/tmp/work/msi=
1_intel_corei7_64-poky-linux/core-image-full-cmdline/1.0-r0/tmp-wic/boot.im=
g already exists
| mkfs.fat 4.2 (2021-01-31)

Any help is appreciated.

--hNmJ1Ar2UrdVEhchrZMx
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm getting an error when building my image that will use RAUC for A/B upda=
tes. The image should have the following partitions:<br /><br />bootA<br />=
rootfsA<br />bootB<br />rootfsB<br /><br />My wks file:<br /><br /># short-=
description: Create an EFI disk image with systemd-boot<br /># long-descrip=
tion: Creates a partitioned EFI disk image that the user<br /># can directl=
y dd to boot media. The selected bootloader is systemd-boot.<br /># It also=
 includes intel-microcode as an initrd for early update support.<br /># Bas=
ed on OE-core's systemd-bootdisk.wks file.<br />#<br /># RAUC partitions<br=
 /><br />bootloader --ptable gpt --timeout=3D5 --append=3D" rootfstype=3Dex=
t4 "<br /><br /># bootA<br />part /boot --source bootimg-efi --sourceparams=
=3D"loader=3Dsystemd-boot,initrd=3Dmicrocode.cpio" --ondisk sda --label boo=
tA --active --align 1024 --use-uuid<br /># rootfsA<br />part / --source roo=
tfs --ondisk sda --fstype=3Dext4 --label rootfsA --align 1024 --use-uuid --=
size 4096<br /><br /># bitbake throws an error with multiple boot partition=
s<br /># bootB<br />part /boot --source bootimg-efi --sourceparams=3D"loade=
r=3Dsystemd-boot,initrd=3Dmicrocode.cpio" --ondisk sda --label bootB --alig=
n 1024 --use-uuid<br /># rootfsB<br />part / --source rootfs --ondisk sda -=
-fstype=3Dext4 --label rootfsB --align 1024 --use-uuid --size 4096<br /><br=
 /># recovery boot<br />#part /boot --source bootimg-efi --sourceparams=3D"=
loader=3Dsystemd-boot,initrd=3Dmicrocode.cpio" --ondisk sda --label bootRes=
cue --align 1024 --use-uuid<br /># recovery rootfs<br />part / --source roo=
tfs --ondisk sda --fstype=3Dext4 --label rootfsRescue --align 1024 --use-uu=
id --size 2048<br /><br /># user/MSi data partition<br />part /data --ondis=
k sda --fstype=3Dext4 --fsoptions=3D"defaults" --label data --align 4096 --=
size 2048 --use-uuid<br /><br />The error:<br /><br />| DEBUG: Python funct=
ion set_image_size finished<br />| DEBUG: Executing shell function do_image=
_wic<br />| INFO: Creating image(s)...<br />| <br />| ERROR: _exec_cmd: exp=
ort PATH=3D/data/kirkstone/yocto_intel/build-msi1/tmp/work/msi1_intel_corei=
7_64-poky-linux/core-image-full-cmdline/1.0-r0/recipe-sysroot-native/sbin:/=
data/kirkstone/yocto_intel/build-msi1/tmp/work/msi1_intel_corei7_64-poky-li=
nux/core-image-full-cmdline/1.0-r0/recipe-sysroot-native/usr/sbin:/data/kir=
kstone/yocto_intel/build-msi1/tmp/work/msi1_intel_corei7_64-poky-linux/core=
-image-full-cmdline/1.0-r0/recipe-sysroot-native/usr/bin:/data/kirkstone/yo=
cto_intel/build-msi1/tmp/work/msi1_intel_corei7_64-poky-linux/core-image-fu=
ll-cmdline/1.0-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux:/data/kir=
kstone/yocto_intel/build-msi1/tmp/work/msi1_intel_corei7_64-poky-linux/core=
-image-full-cmdline/1.0-r0/recipe-sysroot-native/bin:/data/kirkstone/yocto_=
intel/build-msi1/tmp/hosttools:$PATH;mkdosfs -n bootB -i 0x77D66529 -C /dat=
a/kirkstone/yocto_intel/build-msi1/tmp/work/msi1_intel_corei7_64-poky-linux=
/core-image-full-cmdline/1.0-r0/tmp-wic/boot.img 33103 returned '1' instead=
 of 0<br />| output: mkdosfs: file /data/kirkstone/yocto_intel/build-msi1/t=
mp/work/msi1_intel_corei7_64-poky-linux/core-image-full-cmdline/1.0-r0/tmp-=
wic/boot.img already exists<br />| mkfs.fat 4.2 (2021-01-31)<br /><br />Any=
 help is appreciated.

--hNmJ1Ar2UrdVEhchrZMx--

