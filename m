Return-Path: <anton.antonov@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7ECEFC761A6
	for <webhook@archiver.kernel.org>; Mon,  3 Apr 2023 10:53:24 +0000 (UTC)
Subject: Re: [meta-security][PATCH v3] parsec-service: update from 1.1.0 to 1.2.0-rc1
To: yocto@lists.yoctoproject.org
From: "Anton Antonov" <anton.antonov@arm.com>
X-Originating-Location: Cambridge, England, GB (217.140.99.251)
X-Originating-Platform: Mac Firefox 111
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 03 Apr 2023 03:53:19 -0700
References: <deecd5c0-3ca1-b40b-83f7-6de4fa657ba9@gmail.com>
In-Reply-To: <deecd5c0-3ca1-b40b-83f7-6de4fa657ba9@gmail.com>
Message-ID: <24425.1680519199347121026@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="kKC2H1xmviVlUaCqb2c2"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Apr 2023 10:53:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59596

--kKC2H1xmviVlUaCqb2c2
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Apr 1, 2023 at 05:50 AM, Armin Kuster wrote:

>=20
>=20
>> parsec-service 1.1.0 fails to compile with latest tpm2-tss update
>> in meta-security:
>=20
> Thanks for the update.
> This patch is currently in a test build.
> Just a note. If this version ends up being the official one being
> supported in the upcoming 4.2 release, when parsec-service 1.2.0 official
> drops and is added, we will need to us "EPOCH" as I believe "-rc1" being
> dropped will signal the version going backwards.

I think Parsec would fail to be built with this patch after these patches i=
n OE-core:

https://git.yoctoproject.org/poky/commit/?id=3D2b12c58724d250d1faf24072128e=
2de75dfe2c15

https://git.yoctoproject.org/poky/commit/?id=3D4d9886e1435dba3785973cc92086=
5f8ab67e644d

Updates for cargo-update-recipe-crates are under review and the 1.2.0 relea=
se recipe would solve the issue.

Cheers,

Anton

--kKC2H1xmviVlUaCqb2c2
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Apr 1, 2023 at 05:50 AM, Armin Kuster wrote:<br />
<blockquote>
<blockquote>parsec-service 1.1.0 fails to compile with latest tpm2-tss upda=
te<br />in meta-security:</blockquote>
Thanks for the update.<br />This patch is currently in a test build.<br />J=
ust a note. If this version ends up being the official one being supported =
in the upcoming 4.2 release, when parsec-service 1.2.0 official drops and i=
s added, we will need to us "EPOCH" as I believe "-rc1" being dropped will =
signal the version going backwards.</blockquote>
<p>I think Parsec would fail to be built with this patch after these patche=
s in OE-core:</p>
<p><a href=3D"https://git.yoctoproject.org/poky/commit/?id=3D2b12c58724d250=
d1faf24072128e2de75dfe2c15" target=3D"_blank" rel=3D"noopener">https://git.=
yoctoproject.org/poky/commit/?id=3D2b12c58724d250d1faf24072128e2de75dfe2c15=
</a></p>
<p><a href=3D"https://git.yoctoproject.org/poky/commit/?id=3D4d9886e1435dba=
3785973cc920865f8ab67e644d" target=3D"_blank" rel=3D"noopener">https://git.=
yoctoproject.org/poky/commit/?id=3D4d9886e1435dba3785973cc920865f8ab67e644d=
</a></p>
<p>Updates for cargo-update-recipe-crates are under review and the 1.2.0 re=
lease recipe would solve the issue.</p>
<p>&nbsp;</p>
<p>Cheers,</p>
<p>Anton</p>
<p>&nbsp;</p>

--kKC2H1xmviVlUaCqb2c2--

