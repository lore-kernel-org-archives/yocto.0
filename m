Return-Path: <hrsourabh011@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7959C433F5
	for <webhook@archiver.kernel.org>; Tue, 11 Oct 2022 16:36:21 +0000 (UTC)
Subject: How to create symlink while installing binary in recipe?
To: yocto@lists.yoctoproject.org
From: "Sourabh Hegde" <hrsourabh011@gmail.com>
X-Originating-Location: Munich, Bavaria, DE (95.91.249.119)
X-Originating-Platform: Windows Chrome 106
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 11 Oct 2022 09:36:17 -0700
Message-ID: <4iAU.1665506177631879836.1HhY@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="INHcy6fYSowBUbTn94qe"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Oct 2022 16:36:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58321

--INHcy6fYSowBUbTn94qe
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello All,

I have a simple recipe in which a binary is installed to /usr/bin/. Now, I =
want to establish a symlink to same binary also. I am using hardknott relea=
se

do_install () {
install -d ${D}${bindir}/
install -m 0755 ${WORKDIR}/test.sh ${D}${bindir}/test
lnr ${D}/usr/bin/test ${D} /usr/bin/test-x
}

Is this the correct approach? Or is there any better method?

--INHcy6fYSowBUbTn94qe
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello All,<br /><br />I have a simple recipe in which a binary is installed=
 to /usr/bin/. Now, I want to establish a symlink to same binary also. I am=
 using hardknott release<br /><br />
<div>do_install () {</div>
<div>&nbsp; &nbsp; install -d ${D}${bindir}/</div>
<div>&nbsp; &nbsp; install -m 0755 ${WORKDIR}/test.sh ${D}${bindir}/test<br=
 />&nbsp; &nbsp;&nbsp;<span style=3D"background-color: transparent; color: =
inherit; font-family: var(--ff-mono); font-size: var(--fs-body1); font-styl=
e: inherit; font-variant-ligatures: inherit; font-variant-caps: inherit; fo=
nt-weight: inherit; white-space: inherit;">lnr ${D}/usr/bin/test ${D}</span=
>/usr/bin/test-x</div>
<div>}<br /><br />Is this the correct approach? Or is there any better meth=
od?</div>

--INHcy6fYSowBUbTn94qe--

