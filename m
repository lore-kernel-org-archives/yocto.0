Return-Path: <mfatheree@opto22.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A900BC47DAF
	for <webhook@archiver.kernel.org>; Mon, 22 Jan 2024 18:17:34 +0000 (UTC)
Subject: initramfs is isn't trying to mount the actual rootfs and is not doing switch_root #kernel #yocto
To: yocto@lists.yoctoproject.org
From: "greymattr" <mfatheree@opto22.com>
X-Originating-Location: Temecula, California, US (47.181.149.216)
X-Originating-Platform: Linux Chrome 120
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 22 Jan 2024 10:17:25 -0800
Message-ID: <0jSC.1705947445084193330.SNVv@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="gHwX4xKTGYED6ghCkY4X"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 22 Jan 2024 18:17:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62224

--gHwX4xKTGYED6ghCkY4X
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am using the kirkstone yocto build to build a firmware image that has a k=
ernel with initramfs, and a ext4 root file system on an emmc partition.

After booting up the kernel doesn't mount the device passed to the kernel a=
s the "root=3D" parameter and doesn't switch_root, it just mounts everythin=
g to ram.

In my initramfs image recipe I have set:

PACKAGE_INSTALL =3D "util-linux udev busybox base-passwd ${VIRTUAL-RUNTIME_=
base-utils} ${VIRTUAL-RUNTIME_dev_manager} ${ROOTFS_BOOTSTRAP_INSTALL}"

and I was under the impression that the ${ROOTFS_BOOTSTRAP_INSTALL} should =
handle the switch_root portion of the boot after the initramfs loads, but t=
hat is not happening.

Is there a different package I need to add to the PACKAGE_INSTALL to allow =
the real root partition to be mounted, and switch_root to occur?

--gHwX4xKTGYED6ghCkY4X
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>I am using the kirkstone yocto build to build a firmware image that has =
a kernel with initramfs, and a ext4 root file system on an emmc partition.<=
/p>
<p>After booting up the kernel doesn't mount the device passed to the kerne=
l as the "root=3D" parameter and doesn't switch_root, it just mounts everyt=
hing to ram.</p>
<p>&nbsp;</p>
<p>In my initramfs image recipe I have set:</p>
<p>&nbsp;<span style=3D"font-family: monospace; color: #000000;">PACKAGE_IN=
STALL =3D </span><span style=3D"font-family: monospace; color: #ff54ff;"><s=
pan style=3D"color: #000000;">"util-linux udev busybox base-passwd ${VIRTUA=
L-RUNTIME_base-utils} ${VIRTUAL-RUNTIME_dev_manager} ${ROOTFS_BOOTSTRAP_INS=
TALL}"</span><br /></span><span style=3D"font-family: monospace; color: #ff=
54ff;"><br /></span><span style=3D"font-family: monospace; color: #ff54ff;"=
><span style=3D"color: #000000;"><span style=3D"font-family: arial, helveti=
ca, sans-serif;">and I was under the impression that the ${ROOTFS_BOOTSTRAP=
_INSTALL} should handle the switch_root portion of the boot after the initr=
amfs loads, but that is not happening.</span></span></span></p>
<p><span style=3D"font-family: arial, helvetica, sans-serif; color: #ff54ff=
;"><span style=3D"color: #000000;">Is there a different package I need to a=
dd to the PACKAGE_INSTALL to allow the real root partition to be mounted, a=
nd switch_root to occur?</span></span><span style=3D"font-family: monospace=
; font-weight: bold; color: #ff54ff;"><br /><br /></span><br /><span style=
=3D"font-family: monospace;"><br /></span></p>

--gHwX4xKTGYED6ghCkY4X--

