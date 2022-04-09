Return-Path: <casey.ballentine@essvote.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75A66C63703
	for <webhook@archiver.kernel.org>; Mon, 11 Apr 2022 17:18:01 +0000 (UTC)
Subject: secure boot w/ Mender bzImage fails validation  #dunfell
To: yocto@lists.yoctoproject.org
From: "Ballentine, Casey" <casey.ballentine@essvote.com>
X-Originating-Location: Omaha, Nebraska, US (98.168.241.110)
X-Originating-Platform: Windows Chrome 100
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 09 Apr 2022 07:38:25 -0700
Message-ID: <sJ7r.1649515105213484766.tB27@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="e2tFw0cojhe3VRvHFqM8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Apr 2022 17:18:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56701

--e2tFw0cojhe3VRvHFqM8
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

We have an Intel Elkhart Lake device that we are trying to get Secure Boot =
(via meta-secure-core/meta-efi-secure-boot SELoader) working on using the D=
unfell release. This device uses Mender for updates via USB. We have Secure=
 Boot working successfully on a similar device, but that device does not em=
ploy Mender.

On the HDD image, /boot/bzImage and /boot/bzImage.p7b (the detached digital=
 signature) are present, as are the set of GRUB artifacts in /boot/efi/BOOT=
/EFI. As a side note, we do not use an initramfs.

Grub and grub.cfg validate on boot, but /boot/bzImage does not.

I've read that SELoader can't access anything outside of the /efi partition=
. If that's correct, how do we work around this issue?

Thanks for any help, and let me know if you need further information.

Best,
Casey

--e2tFw0cojhe3VRvHFqM8
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />We have an Intel Elkhart Lake device that we are trying t=
o get Secure Boot (via meta-secure-core/meta-efi-secure-boot SELoader) work=
ing on using the Dunfell release. This device uses Mender for updates via U=
SB. We have Secure Boot working successfully on a similar device, but that =
device does not employ Mender.<br /><br />On the HDD image, /boot/bzImage a=
nd /boot/bzImage.p7b (the detached digital signature) are present, as are t=
he set of GRUB artifacts in /boot/efi/BOOT/EFI. As a side note, we do not u=
se an initramfs.<br /><br />Grub and grub.cfg validate on boot, but /boot/b=
zImage does not.<br /><br />I've read that SELoader can't access anything o=
utside of the /efi partition. If that's correct, how do we work around this=
 issue?<br /><br />Thanks for any help, and let me know if you need further=
 information.<br /><br />Best,<br />Casey

--e2tFw0cojhe3VRvHFqM8--

