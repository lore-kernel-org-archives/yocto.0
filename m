Return-Path: <jguittet.opensource@witekio.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04DD4C3ABB2
	for <webhook@archiver.kernel.org>; Mon, 16 Sep 2024 08:22:13 +0000 (UTC)
Subject: systemd-container and tar dependency
To: yocto@lists.yoctoproject.org
From: "Joel GUITTET" <jguittet.opensource@witekio.com>
X-Originating-Location: Brest, Brittany, FR (78.120.130.81)
X-Originating-Platform: Linux Chrome 127
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 16 Sep 2024 01:22:03 -0700
Message-ID: <tWmZ.1726474923013896859.lt1W@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="7zA6eRA5vNMM84EXxKlx"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 16 Sep 2024 08:22:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63839

--7zA6eRA5vNMM84EXxKlx
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello

The systemd recipe indicates systemd-container has a dependency to "tar" du=
e to machinectl import-tar command using "--numeric-owner" option of tar.
See https://git.openembedded.org/openembedded-core/tree/meta/recipes-core/s=
ystemd/systemd_256.5.bb?h=3Dmaster#n576

However, busybox added --numeric-owner option to tar since a long time now,=
 see https://git.busybox.net/busybox/commit/archival/tar.c?h=3D1_36_stable&=
id=3D8b814b4a349e2262c0ad25793b05206a14651ebb ( https://git.busybox.net/bus=
ybox/commit/archival/tar.c?h=3D1_36_stable&id=3D8b814b4a349e2262c0ad25793b0=
5206a14651ebb ) and https://git.busybox.net/busybox/commit/archival/tar.c?h=
=3D1_36_stable&id=3Dd57d62686dac254e83fbc18f851c773ec16013d8

So why not removing this tar dependency that is RRECOMMENDS by the systemd =
recipe ? So that we can use the busybox version instead.

Thanks for any feedback on the reason for this!

Joel

PS: the positive impact is: the latest GPLv2 tar version is v1.17, which ha=
s several CVEs actually so I would like to avoid integrating tar, and use b=
usybox alternative instead. I don't use the import-tar command of machienct=
l, so no risk for me, but it seems it's possible to improve in Yocto more g=
enerally.

--7zA6eRA5vNMM84EXxKlx
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello</div>
<div>&nbsp;</div>
<div>The systemd recipe indicates systemd-container has a dependency to "ta=
r" due to machinectl import-tar command using "--numeric-owner" option of t=
ar.</div>
<div>See <a href=3D"https://git.openembedded.org/openembedded-core/tree/met=
a/recipes-core/systemd/systemd_256.5.bb?h=3Dmaster#n576" target=3D"_blank" =
rel=3D"noopener">https://git.openembedded.org/openembedded-core/tree/meta/r=
ecipes-core/systemd/systemd_256.5.bb?h=3Dmaster#n576</a></div>
<div>&nbsp;</div>
<div>However, busybox added --numeric-owner option to tar since a long time=
 now, see <a href=3D"https://git.busybox.net/busybox/commit/archival/tar.c?=
h=3D1_36_stable&amp;id=3D8b814b4a349e2262c0ad25793b05206a14651ebb" target=
=3D"_blank" rel=3D"noopener">https://git.busybox.net/busybox/commit/archiva=
l/tar.c?h=3D1_36_stable&amp;id=3D8b814b4a349e2262c0ad25793b05206a14651ebb <=
/a>and <a href=3D"https://git.busybox.net/busybox/commit/archival/tar.c?h=
=3D1_36_stable&amp;id=3Dd57d62686dac254e83fbc18f851c773ec16013d8" target=3D=
"_blank" rel=3D"noopener">https://git.busybox.net/busybox/commit/archival/t=
ar.c?h=3D1_36_stable&amp;id=3Dd57d62686dac254e83fbc18f851c773ec16013d8</a><=
/div>
<div>&nbsp;</div>
<div>So why not removing this tar dependency that is RRECOMMENDS by the sys=
temd recipe ? So that we can use the busybox version instead.</div>
<div>&nbsp;</div>
<div>Thanks for any feedback on the reason for this!</div>
<div>&nbsp;</div>
<div>Joel</div>
<div>&nbsp;</div>
<div>PS: the positive impact is: the latest GPLv2 tar version is v1.17, whi=
ch has several CVEs actually so I would like to avoid integrating tar, and =
use busybox alternative instead. I don't use the import-tar command of mach=
ienctl, so no risk for me, but it seems it's possible to improve in Yocto m=
ore generally.</div>

--7zA6eRA5vNMM84EXxKlx--

