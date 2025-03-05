Return-Path: <ryan.a.lovelett@saic.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 13E7BC19F32
	for <webhook@archiver.kernel.org>; Wed,  5 Mar 2025 23:56:59 +0000 (UTC)
Subject: Re: [yocto] Help needed with combining host and guest VM images in Yocto #qemu #qemux86-64
To: "Ryan Lovelett" <ryan.a.lovelett@saic.com>, yocto@lists.yoctoproject.org
From: "Ryan Lovelett" <ryan.a.lovelett@saic.com>
X-Originating-Location: US (192.26.8.4)
X-Originating-Platform: Mac Chrome 133
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 05 Mar 2025 15:56:50 -0800
References: <8570.1740780653126056250@lists.yoctoproject.org>
In-Reply-To: <8570.1740780653126056250@lists.yoctoproject.org>
Message-ID: <8212.1741219010261310074@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="yms7IpXwdkRhVBFA7d8G"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 05 Mar 2025 23:56:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64924

--yms7IpXwdkRhVBFA7d8G
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Just a follow up. I was wrong the `DEPENDS` is not sufficient. I had to add=
 do_install[depends] +=3D "core-image-minimal:do_image_complete" to get it =
to work.

--yms7IpXwdkRhVBFA7d8G
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Just a follow up. I was wrong the `DEPENDS` is not sufficient. I had t=
o add&nbsp;<code>do_install[depends] +=3D "core-image-minimal:do_image_comp=
lete"</code>to get it to work.</div>

--yms7IpXwdkRhVBFA7d8G--

