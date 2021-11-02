Return-Path: <tomasz.zyjewski@3mdeb.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 19711C433F5
	for <webhook@archiver.kernel.org>; Tue,  2 Nov 2021 11:11:36 +0000 (UTC)
Subject: Re: #swupdate integration error.
To: yocto@lists.yoctoproject.org
From: "tomzy" <tomasz.zyjewski@3mdeb.com>
X-Originating-Location: Gdansk, Pomerania, PL (85.222.117.222)
X-Originating-Platform: Linux Firefox 93
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 02 Nov 2021 04:11:34 -0700
References: <uHSc.1635838531127813783.MEhK@lists.yoctoproject.org>
In-Reply-To: <uHSc.1635838531127813783.MEhK@lists.yoctoproject.org>
Message-ID: <30930.1635851494957676509@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="6lHMZP2WecnCQemghtC0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Nov 2021 11:11:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55210

--6lHMZP2WecnCQemghtC0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Vishal,

It looks like there is some problem with `u-boot-fw-utils` compilation. Are=
 you
using U-Boot in your system? Which target do you try to build? As you can s=
ee
[here](https://github.com/sbabic/meta-swupdate/blob/f2d65d87485ada5a2d3a744=
fd7b9e46ec7e6b9f2/recipes-support/swupdate/swupdate.inc#L73)

building update image adds `u-boot-fw-utils` to DEPENDS when U-Boot is used=
. And
from the logs it looks like the compilation fails because of wrong
`UBOOT_MACHINE` set. See
[here](https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-bs=
p/u-boot/u-boot-fw-utils_2018.01.bb?h=3Dsumo&id=3Db39f4146de84d7b36861859ec=
669d9c8e2ca77c6#n13)

Cheers,
--
Tomasz =C5=BByjewski
Embedded Systems Engineer
GPG: 5C495EA3EBEECA59
https://3mdeb.com | @3mdeb_com

--6lHMZP2WecnCQemghtC0
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div class=3D"moz-text-html" lang=3D"x-unicode">
<p>Hi Vishal,<br /><br />It looks like there is some problem with `u-boot-f=
w-utils` compilation. Are you<br />using U-Boot in your system? Which targe=
t do you try to build? As you can see<br />[here](https://github.com/sbabic=
/meta-swupdate/blob/f2d65d87485ada5a2d3a744fd7b9e46ec7e6b9f2/recipes-suppor=
t/swupdate/swupdate.inc#L73)<br /><br />building update image adds `u-boot-=
fw-utils` to DEPENDS when U-Boot is used. And<br />from the logs it looks l=
ike the compilation fails because of wrong<br />`UBOOT_MACHINE` set. See<br=
 />[here](https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes=
-bsp/u-boot/u-boot-fw-utils_2018.01.bb?h=3Dsumo&amp;id=3Db39f4146de84d7b368=
61859ec669d9c8e2ca77c6#n13)</p>
<p>&nbsp;</p>
<p>Cheers,<br />-- <br />Tomasz =C5=BByjewski<br />Embedded Systems Enginee=
r<br />GPG: 5C495EA3EBEECA59<br />https://3mdeb.com | @3mdeb_com</p>
</div>

--6lHMZP2WecnCQemghtC0--

