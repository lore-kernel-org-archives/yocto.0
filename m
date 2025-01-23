Return-Path: <jason.m.bills@linux.intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6B9FC02182
	for <webhook@archiver.kernel.org>; Thu, 23 Jan 2025 15:28:01 +0000 (UTC)
Subject: Re: [yocto] Script error when using EXTRA_IMAGECMD::append
To: "Bills, Jason M" <jason.m.bills@linux.intel.com>, yocto@lists.yoctoproject.org
From: "Bills, Jason M" <jason.m.bills@linux.intel.com>
X-Originating-Location: California, US (192.55.54.45)
X-Originating-Platform: Windows Chrome 132
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 23 Jan 2025 07:27:53 -0800
References: <25943.1737126622425022022@lists.yoctoproject.org>
In-Reply-To: <25943.1737126622425022022@lists.yoctoproject.org>
Message-ID: <10954.1737646073564020809@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="F3EAq6O2w6gz23zSDtjm"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Jan 2025 15:28:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64617

--F3EAq6O2w6gz23zSDtjm
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

>=20
> The issue is fixed if I change this line:
> local extra_imagecmd=3D"$@"
> to this:
> local extra_imagecmd=3D"$*"
>=20

I also found that the issue is fixed if I wrap my appended parameters in si=
ngle quotes. This is my new append:
EXTRA_IMAGECMD:squashfs-xz:append =3D " '-processors 64 -b 262144 -Xdict-si=
ze 100% -Xbcj arm'"

--F3EAq6O2w6gz23zSDtjm
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<blockquote>
<div><span style=3D"white-space: pre-wrap; display: block; width: 98vw;">Th=
e issue is fixed if I change this line:<br />local extra_imagecmd=3D"$@"<br=
 />to this:<br />local extra_imagecmd=3D"$*"</span></div>
</blockquote>
<div>&nbsp;</div>
<div><span style=3D"white-space: pre-wrap; display: block; width: 98vw;">I =
also found that the issue is fixed if I wrap my appended parameters in sing=
le quotes. This is my new append:</span></div>
<div><span style=3D"white-space: pre-wrap; display: block; width: 98vw;"> &=
nbsp; &nbsp;EXTRA_IMAGECMD:squashfs-xz:append =3D " '-processors 64 -b 2621=
44 -Xdict-size 100% -Xbcj arm'"</span></div>

--F3EAq6O2w6gz23zSDtjm--

