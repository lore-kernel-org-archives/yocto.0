Return-Path: <joao.ccabral@parceiros.nos.pt>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F009D10BF6
	for <webhook@archiver.kernel.org>; Sat, 26 Oct 2024 11:16:55 +0000 (UTC)
Subject: [Issue/BUG] Yocto Project Releases Downloads Page with 403 - Forbidden
To: yocto@lists.yoctoproject.org
From: joao.ccabral@parceiros.nos.pt
X-Originating-Location: Peniche, Leiria, PT (109.51.240.230)
X-Originating-Platform: Linux Chrome 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 26 Oct 2024 04:16:45 -0700
Message-ID: <aBJH.1729941405307412646.B4qJ@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="KDVTx9Zv6wquWZcTSTyX"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 26 Oct 2024 11:16:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64137

--KDVTx9Zv6wquWZcTSTyX
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Almost all the folders on the page http://downloads.yoctoproject.org/releas=
es/yocto/ give 403-Forbidden with a nginx template.
All the folders/versions changed in 2024-Jul-30 and 2024-Sep-21 are giving =
the mentioned error.

This is a major issue for me as it is breaking the compilation step right a=
t the beginning.

--KDVTx9Zv6wquWZcTSTyX
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Almost all the folders on the page <a href=3D"http://downloads.yoctopr=
oject.org/releases/yocto/" target=3D"_blank" rel=3D"noopener">http://downlo=
ads.yoctoproject.org/releases/yocto/</a> give 403-Forbidden with a nginx te=
mplate.<br />All the folders/versions changed in 2024-Jul-30 and 2024-Sep-2=
1 are giving the mentioned error.<br /><br />This is a major issue for me a=
s it is breaking the compilation step right at the beginning.</div>

--KDVTx9Zv6wquWZcTSTyX--

