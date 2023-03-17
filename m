Return-Path: <hrsourabh011@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1B10C74A5B
	for <webhook@archiver.kernel.org>; Fri, 17 Mar 2023 10:29:57 +0000 (UTC)
Subject: How to extract archive from git repo and set permission to extracted file?
To: yocto@lists.yoctoproject.org
From: "Sourabh Hegde" <hrsourabh011@gmail.com>
X-Originating-Location: Munich, Bavaria, DE (95.91.248.160)
X-Originating-Platform: Windows Chrome 107
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 17 Mar 2023 03:29:55 -0700
Message-ID: <kGL5.1679048995910883811.5BwR@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="5KpBhonWVfch97clfl3H"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Mar 2023 10:29:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59444

--5KpBhonWVfch97clfl3H
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I have an archive file in Git which I need to install to /usr/bin

Below is the part of my recipe:

SRC_URI =3D " \
https://<..>/uploads/4417be0/test_v${PV}.zip \
"

do_install () {
install -d ${D}${bindir}/
unzip -q ${WORKDIR}/test_v${PV}.zip ${D}${bindir}/test
}

But, how can I set the permission to extracted file? I want to set 0755 per=
mission to "test"

Thank you,
Sourabh

--5KpBhonWVfch97clfl3H
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />I have an archive file in Git which I need to install to =
/usr/bin<br /><br />Below is the part of my recipe:<br /><br />
<div>SRC_URI =3D " \</div>
<div><span style=3D"white-space: pre;"> </span>https://&lt;..&gt;/uploads/4=
417be0/test_v${PV}.zip \</div>
<div>"</div>
<div>&nbsp;</div>
<div>do_install () {</div>
<div>&nbsp; &nbsp; install -d ${D}${bindir}/</div>
<div>&nbsp; &nbsp; unzip -q ${WORKDIR}/test_v${PV}.zip ${D}${bindir}/test</=
div>
<div>}<br /><br />But, how can I set the permission to extracted file? I wa=
nt to set 0755 permission to "test"&nbsp;<br /><br />Thank you,<br />Sourab=
h</div>

--5KpBhonWVfch97clfl3H--

