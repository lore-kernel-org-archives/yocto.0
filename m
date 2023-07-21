Return-Path: <ohnatiuk@cisco.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60501EB64DC
	for <webhook@archiver.kernel.org>; Fri, 21 Jul 2023 17:12:01 +0000 (UTC)
Subject: Re: File magic/sdk relocation
To: yocto@lists.yoctoproject.org
From: "Oleksandr Hnatiuk" <ohnatiuk@cisco.com>
X-Originating-Location: Bagshot, England, GB (64.103.40.20)
X-Originating-Platform: Windows Firefox 115
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 21 Jul 2023 10:11:51 -0700
References: <CANNYZj9-AOrddDK2VRrbrrDnWhgDOJ2tPbJRXO1bWrKpoOfzzg@mail.gmail.com>
In-Reply-To: <CANNYZj9-AOrddDK2VRrbrrDnWhgDOJ2tPbJRXO1bWrKpoOfzzg@mail.gmail.com>
Message-ID: <19295.1689959511730394329@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Yl0A2XYlYw982Z8XFBe5"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Jul 2023 17:12:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60630

--Yl0A2XYlYw982Z8XFBe5
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 19, 2023 at 08:27 PM, Alexander Kanavin wrote:

>=20
> On closer look, it should even say:
> export MAGIC=3D"\$OECORE_NATIVE_SYSROOT/usr/share/misc/magic.mgc"

Hi Alexander,

We have submitted the patch[1] which fixes the build for our case but doesn=
't change the contents of file.sh which is a separate issue.
You suggested changing MAGIC to "\$OECORE_NATIVE_SYSROOT/usr/share/misc/mag=
ic.mgc".
We can also get the same result with "${datadir}/misc/magic.mgc" which is w=
hat was used for create_cmdline_wrapper in this recipe.
Which one is preferred?

[1] see "[PATCH] file: return wrapper to fix builds when file is in buildto=
ols-tarball" in openembedded-core

Regards,
Oleksandr

--Yl0A2XYlYw982Z8XFBe5
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 19, 2023 at 08:27 PM, Alexander Kanavin wrote:<br />
<blockquote>On closer look, it should even say:<br />export MAGIC=3D"\$OECO=
RE_NATIVE_SYSROOT/usr/share/misc/magic.mgc"</blockquote>
Hi Alexander,<br /><br />We have submitted the patch[1] which fixes the bui=
ld for our case but doesn't change the contents of file.sh which is a separ=
ate issue.<br />You suggested changing MAGIC to "\$OECORE_NATIVE_SYSROOT/us=
r/share/misc/magic.mgc".<br />We can also get the same result with "${datad=
ir}/misc/magic.mgc" which is what was used for create_cmdline_wrapper in th=
is recipe.<br />Which one is preferred?<br /><br />[1] see "[PATCH] file: r=
eturn wrapper to fix builds when file is in buildtools-tarball" in openembe=
dded-core<br /><br />Regards,<br />Oleksandr

--Yl0A2XYlYw982Z8XFBe5--

