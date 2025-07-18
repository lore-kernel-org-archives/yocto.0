Return-Path: <joseph.maniaci@seagate.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12C3AC83F1A
	for <webhook@archiver.kernel.org>; Fri, 18 Jul 2025 15:16:44 +0000 (UTC)
Subject: Re: [yocto] Environmental variable present in do_compile() {}, bitbake recipe -e, but is missing from do_configure() {} #bitbake
To: "Gyorgy Sarvari" <skandigraun@gmail.com>, yocto@lists.yoctoproject.org
From: joseph.maniaci@seagate.com
X-Originating-Location: Minnesota, US (134.204.180.68)
X-Originating-Platform: Windows Firefox 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 18 Jul 2025 08:16:40 -0700
References: <d9a7a078-572b-4362-85c1-61a43dd8a89f@gmail.com>
In-Reply-To: <d9a7a078-572b-4362-85c1-61a43dd8a89f@gmail.com>
Message-ID: <27507.1752851800140508582@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="O170CBmCiYn6LRF6ugS4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 18 Jul 2025 15:16:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65682

--O170CBmCiYn6LRF6ugS4
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 18, 2025 at 01:43 AM, Gyorgy Sarvari wrote:

>=20
> It goes through the bitbake parser first, and by the time it is
> executed, it becomes 'export ABC=3D"AAAAAAAAAAAAAAAHHHHHHHHHHHHHHH"' - th=
e
> original ${ABC} is nowhere to be found, because it's a bitbake variable
> (just like SRC_URI, for example), not an env var, it was substituted
> with the literal value of ${ABC}. And before executing that export
> statement, the ABC env var doesn't exist in the build environment at all.

Man, considering the quantity of search results telling users to use BB_ENV=
_PASSTHROUGH_ADDITIONS to accomplish what I'm doing, that really feels like=
 something that should be highlighted in red, and bolded, in the documentat=
ion ( https://docs.yoctoproject.org/bitbake/bitbake-user-manual/bitbake-use=
r-manual-ref-variables.html#term-BB_ENV_PASSTHROUGH_ADDITIONS ). Not to men=
tion all of the CMAKE gotchas I've come across.

--O170CBmCiYn6LRF6ugS4
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>On Fri, Jul 18, 2025 at 01:43 AM, Gyorgy Sarvari wrote:</div>
<div>
<blockquote>It goes through the bitbake parser first, and by the time it is=
<br />executed, it becomes 'export ABC=3D"AAAAAAAAAAAAAAAHHHHHHHHHHHHHHH"' =
- the<br />original ${ABC} is nowhere to be found, because it's a bitbake v=
ariable<br />(just like SRC_URI, for example), not an env var, it was subst=
ituted<br />with the literal value of ${ABC}. And before executing that exp=
ort<br />statement, the ABC env var doesn't exist in the build environment =
at all.</blockquote>
</div>
<div>Man, considering the quantity of search results telling users to use B=
B_ENV_PASSTHROUGH_ADDITIONS to accomplish what I'm doing, that really feels=
 like something that should be highlighted in red, and bolded, in the <a hr=
ef=3D"https://docs.yoctoproject.org/bitbake/bitbake-user-manual/bitbake-use=
r-manual-ref-variables.html#term-BB_ENV_PASSTHROUGH_ADDITIONS" target=3D"_b=
lank" rel=3D"noopener">documentation</a>. Not to mention all of the CMAKE g=
otchas I've come across.</div>
<div>&nbsp;</div>
<div>&nbsp;</div>

--O170CBmCiYn6LRF6ugS4--

