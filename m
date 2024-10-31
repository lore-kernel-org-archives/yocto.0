Return-Path: <freddy.boman@bastec.se>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41E32E68973
	for <webhook@archiver.kernel.org>; Thu, 31 Oct 2024 10:16:26 +0000 (UTC)
Subject: Re: [yocto] Building SDK fails after update to scarthgap
To: freddy.boman@bastec.se, yocto@lists.yoctoproject.org
From: freddy.boman@bastec.se
X-Originating-Location: Johanneshov, Stockholm County, SE (98.128.186.98)
X-Originating-Platform: Windows Firefox 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 31 Oct 2024 03:16:21 -0700
References: <9791.1730369232509801976@lists.yoctoproject.org>
In-Reply-To: <9791.1730369232509801976@lists.yoctoproject.org>
Message-ID: <9791.1730369781352487296@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="nvLi4ukh5clAYheh4BcG"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 31 Oct 2024 10:16:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64195

--nvLi4ukh5clAYheh4BcG
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

They have hardcoded the dependency for virglrenderer
https://github.com/nxp-imx/imx-qemu/commit/628105edbd816458dbf154a128cc3dd3=
ac809c7e

I am going to go yell at NXP now.
Thanks for helping with this annoyance!

/Freddy

--nvLi4ukh5clAYheh4BcG
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>They have hardcoded the dependency for virglrenderer</div>
<div><a href=3D"https://github.com/nxp-imx/imx-qemu/commit/628105edbd816458=
dbf154a128cc3dd3ac809c7e" target=3D"_blank" rel=3D"noopener">https://github=
.com/nxp-imx/imx-qemu/commit/628105edbd816458dbf154a128cc3dd3ac809c7e</a></=
div>
<div>&nbsp;</div>
<div>I am going to go yell at NXP now.</div>
<div>Thanks for helping with this annoyance!</div>
<div>&nbsp;</div>
<div>/Freddy</div>

--nvLi4ukh5clAYheh4BcG--

