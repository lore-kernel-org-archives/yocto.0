Return-Path: <hchanuy@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 07B5AD1170A
	for <webhook@archiver.kernel.org>; Fri, 25 Oct 2024 07:26:36 +0000 (UTC)
Subject: How to add postinst and prerm scripts to a recipe?
To: yocto@lists.yoctoproject.org
From: hchanuy@gmail.com
X-Originating-Location: Helsinki, Uusimaa, FI (87.92.135.50)
X-Originating-Platform: Linux Firefox 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 25 Oct 2024 00:26:28 -0700
Message-ID: <kVOb.1729841188070222169.SXfR@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="D67bs4W3tNuf7fwCQ6Xg"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Oct 2024 07:26:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64118

--D67bs4W3tNuf7fwCQ6Xg
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have a package that has postinst and prerm scripts that are embedded when=
 packaging as a DEB file. Now I want to write a recipe for that package, bu=
t I cannot figure out how to add the postinst and prerm scripts in the fina=
l packaging.

--D67bs4W3tNuf7fwCQ6Xg
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I have a package that has postinst and prerm scripts that are embedded=
 when packaging as a DEB file. Now I want to write a recipe for that packag=
e, but I cannot figure out how to add the postinst and prerm scripts in the=
 final packaging.</div>

--D67bs4W3tNuf7fwCQ6Xg--

