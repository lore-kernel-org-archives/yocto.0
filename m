Return-Path: <brownij6@wwu.edu>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6EAC00144
	for <webhook@archiver.kernel.org>; Mon,  1 Aug 2022 17:45:25 +0000 (UTC)
Subject: Confused as to why runtime variables (RDEPENDS, RPROVIDES,
 etc) require package name overrides
To: yocto@lists.yoctoproject.org
From: brownij6@wwu.edu
X-Originating-Location: San Jose, California, US (165.225.242.251)
X-Originating-Platform: Windows Chrome 103
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 01 Aug 2022 10:45:11 -0700
Message-ID: <S6lZ.1659375911932763970.goC0@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="k26ctw0qDPlfqOsxFv18"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 01 Aug 2022 17:45:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57720

--k26ctw0qDPlfqOsxFv18
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Essentially I don't understand why variables like RDEPENDS require a packag=
e name conditional override such as "RDEPENDS_${PN}" while other variables,=
 including DEPENDS, do not require this. Isn't putting the package name as =
a conditional after the variable pointless, since bitbake only parses the v=
ariables from the recipe=C2=A0it is currently building? I feel like my conf=
usion may stem from some fundamental misunderstanding of the way the build =
system works.

Thanks for your help,
James

--k26ctw0qDPlfqOsxFv18
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<span style=3D"color: #232629; font-family: -apple-system, BlinkMacSystemFo=
nt, Segoe UI Adjusted, Segoe UI, Liberation Sans, sans-serif;"><span style=
=3D"font-size: 15px;">Essentially I don't understand why variables like RDE=
PENDS require a package name conditional override such as "RDEPENDS_${PN}" =
while other variables, including DEPENDS, do not require this. Isn't puttin=
g the package name as a conditional after the variable pointless, since bit=
bake only parses the variables from the recipe&nbsp;it is currently buildin=
g? I feel like my confusion may stem from some fundamental misunderstanding=
 of the way the build system works.<br /><br /></span></span>Thanks for you=
r help,<br />James

--k26ctw0qDPlfqOsxFv18--

