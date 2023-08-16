Return-Path: <sivaprakash.mozhi@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A33AC001DF
	for <webhook@archiver.kernel.org>; Wed, 16 Aug 2023 17:59:10 +0000 (UTC)
Subject: Systemd in initramfs or root file system
To: yocto@lists.yoctoproject.org
From: sivaprakash.mozhi@gmail.com
X-Originating-Location: Mumbai, Maharashtra, IN (52.95.75.27)
X-Originating-Platform: Mac Firefox 115
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 16 Aug 2023 10:59:09 -0700
Message-ID: <agIq.1692208749820404402.VXCg@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="A2OJeGFhOkiy3DhZvO0G"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Aug 2023 17:59:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60813

--A2OJeGFhOkiy3DhZvO0G
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

we have been using a custom initramfs image in our Yocto BSP, the initramfs=
 contains busybox and a custom init script to mount the ext4 based root fil=
esystem and start the init process in the root file system using switch_roo=
t utility.
now we want to move to the systemd as our init manager, and so have few que=
stions on the same.

1. when we choose an init manager whether it is typically installed on init=
ramfs or the root file system?
2. what will be the expected size increase if we include the systemd in ini=
tramfs?
3. if we include the systemd in the initramfs whether the same should also =
be installed in the root file system, to manage the run time services?
4. if we include the systemd in the initramfs should the systemd in initram=
fs mount the root file system, and call the systemd init manager in the roo=
t file system?
5. or should we simply install the systemd in the root file system and use =
the initramfs to mount the file system and start systemd init manager?
6. is there any good BSP example that uses systemd and initramfs?

Basically we are thinking of two approaches,
1. I nstall the systemd in initramfs, and let the systemd mount the root fi=
le system.
2. retain our custom init script for mounting the root file system and invo=
ke the systemd init process within the init script with switch_root utility=
.

which of the above method is the standard way?

--
Thanks,
Sivaprakash

--A2OJeGFhOkiy3DhZvO0G
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />we have been using a custom initramfs image in our Yocto BSP=
, the initramfs contains busybox and a custom init script to mount the ext4=
 based root filesystem and start the init process in the root file system u=
sing switch_root utility.<br />now we want to move to the systemd as our in=
it manager, and so have few questions on the same.<br /><br />1. when we ch=
oose an init manager whether it is typically installed on initramfs or the =
root file system?<br />2. what will be the expected size increase if we inc=
lude the systemd in initramfs?<br />3. if we include the systemd in the ini=
tramfs whether the same should also be installed in the root file system, t=
o manage the run time services?<br />4. if we include the systemd in the in=
itramfs should the systemd in initramfs mount the root file system, and cal=
l the systemd init manager in the root file system?<br />5. or should we si=
mply install the systemd in the root file system and use the initramfs to m=
ount the file system and start systemd init manager?<br />6. is there any g=
ood BSP example that uses systemd and initramfs?<br /><br />Basically we ar=
e thinking of two approaches,<br />1. I<span lang=3D"EN-IN">nstall the syst=
emd in initramfs, and let the systemd mount the root file system.<br />2. r=
etain our custom init script for mounting the root file system and invoke t=
he systemd init process within the init script with switch_root utility.<br=
 /><br /></span><span lang=3D"EN-IN">which of the above method is the stand=
ard way?</span><br /><br />-- <br />Thanks,<br />Sivaprakash

--A2OJeGFhOkiy3DhZvO0G--

