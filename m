Return-Path: <gary@missionsecure.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B65CBC05027
	for <webhook@archiver.kernel.org>; Thu,  2 Feb 2023 15:15:26 +0000 (UTC)
Subject: chrony pkg-config backport fix #kirkstone
To: yocto@lists.yoctoproject.org
From: "Gary Huband" <gary@missionsecure.com>
X-Originating-Location: Charlottesville, Virginia, US (216.197.64.240)
X-Originating-Platform: Linux Firefox 109
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 02 Feb 2023 07:15:23 -0800
Message-ID: <T4br.1675350923784122575.80tS@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="6PGkftAdpmi4KvVd98PZ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Feb 2023 15:15:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59148

--6PGkftAdpmi4KvVd98PZ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

There is a bug in the chrony Kirkstone recipe that was fixed in Langdale bu=
t has not been fixed in Kirkstone:
https://lists.openembedded.org/g/openembedded-devel/message/99080?p=3D%2C%2=
C%2C20%2C0%2C0%2C0%3A%3Arecentpostdate%2Fsticky%2C%2Cchrony+pkg-config%2C20=
%2C2%2C0%2C94155994
This adds pkgconfig to the inherit line to allow configure to find pkg-conf=
ig.=C2=A0 Without this fix the recipe cannot build some features like NTS.

How to get this fix into Kirkstone?=C2=A0 Do I submit a patch?

--6PGkftAdpmi4KvVd98PZ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

There is a bug in the chrony Kirkstone recipe that was fixed in Langdale bu=
t has not been fixed in Kirkstone:<br /><a href=3D"https://lists.openembedd=
ed.org/g/openembedded-devel/message/99080?p=3D%2C%2C%2C20%2C0%2C0%2C0%3A%3A=
recentpostdate%2Fsticky%2C%2Cchrony+pkg-config%2C20%2C2%2C0%2C94155994" tar=
get=3D"_blank" rel=3D"noopener">https://lists.openembedded.org/g/openembedd=
ed-devel/message/99080?p=3D%2C%2C%2C20%2C0%2C0%2C0%3A%3Arecentpostdate%2Fst=
icky%2C%2Cchrony+pkg-config%2C20%2C2%2C0%2C94155994</a><br />This adds pkgc=
onfig to the inherit line to allow configure to find pkg-config.&nbsp; With=
out this fix the recipe cannot build some features like NTS.<br /><br />How=
 to get this fix into Kirkstone?&nbsp; Do I submit a patch?

--6PGkftAdpmi4KvVd98PZ--

