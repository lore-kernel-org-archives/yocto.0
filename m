Return-Path: <ms.priyanshu.sharma@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0ACEBFA3740
	for <webhook@archiver.kernel.org>; Mon, 31 Oct 2022 08:53:40 +0000 (UTC)
Subject: Re: How to remove shared libraries dependencies?
To: yocto@lists.yoctoproject.org
From: "Priyanshu Sharma" <ms.priyanshu.sharma@gmail.com>
X-Originating-Location: Bengaluru, Karnataka, IN (202.164.25.5)
X-Originating-Platform: Windows Chrome 106
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 31 Oct 2022 01:53:33 -0700
References: <8lcP.1667180060174188660.R0zS@lists.yoctoproject.org>
In-Reply-To: <8lcP.1667180060174188660.R0zS@lists.yoctoproject.org>
Message-ID: <10623.1667206413233641607@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0myZRSToePZaocqc0YVA"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 31 Oct 2022 08:53:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58444

--0myZRSToePZaocqc0YVA
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I've a requirement in which I want to package veritysetup binary in a minim=
al filesystem (which is size constraint)
Including "cryptsetup" package in IMAGE_INSTALL is adding the binary but al=
so a lot of shared libraries which are its dependencies. The shared librari=
es are increasing the size of the filesystem, which should not be done. I d=
o not need functionalities like ssl for veritysetup, so how can I remove th=
e dependencies on these shared libraries?

I've tried removing eg ssl from https://git.openembedded.org/meta-openembed=
ded/tree/meta-oe/recipes-crypto/cryptsetup/cryptsetup_2.4.3.bb#n29 but the =
shared libs are still the dependency.

--0myZRSToePZaocqc0YVA
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<span style=3D"white-space: pre-wrap;">I've a requirement in which I want t=
o package veritysetup binary in a minimal filesystem (which is size constra=
int)</span><br style=3D"white-space: pre-wrap;" /><span style=3D"white-spac=
e: pre-wrap;">Including "cryptsetup" package in IMAGE_INSTALL is adding the=
 binary but also a lot of shared libraries which are its dependencies. The =
shared libraries are increasing the size of the filesystem, which should no=
t be done. I do not need functionalities like ssl for veritysetup, so how c=
an I remove the dependencies on these shared libraries?</span><br style=3D"=
white-space: pre-wrap;" /><br style=3D"white-space: pre-wrap;" /><span styl=
e=3D"white-space: pre-wrap;">I've tried removing eg ssl from </span><a styl=
e=3D"background-color: #ffffff; white-space: pre-wrap;" href=3D"https://git=
.openembedded.org/meta-openembedded/tree/meta-oe/recipes-crypto/cryptsetup/=
cryptsetup_2.4.3.bb#n29" target=3D"_blank" rel=3D"noopener">https://git.ope=
nembedded.org/meta-openembedded/tree/meta-oe/recipes-crypto/cryptsetup/cryp=
tsetup_2.4.3.bb#n29</a><span style=3D"white-space: pre-wrap;"> but the shar=
ed libs are still the dependency.</span>

--0myZRSToePZaocqc0YVA--

