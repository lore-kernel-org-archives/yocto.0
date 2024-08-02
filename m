Return-Path: <bartiszosti@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9756C3DA4A
	for <webhook@archiver.kernel.org>; Fri,  2 Aug 2024 13:11:43 +0000 (UTC)
Subject: Use the plymouth instead of the psplash #bitbake #raspberrypi #scarthgap #systemd #yocto
To: yocto@lists.yoctoproject.org
From: bartiszosti@gmail.com
X-Originating-Location: Gorzyce, Lesser Poland, PL (109.196.245.39)
X-Originating-Platform: Linux Firefox 115
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 02 Aug 2024 06:11:39 -0700
Message-ID: <6fqG.1722604299137529258.5jxc@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="bfaPYL4J7qssVucWaPY6"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 02 Aug 2024 13:11:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63644

--bfaPYL4J7qssVucWaPY6
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,
I'd like to replace the psplash, which is default and works with the plymou=
th.
To do so I added to local.conf these lines:
PREFERRED_PROVIDER_virtual/ psplash =3D " plymouth "
SPLASH =3D " plymouth "
IMAGE_INSTALL:append =3D " dracut plymouth"
but it doesn't work. I have added splash as the image feature as well. As I=
 wrote before psplash works.
Did I miss something?

--bfaPYL4J7qssVucWaPY6
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello,<br />I'd like to replace the psplash, which is default and work=
s with the plymouth.<br />To do so I added to local.conf these lines:<br />
<div style=3D"background-color: #1e1f22; color: #bcbec4;">
<pre style=3D"font-family: 'JetBrains Mono',monospace; font-size: 9.8pt;">P=
REFERRED_PROVIDER_virtual/<span style=3D"color: #cf8e6d;">psplash </span>=
=3D "<span style=3D"color: #6aab73;">plymouth</span>"<br /><span style=3D"c=
olor: #cf8e6d;">SPLASH </span>=3D "<span style=3D"color: #6aab73;">plymouth=
</span>"<br />IMAGE_INSTALL:append =3D " dracut plymouth"</pre>
</div>
but it doesn't work. I have added splash as the image feature as well. As I=
 wrote before psplash works.<br />Did I miss something?</div>

--bfaPYL4J7qssVucWaPY6--

