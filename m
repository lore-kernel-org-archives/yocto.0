Return-Path: <anton.antonov@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B4F9C6FD20
	for <webhook@archiver.kernel.org>; Fri, 24 Mar 2023 15:05:17 +0000 (UTC)
Subject: Re: [meta-security][PATCH] parsec-service: update from 1.1.0 to 1.2.0-rc1
To: yocto@lists.yoctoproject.org
From: "Anton Antonov" <anton.antonov@arm.com>
X-Originating-Location: Cambridge, England, GB (217.140.99.251)
X-Originating-Platform: Mac Firefox 111
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 24 Mar 2023 08:05:08 -0700
References: <3e087d67-e671-8829-6e00-776e7b3fc3ae@gmail.com>
In-Reply-To: <3e087d67-e671-8829-6e00-776e7b3fc3ae@gmail.com>
Message-ID: <4110.1679670308835025472@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="XNgCKeGUAqFChAlqfusL"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Mar 2023 15:05:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59519

--XNgCKeGUAqFChAlqfusL
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Mikko,

>=20
> +SRC_URI +=3D
> "git://github.com/parallaxsecond/parsec;protocol=3Dhttps;branch=3Dmain \

We noticed another small issue with your patch. Could you use gitsm instead=
 of git, so required git submodules will be fetched as well:

SRC_URI +=3D "gitsm://github.com/parallaxsecond/parsec;protocol=3Dhttps;bra=
nch=3Dmain \

Thank you,

Anton

--XNgCKeGUAqFChAlqfusL
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi Mikko,</p>
<p>&nbsp;</p>
<blockquote>+SRC_URI +=3D "git://github.com/parallaxsecond/parsec;protocol=
=3Dhttps;branch=3Dmain \</blockquote>
<p>&nbsp; We noticed another small issue with your patch. Could you use git=
sm instead of git, so required git submodules will be fetched as well:</p>
<p>SRC_URI +=3D "gitsm://github.com/parallaxsecond/parsec;protocol=3Dhttps;=
branch=3Dmain \</p>
<p>&nbsp;</p>
<p>Thank you,</p>
<p>Anton</p>

--XNgCKeGUAqFChAlqfusL--

