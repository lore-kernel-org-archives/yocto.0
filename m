Return-Path: <toyonembedded@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 865D8C43219
	for <webhook@archiver.kernel.org>; Tue, 19 Apr 2022 20:44:34 +0000 (UTC)
Subject: package and booting an initramfs image
To: yocto@lists.yoctoproject.org
From: toyonembedded@gmail.com
X-Originating-Location: Santa Barbara, California, US (209.203.101.124)
X-Originating-Platform: Linux Chrome 100
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 19 Apr 2022 11:27:22 -0700
Message-ID: <os3w.1650392842755290616.3ggG@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ahM6RsfRcSDNeodOkvgy"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Apr 2022 20:44:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56813

--ahM6RsfRcSDNeodOkvgy
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have a need to package my kernel, dtb, and rootfs manually and then boot =
this as an initramfs. I'm not sure which files from the deploy/images direc=
tory to use. I see there is an rootfs.cpio.gz file so I'm starting with tha=
t. If I unpack that I see the kernel Image and dtb in the /boot folder and =
what appears to be a filesystem in the rest. If I try to boot this as my ke=
rnel in u-boot I get this
Bad Linux ARM64 Image magic!
** No partition table - mmc 2 **
** No partition table - mmc 2 **

Does this cpio.gz file have everything I need? How do I boot with it and en=
ter an initramfs?

--ahM6RsfRcSDNeodOkvgy
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have a need to package my kernel, dtb, and rootfs manually and then boot =
this as an initramfs. I'm not sure which files from the deploy/images direc=
tory to use. I see there is an rootfs.cpio.gz file so I'm starting with tha=
t. If I unpack that I see the kernel Image and dtb in the /boot folder and =
what appears to be a filesystem in the rest. If I try to boot this as my ke=
rnel in u-boot I get this <br />Bad Linux ARM64 Image magic!
<div>** No partition table - mmc 2 **</div>
<div>** No partition table - mmc 2 **</div>
<div><br />Does this cpio.gz file have everything I need? How do I boot wit=
h it and enter an initramfs?</div>

--ahM6RsfRcSDNeodOkvgy--

