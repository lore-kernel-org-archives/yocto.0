Return-Path: <jguittet.opensource@witekio.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62844C3DA41
	for <webhook@archiver.kernel.org>; Thu, 11 Jul 2024 09:56:10 +0000 (UTC)
Subject: "usermod command did not succeed" while building image
To: yocto@lists.yoctoproject.org
From: "Joel GUITTET" <jguittet.opensource@witekio.com>
X-Originating-Location: Brest, Brittany, FR (78.120.132.222)
X-Originating-Platform: Linux Chrome 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 11 Jul 2024 02:56:09 -0700
Message-ID: <sXnF.1720691769997145553.cDZj@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="kRLA3t8fb3Kzk8gzw2Xw"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 Jul 2024 09:56:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63467

--kRLA3t8fb3Kzk8gzw2Xw
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I'm building an image removing userdel and usermod to reduce image size:

shadow_%.bbappend:

do_install:append () {
rm -f ${D}${sbindir}/usermod
rm -f ${D}${sbindir}/userdel
}

And I would like to set the root password so my image inherit extrausers an=
d use EXTRA_USERS_PARAMS =3D " usermod -p 'xxxxx' root; "

When doing this, do_rootfs of the image fails with the error "usermod comma=
nd did not succeed".

I'm surprised to notice that the usermod command of EXTRA_USERS_PARAMS whic=
h is executed is the one in the image itself ! Is it expected behavior ? Th=
is looks like a strong dependency...

Joel

--kRLA3t8fb3Kzk8gzw2Xw
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />I'm building an image removing userdel and usermod to red=
uce image size:<br /><br />shadow_%.bbappend:<br /><br />do_install:append =
() {<br />&nbsp; &nbsp; rm -f ${D}${sbindir}/usermod<br />&nbsp; &nbsp; rm =
-f ${D}${sbindir}/userdel<br />}<br /><br />And I would like to set the roo=
t password so my image inherit extrausers and use EXTRA_USERS_PARAMS =3D " =
usermod -p 'xxxxx' root; "<br /><br />When doing this, do_rootfs of the ima=
ge fails with the error "usermod command did not succeed".<br /><br />I'm s=
urprised to notice that the usermod command of EXTRA_USERS_PARAMS which is =
executed is the one in the image itself ! Is it expected behavior ? This lo=
oks like a strong dependency...<br /><br />Joel

--kRLA3t8fb3Kzk8gzw2Xw--

