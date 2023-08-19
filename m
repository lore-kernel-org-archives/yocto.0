Return-Path: <shrikantvaishnav@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 201A6EE49A5
	for <webhook@archiver.kernel.org>; Sat, 19 Aug 2023 12:42:21 +0000 (UTC)
Subject: Qemu not working for raspberry pi
To: yocto@lists.yoctoproject.org
From: shrikantvaishnav@hotmail.com
X-Originating-Location: New Delhi, National Capital Territory of Delhi, IN (49.36.182.211)
X-Originating-Platform: Linux Firefox 116
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 19 Aug 2023 05:42:20 -0700
Message-ID: <8vPi.1692448940660132639.f92P@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ZrEeE2vUl6VRfWjHgbnH"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 19 Aug 2023 12:42:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60830

--ZrEeE2vUl6VRfWjHgbnH
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,
i want to run my raspberry pi in qemu and for this, I have created the imag=
e using core-image-weston and also set machine to: *MACHINE ??=3D "qemux86-=
64"*.after this whenever I try to run using qemu it shows
*Error:"runqemu - ERROR - IMAGE_LINK_NAME wasn't set to find corresponding =
.qemuboot.conf file"

* Please help

--ZrEeE2vUl6VRfWjHgbnH
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,<br />i want to run my raspberry pi in qemu and for this, I have cre=
ated the image using core-image-weston and also set machine to:<strong>MACH=
INE ??=3D "qemux86-64"</strong> .after this whenever I try to run using qem=
u it shows<br /><strong>Error:"runqemu - ERROR - IMAGE_LINK_NAME wasn't set=
 to find corresponding .qemuboot.conf file"<br /><br /></strong>Please help

--ZrEeE2vUl6VRfWjHgbnH--

