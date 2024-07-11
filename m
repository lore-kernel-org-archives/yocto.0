Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4971AC3DA41
	for <webhook@archiver.kernel.org>; Thu, 11 Jul 2024 09:40:30 +0000 (UTC)
Subject: get version info of dependencies in recipe
To: yocto@lists.yoctoproject.org
From: tastyherring@gmail.com
X-Originating-Location: Brisbane, Queensland, AU (116.255.1.251)
X-Originating-Platform: Linux Firefox 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 11 Jul 2024 01:46:13 -0700
Message-ID: <VxRX.1720687573779163831.wDFU@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="7QqxBzJDpXgsyCreRT8X"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 Jul 2024 09:40:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63466

--7QqxBzJDpXgsyCreRT8X
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

When writing a recipe=C2=A0 I would like to get access to the meta data of =
the dependencies, specifically there PV so I can then pass this info into t=
his build.

>> pkga.bb

```

DEPENDS =3D "pkgb";

EXTRA_OECMAKE +=3D "-DPKGB_REV=3D${PV:pn-pkgb}"

```

Is this possible?

--7QqxBzJDpXgsyCreRT8X
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>When writing a recipe&nbsp; I would like to get access to the meta data =
of the dependencies, specifically there PV so I can then pass this info int=
o this build.&nbsp;</p>
<p>&gt;&gt; pkga.bb</p>
<p>```</p>
<p>DEPENDS =3D "pkgb";</p>
<p>EXTRA_OECMAKE +=3D "-DPKGB_REV=3D${PV:pn-pkgb}"</p>
<p>```</p>
<p>Is this possible?</p>
<p>&nbsp;</p>
<p>&nbsp;</p>

--7QqxBzJDpXgsyCreRT8X--

