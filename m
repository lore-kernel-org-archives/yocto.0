Return-Path: <ms.priyanshu.sharma@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8AC3AFA373D
	for <webhook@archiver.kernel.org>; Mon, 31 Oct 2022 01:34:27 +0000 (UTC)
Subject: How to remove shared libraries dependencies?
To: yocto@lists.yoctoproject.org
From: "Priyanshu Sharma" <ms.priyanshu.sharma@gmail.com>
X-Originating-Location: Bengaluru, Karnataka, IN (202.164.25.5)
X-Originating-Platform: Windows Chrome 106
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 30 Oct 2022 18:34:20 -0700
Message-ID: <8lcP.1667180060174188660.R0zS@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Gbl7B8aASzhKvETTUzqh"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 31 Oct 2022 01:34:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58441

--Gbl7B8aASzhKvETTUzqh
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

--Gbl7B8aASzhKvETTUzqh
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>I've a requirement in which I want to package veritysetup binary in a mi=
nimal filesystem (which is size constraint)&nbsp;<br />Including "cryptsetu=
p" package in IMAGE_INSTALL is adding the binary but also a lot of shared l=
ibraries which are its dependencies. The shared libraries are increasing th=
e size of the filesystem, which should not be done. I do not need functiona=
lities like ssl for veritysetup, so how can I remove the dependencies on th=
ese shared libraries?</p>
<p>I've tried removing eg ssl from&nbsp;<a title=3D"PACKAGECONFIG of crypts=
etup recipe" href=3D"https://git.openembedded.org/meta-openembedded/tree/me=
ta-oe/recipes-crypto/cryptsetup/cryptsetup_2.4.3.bb#n29" target=3D"_blank" =
rel=3D"noopener">https://git.openembedded.org/meta-openembedded/tree/meta-o=
e/recipes-crypto/cryptsetup/cryptsetup_2.4.3.bb#n29</a>&nbsp;but the shared=
 libs are still the dependency.</p>

--Gbl7B8aASzhKvETTUzqh--

