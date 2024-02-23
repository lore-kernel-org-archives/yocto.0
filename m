Return-Path: <acox@reliablecontrols.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1BD3AC5478C
	for <webhook@archiver.kernel.org>; Fri, 23 Feb 2024 23:36:19 +0000 (UTC)
Subject: Machine qemuarm linux-yocto-tiny_5.15 Missing ext4 in Kernel
To: yocto@lists.yoctoproject.org
From: acox@reliablecontrols.com
X-Originating-Location: Victoria, British Columbia, CA (64.251.73.50)
X-Originating-Platform: Windows Firefox 122
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 23 Feb 2024 15:36:14 -0800
Message-ID: <trdP.1708731374055475315.fHPK@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="vxBNEl734WHifkyicKve"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 23 Feb 2024 23:36:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62591

--vxBNEl734WHifkyicKve
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Having trouble with qemuarm for a tiny distro.

My system works fine with my target device (albeit different custom kernel)=
 as well as qemux86 which uses this kernel. It seems that for some reason i=
t's producing an ext4 rootfs but not compiling the kernel for ext4 support?=
 Anyone else noticed this or am I missing some configuration?

>=20
> [=C2=A0=C2=A0=C2=A0 0.834745] List of all partitions:
> [=C2=A0=C2=A0=C2=A0 0.835431] 0100=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 6144 ram0
> [=C2=A0=C2=A0=C2=A0 0.835496]=C2=A0 (driver?)
> [=C2=A0=C2=A0=C2=A0 0.836106] fe00=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 20098 vda
> [=C2=A0=C2=A0=C2=A0 0.836143]=C2=A0 driver: virtio_blk
> [=C2=A0=C2=A0=C2=A0 0.836556] No filesystem could mount root, tried:
> [=C2=A0=C2=A0=C2=A0 0.836581]=C2=A0 vfat
> [=C2=A0=C2=A0=C2=A0 0.836795]
> [=C2=A0=C2=A0=C2=A0 0.837053] VFS: Unable to mount root fs on unknown-blo=
ck(254,0)
> [=C2=A0=C2=A0=C2=A0 0.837835] User configuration error - no valid root fi=
lesystem found
> [=C2=A0=C2=A0=C2=A0 0.838551] Kernel panic - not syncing: Invalid configu=
ration from end
> user prevents continuing
>

--vxBNEl734WHifkyicKve
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Having trouble with qemuarm for a tiny distro.<br /><br />My system works f=
ine with my target device (albeit different custom kernel) as well as qemux=
86 which uses this kernel. It seems that for some reason it's producing an =
ext4 rootfs but not compiling the kernel for ext4 support? Anyone else noti=
ced this or am I missing some configuration?<br />
<blockquote>
<div>[&nbsp;&nbsp;&nbsp; 0.834745] List of all partitions:</div>
<div>[&nbsp;&nbsp;&nbsp; 0.835431] 0100&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6144 ram0</div>
<div>[&nbsp;&nbsp;&nbsp; 0.835496]&nbsp; (driver?)</div>
<div>[&nbsp;&nbsp;&nbsp; 0.836106] fe00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; 20098 vda</div>
<div>[&nbsp;&nbsp;&nbsp; 0.836143]&nbsp; driver: virtio_blk</div>
<div>[&nbsp;&nbsp;&nbsp; 0.836556] No filesystem could mount root, tried:</=
div>
<div>[&nbsp;&nbsp;&nbsp; 0.836581]&nbsp; vfat</div>
<div>[&nbsp;&nbsp;&nbsp; 0.836795]</div>
<div>[&nbsp;&nbsp;&nbsp; 0.837053] VFS: Unable to mount root fs on unknown-=
block(254,0)</div>
<div>[&nbsp;&nbsp;&nbsp; 0.837835] User configuration error - no valid root=
 filesystem found</div>
<div>[&nbsp;&nbsp;&nbsp; 0.838551] Kernel panic - not syncing: Invalid conf=
iguration from end user prevents continuing</div>
</blockquote>

--vxBNEl734WHifkyicKve--

