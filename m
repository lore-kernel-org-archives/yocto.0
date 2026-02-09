Return-Path: <fabian.hanke@bosch.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A71FBE81BC4
	for <webhook@archiver.kernel.org>; Mon,  9 Feb 2026 13:57:59 +0000 (UTC)
Subject: Re: [yocto] File permissions not correctly set when using custom FILESYSTEM_PERMS_TABLES
To: "Hanke Fabian" <fabian.hanke@bosch.com>, yocto@lists.yoctoproject.org
From: "Hanke Fabian" <fabian.hanke@bosch.com>
X-Originating-Location: Stuttgart, Baden-Wurttemberg, DE (194.39.218.22)
X-Originating-Platform: Windows Edge 144
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 09 Feb 2026 05:57:49 -0800
References: <2Gom.1770630204428680865.GsER@lists.yoctoproject.org>
In-Reply-To: <2Gom.1770630204428680865.GsER@lists.yoctoproject.org>
Message-ID: <624948.1770645469890270097@lists.yoctoproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 Feb 2026 13:57:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66232

I guess I figured it already on my own. I forgot that bitbake runs in some =
fakeroot/pseudo environment which does some user/permission magic behind th=
e scenes:=20
https://docs.yoctoproject.org/dev/overview-manual/concepts.html#fakeroot-an=
d-pseudo

--------------------------------

Bosch Rexroth AG

Registered Office: Stuttgart, Registration Court: Amtsgericht Stuttgart HRB=
 23192 Executive Board: Dr. Steffen Haack (President), Roland Bittenauer, T=
homas Fechner, Holger von Hebel, Reinhard Sch=C3=A4fer Chairman of the Supe=
rvisory Board: Dr. Markus Forschner

