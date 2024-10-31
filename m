Return-Path: <freddy.boman@bastec.se>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A791E68974
	for <webhook@archiver.kernel.org>; Thu, 31 Oct 2024 10:33:56 +0000 (UTC)
Subject: Re: [yocto] Building SDK fails after update to scarthgap
To: freddy.boman@bastec.se, yocto@lists.yoctoproject.org
From: freddy.boman@bastec.se
X-Originating-Location: Johanneshov, Stockholm County, SE (98.128.186.98)
X-Originating-Platform: Windows Firefox 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 31 Oct 2024 03:33:56 -0700
References: <9791.1730369781352487296@lists.yoctoproject.org>
In-Reply-To: <9791.1730369781352487296@lists.yoctoproject.org>
Message-ID: <9791.1730370836279001550@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="g08Ze2Udp6TJx1uycrRc"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 31 Oct 2024 10:33:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64196

--g08Ze2Udp6TJx1uycrRc
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

For anyone with the same problem.
Make sure DISTRO_FEATURES contains opengl
Then add a bbappend
recipes-devtools/qemu/qemu_8.2.2.imx.bbappend (or current version)
Put one line in the file
DEPENDS +=3D "virglrenderer"

Qemu (and sdk) should now properly build.

--g08Ze2Udp6TJx1uycrRc
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>For anyone with the same problem.</div>
<div>Make sure DISTRO_FEATURES contains opengl</div>
<div>Then add a bbappend</div>
<div>recipes-devtools/qemu/qemu_8.2.2.imx.bbappend (or current version)</di=
v>
<div>Put one line in the file</div>
<div>DEPENDS +=3D "virglrenderer"</div>
<div>&nbsp;</div>
<div>Qemu (and sdk) should now properly build.</div>

--g08Ze2Udp6TJx1uycrRc--

