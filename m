Return-Path: <olivierperrier@yahoo.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4DEAFE77184
	for <webhook@archiver.kernel.org>; Sat, 21 Dec 2024 09:53:29 +0000 (UTC)
Subject: compare images builds settings 
To: yocto@lists.yoctoproject.org
From: olivierperrier@yahoo.fr
X-Originating-Location: Bernin, Auvergne-Rhone-Alpes, FR (92.157.120.247)
X-Originating-Platform: Linux Chrome 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 21 Dec 2024 01:53:23 -0800
Message-ID: <5tDB.1734774803796643346.wDaB@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="2RcE3LrDmxbBmzOIyZYe"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 21 Dec 2024 09:53:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64473

--2RcE3LrDmxbBmzOIyZYe
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello, I am new to yocto/openembedded and after following some tutorials I =
try to achieve my first custom build. The goal is to generate a poky(kirkst=
one) distro featuring mono on raspberry pi 3B+
I succeed using the meta-mono layer and generated the core-image-mono witho=
ut any problem.
For learning purpose and avoid depending on an example image, I wanted to g=
enerate the core-sato image and amend it with core-image-mono in my local.c=
onf.
So I checked inside the meta-mono/recipes-mono/images/core-image-mono.bb an=
d view it was referencing the core-image-sato and the core-image-mono.inc.
In the core-image-mono.inc, I view these two lines:
IMAGE_INSTALL +=3D "mono mono-helloworld tzdata"

So my approach was to retrieve these lines, paste it in my local.conf and c=
hange the image from core-image-mono to core-image-sato .
By doing this my output image fails to boot and does not have the same size=
 of the core-image-mono
What would be the way to debug this ? I assumed by running a
bitbake -e|grep IMAGE_INSTALL after the two builds and compare them I would=
 see some diffferences, but no difference
I succeed by changing the line
IMAGE_INSTALL +=3D "mono mono-helloworld tzdata"
by
IMAGE_INSTALL :append =3D "mono mono-helloworld tzdata"

I succeed but I do not understand the right way to debug this ?

Thanks a lot for your support

--2RcE3LrDmxbBmzOIyZYe
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello, I am new to yocto/openembedded and after following some tutoria=
ls I try to achieve my first custom build. The goal is to generate a poky(k=
irkstone) distro featuring mono on raspberry pi 3B+</div>
<div>I succeed using the meta-mono layer and generated the core-image-mono =
without any problem.</div>
<div>For learning purpose and avoid depending on an example image, I wanted=
 to generate the core-sato image and amend it with core-image-mono in my lo=
cal.conf.</div>
<div>So I checked inside the meta-mono/recipes-mono/images/core-image-mono.=
bb and view it was referencing the core-image-sato and the core-image-mono.=
inc.</div>
<div>In the core-image-mono.inc, I view these two lines:&nbsp;</div>
<div>
<div>IMAGE_INSTALL +=3D "mono mono-helloworld tzdata"</div>
<br />
<div>So my approach was to retrieve these lines, paste it in my local.conf =
and change the image from core-image-mono to core-image-sato .</div>
<div>By doing this my output image fails to boot and does not have the same=
 size of the core-image-mono</div>
<div>What would be the way to debug this ? I assumed by running a</div>
<div>bitbake -e|grep IMAGE_INSTALL after the two builds and compare them I =
would see some diffferences, but no difference</div>
<div>I succeed by changing the line&nbsp;</div>
<div>IMAGE_INSTALL +=3D "mono mono-helloworld tzdata"</div>
<div>by&nbsp;</div>
<div>IMAGE_INSTALL :append =3D "mono mono-helloworld tzdata"</div>
<div>&nbsp;</div>
<div>I succeed but I do not understand the right way to debug this ?</div>
<div>&nbsp;</div>
<div>Thanks a lot for your support</div>
<div>&nbsp;</div>
</div>

--2RcE3LrDmxbBmzOIyZYe--

