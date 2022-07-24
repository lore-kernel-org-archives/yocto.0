Return-Path: <sebastien.got@actia.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77635C43334
	for <webhook@archiver.kernel.org>; Sun, 24 Jul 2022 11:53:00 +0000 (UTC)
Subject: #archiver Error when building initramfs image with configured sources
 archive
To: yocto@lists.yoctoproject.org
From: sebastien.got@actia.fr
X-Originating-Location: Mones, Occitanie, FR (212.194.216.84)
X-Originating-Platform: Windows Chrome 103
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 24 Jul 2022 04:52:56 -0700
Message-ID: <hVOv.1658663576716370874.QdaK@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="wTkrqaxTPO0wz6zDJVk3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 24 Jul 2022 11:53:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57631

--wTkrqaxTPO0wz6zDJVk3
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I am trying to generate configured sources archives using the archiver clas=
s but it fails when generating the initramfs image:

ERROR: core-image-minimal-initramfs-1.0-r0 do_rootfs: The file /usr/lib/i68=
6-poky-linux/9.3.0/libgcc.a is installed by both libgcc and libgcc-initial,=
 aborting

I am building on dunfell with these lines in the local.conf:
INITRAMFS_IMAGE =3D "core-image-minimal-initramfs"
INHERIT +=3D "archiver"
ARCHIVER_MODE[src] =3D "configured"

It works when generating the patched source archives. Should I define somet=
hing else to make the configured source archive work ?

Thanks.
Sebastien

--wTkrqaxTPO0wz6zDJVk3
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />I am trying to generate configured sources archives using=
 the archiver class but it fails when generating the initramfs image:<br />=
<br />ERROR: core-image-minimal-initramfs-1.0-r0 do_rootfs: The file /usr/l=
ib/i686-poky-linux/9.3.0/libgcc.a is installed by both libgcc and libgcc-in=
itial, aborting<br /><br />I am building on dunfell with these lines in the=
 local.conf:<br />
<div>INITRAMFS_IMAGE =3D "core-image-minimal-initramfs"</div>
<div>INHERIT +=3D "archiver"</div>
<div>ARCHIVER_MODE[src] =3D "configured"<br /><br /></div>
It works when generating the patched source archives. Should I define somet=
hing else to make the configured source archive work ?<br /><br />Thanks.<b=
r />Sebastien

--wTkrqaxTPO0wz6zDJVk3--

