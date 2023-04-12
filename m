Return-Path: <bgctkd@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3FBC7619A
	for <webhook@archiver.kernel.org>; Wed, 12 Apr 2023 17:39:39 +0000 (UTC)
Subject: libcrypto.so.1.0.0 and libssl.so.1.0.0 - any easy way to include these into a kirkstone build along with the newer versions? #kirkstone  #libcrypto #libssl
To: yocto@lists.yoctoproject.org
From: bgctkd@gmail.com
X-Originating-Location: Beaverton, Oregon, US (136.226.60.100)
X-Originating-Platform: Windows Chrome 111
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 12 Apr 2023 10:39:34 -0700
Message-ID: <xtQX.1681321174431796007.XEeA@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="8C1GZFDgtbSqH3ORNJZI"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Apr 2023 17:39:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59696

--8C1GZFDgtbSqH3ORNJZI
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Using poky/kirkstone as a base, I am sideloading an app that requires libcr=
ypto.so.1.0.0 and libssl.so.1.0.0 which are not present by default. I have =
seen suggestions to include various "10" packages such as libcrypto10 etc b=
ut they don't seem to be present or at least not in poky /meta-openembedded=
. Is there a (straightforward) way to get yocto to include multiple version=
s of libssl.so /libcrypto.so (=C2=A0=C2=A0(via IMAGE_INSTALL:append etc..).=
short of manually copying them in?

Thanks,
Bruce

--8C1GZFDgtbSqH3ORNJZI
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Using poky/kirkstone as a base, I am sideloading an app that requires libcr=
ypto.so.1.0.0 and libssl.so.1.0.0 which are not present by default. I have =
seen suggestions to include various "10" packages such as libcrypto10 etc b=
ut they don't seem to be present or at least not in poky /meta-openembedded=
. Is there a (straightforward) way to get yocto to include multiple version=
s of libssl.so /libcrypto.so (&nbsp;&nbsp;(via IMAGE_INSTALL:append etc..).=
short of manually copying them in?<br /><br />Thanks,<br />Bruce

--8C1GZFDgtbSqH3ORNJZI--

