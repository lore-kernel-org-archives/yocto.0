Return-Path: <bhstalel@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59BC0C64E96
	for <webhook@archiver.kernel.org>; Mon, 18 Apr 2022 14:26:01 +0000 (UTC)
Subject: openjdk-11 failed to find --with-boot-jdk
To: yocto@lists.yoctoproject.org
From: "Bel Hadj Salem Talel" <bhstalel@gmail.com>
X-Originating-Location: Aryanah, Gouvernorat de l'Ariana, TN (196.203.207.110)
X-Originating-Platform: Linux Chrome 100
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 18 Apr 2022 00:54:08 -0700
Message-ID: <oSLv.1650268448053192235.YCqL@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="qhL0HIl1Amg8PLMeW5uT"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Apr 2022 14:26:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56798

--qhL0HIl1Amg8PLMeW5uT
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Everyone,

I am using meta-java, and I have openjdk-11 recipe.

The recipe has:

EXTRA_OECONF_append_class-native =3D "\
--with-boot-jdk=3D/usr/lib/jvm/openjdk-11-amd64 \
--enable-headless-only \
--enable-openjdk-only \
"

It fails with this error:

>=20
> configure: error: The path given by --with-boot-jdk does not contain a
> valid Boot JDK

I tried to install openjdk-11 on my native build host, but the same error p=
ersists.

How can I fix this ?

Thanks,
Talel

--qhL0HIl1Amg8PLMeW5uT
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Everyone,<br /><br />I am using meta-java, and I have openjdk-11 reci=
pe.<br /><br />The recipe has:<br /><br />EXTRA_OECONF_append_class-native =
=3D "\<br />&nbsp; &nbsp; &nbsp;--with-boot-jdk=3D/usr/lib/jvm/openjdk-11-a=
md64 \<br />&nbsp; &nbsp; &nbsp;--enable-headless-only \<br />&nbsp; &nbsp;=
 &nbsp;--enable-openjdk-only \<br />"<br /><br />It fails with this error:<=
br />
<blockquote>configure: error: The path given by --with-boot-jdk does not co=
ntain a valid Boot JDK</blockquote>
<br />I tried to install openjdk-11 on my native build host, but the same e=
rror persists.<br /><br />How can I fix this ?<br /><br />Thanks,<br />Tale=
l

--qhL0HIl1Amg8PLMeW5uT--

