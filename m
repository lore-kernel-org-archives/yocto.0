Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6868EB4903
	for <webhook@archiver.kernel.org>; Thu, 12 Feb 2026 11:08:03 +0000 (UTC)
Subject: [meta-spdxscanner] Inherit of fossdriver-host causing circular buffer problem #yocto
To: yocto@lists.yoctoproject.org
From: "rti" <tiago.rodrigues4@pt.bosch.com>
X-Originating-Location: Stuttgart, Baden-Wurttemberg, DE (194.39.218.16)
X-Originating-Platform: Windows Firefox 140
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 12 Feb 2026 00:58:00 -0800
Message-ID: <pUsT.1770886680004787916.pEoo@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="la9aTGO0kbEZXvVyKDpo"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 12 Feb 2026 11:08:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66240

--la9aTGO0kbEZXvVyKDpo
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

In my project I added the meta-spdxscanner ( https://git.yoctoproject.org/m=
eta-spdxscanner ). I am using version sumo.

As it is stated in the README
1. Installed fossology with docker imagem
2. Installed fossdriver
3. In local.conf file added INHERIT +=3D "fossdriver-host"

When compiling I always get unbuildable tasks due to circular dependencies.
From a first analysis I see that this is caused because the fossdriver-host=
.bbclass has dependencies to native packages and the native packages are in=
heriting the task do_spdx().

I tried already several options without success. I would like to know if th=
ere is a clear indication on how to solve this problem?

I added to some native packages a %.bbappend with inherit + =3D"nopackages"=
 or do_spdx[noexec]=3D"1" without success. I imagine there is a clear guide=
line to avoid this issue without a bbappend to each native packages.

Appreciate your support.

--la9aTGO0kbEZXvVyKDpo
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello,</div>
<div>&nbsp;</div>
<div>In my project I added the meta-spdxscanner (<a href=3D"https://git.yoc=
toproject.org/meta-spdxscanner" target=3D"_blank" rel=3D"noopener">https://=
git.yoctoproject.org/meta-spdxscanner</a>). I am using version sumo.</div>
<div>&nbsp;</div>
<div>As it is stated in the README</div>
<div>1. Installed fossology with docker imagem</div>
<div>2. Installed fossdriver</div>
<div>3. In local.conf file added INHERIT +=3D "fossdriver-host"</div>
<div>&nbsp;</div>
<div>When compiling I always get unbuildable tasks due to circular dependen=
cies.</div>
<div>From a first analysis I see that this is caused because the fossdriver=
-host.bbclass has dependencies to native packages and the native packages a=
re inheriting the task do_spdx().</div>
<div>&nbsp;</div>
<div>I tried already several options without success. I would like to know =
if there is a clear indication on how to solve this problem?</div>
<div>&nbsp;</div>
<div>I added to some native packages a %.bbappend with inherit + =3D"nopack=
ages" or do_spdx[noexec]=3D"1" without success. I imagine there is a clear =
guideline to avoid this issue without a bbappend to each native packages.</=
div>
<div>&nbsp;</div>
<div>Appreciate your support.</div>
<div>&nbsp;</div>

--la9aTGO0kbEZXvVyKDpo--

