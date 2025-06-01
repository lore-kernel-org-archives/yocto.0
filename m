Return-Path: <sergey.forum@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 133C9C54FB3
	for <webhook@archiver.kernel.org>; Sun,  1 Jun 2025 12:53:33 +0000 (UTC)
Subject: Re: [yocto] bitbake provided path does not contain path to git so fetch is stalled
To: "Sergey Kurdakov" <sergey.forum@gmail.com>, yocto@lists.yoctoproject.org
From: "Sergey Kurdakov" <sergey.forum@gmail.com>
X-Originating-Location: Moscow, RU (176.59.170.235)
X-Originating-Platform: Linux Chrome 137
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 01 Jun 2025 05:53:31 -0700
References: <a1oz.1748776188815356936.LR5v@lists.yoctoproject.org>
In-Reply-To: <a1oz.1748776188815356936.LR5v@lists.yoctoproject.org>
Message-ID: <974.1748782411494543023@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="WD2nMWGXr4NZDe7wooxJ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 01 Jun 2025 12:53:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65442

--WD2nMWGXr4NZDe7wooxJ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

to fix described problem of stalled fetch=C2=A0 with bitbake on Ubuntu 24.0=
2 I made a dirty fix in code

git.py

- ud.basecmd =3D d.getVar("FETCHCMD_git") or "git -c gc.autoDetach=3Dfalse =
-c core.pager=3Dcat -c safe.bareRepository=3Dall"

+ ud.basecmd =3D d.getVar("FETCHCMD_git") or "/usr/bin/git -c gc.autoDetach=
=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Dall"

so I just invoke git with full path, and bitbake now fetches sources, so in=
deed, the problem is about missing path in "export PATH=3D" when bitbake wo=
rks on image

Regards

Sergey

--WD2nMWGXr4NZDe7wooxJ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello,</div>
<div>&nbsp;</div>
<div>to fix described problem of stalled fetch&nbsp; with bitbake on Ubuntu=
 24.02 I made a dirty fix in code</div>
<div>&nbsp;</div>
<div>git.py</div>
<div>&nbsp;</div>
<div>
<p style=3D"-qt-block-indent: 0; text-indent: 0px; -qt-user-state: 3; margi=
n: 0px;">- ud.basecmd =3D d.getVar("FETCHCMD_git") or "git -c gc.autoDetach=
=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Dall"</p>
<p style=3D"-qt-block-indent: 0; text-indent: 0px; -qt-user-state: 3; margi=
n: 0px;">+ ud.basecmd =3D d.getVar("FETCHCMD_git") or "/usr/bin/git -c gc.a=
utoDetach=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Dall"</p>
<p style=3D"-qt-block-indent: 0; text-indent: 0px; -qt-user-state: 3; margi=
n: 0px;">&nbsp;</p>
<p style=3D"-qt-block-indent: 0; text-indent: 0px; -qt-user-state: 3; margi=
n: 0px;">so I just invoke git with full path, and bitbake now fetches sourc=
es, so indeed, the problem is about missing path in "export PATH=3D" when b=
itbake works on image</p>
<p style=3D"-qt-block-indent: 0; text-indent: 0px; -qt-user-state: 3; margi=
n: 0px;">&nbsp;</p>
<p style=3D"-qt-block-indent: 0; text-indent: 0px; -qt-user-state: 3; margi=
n: 0px;">Regards</p>
<p style=3D"-qt-block-indent: 0; text-indent: 0px; -qt-user-state: 3; margi=
n: 0px;">Sergey</p>
</div>

--WD2nMWGXr4NZDe7wooxJ--

