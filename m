Return-Path: <tamtamis@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C55C61DA4
	for <webhook@archiver.kernel.org>; Fri, 24 Feb 2023 14:22:40 +0000 (UTC)
Subject: Re: Question about psuedo abort errors
To: yocto@lists.yoctoproject.org
From: "Tamis" <tamtamis@gmail.com>
X-Originating-Location: Vienna, AT (165.225.200.189)
X-Originating-Platform: Windows Chrome 110
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 24 Feb 2023 06:22:38 -0800
References: <11824e6af1ccaef8216da9f36885dae2878a92ab.camel@linuxfoundation.org>
In-Reply-To: <11824e6af1ccaef8216da9f36885dae2878a92ab.camel@linuxfoundation.org>
Message-ID: <20767.1677248558097551153@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="5zuJOVeWgoV5kYMHhOvX"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Feb 2023 14:22:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59297

--5zuJOVeWgoV5kYMHhOvX
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Richard

And thanks for the quick reply.

>=20
>=20
>=20
> I'm curious if you upgrade to the latest pseudo revision whether this
> helps at all. There was a fix that was partially related to issues like
> this.
>=20
> The error either means the file was deleted on disk without pseudo
> seeing it, then it was created again or that there is some kind of race
> in file creation confusing pseudo. The latest commits to pseudo try and
> fix the latter.
>=20
>=20
>=20

I see the pseudo SRCREV is different in kirkstone and master from dunfell b=
ranch one. I will check the one from kirkstone and even master and I will l=
et you know in any case.

Br,
Panagiotis

--5zuJOVeWgoV5kYMHhOvX
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hello Richard<br /><br />And thanks for the quick reply.</p>
<blockquote>
<p><span style=3D"white-space: pre-wrap;">I'm curious if you upgrade to the=
 latest pseudo revision whether this</span><br style=3D"white-space: pre-wr=
ap;" /><span style=3D"white-space: pre-wrap;">helps at all. There was a fix=
 that was partially related to issues like</span><br style=3D"white-space: =
pre-wrap;" /><span style=3D"white-space: pre-wrap;">this.</span><br style=
=3D"white-space: pre-wrap;" /><br style=3D"white-space: pre-wrap;" /><span =
style=3D"white-space: pre-wrap;">The error either means the file was delete=
d on disk without pseudo</span><br style=3D"white-space: pre-wrap;" /><span=
 style=3D"white-space: pre-wrap;">seeing it, then it was created again or t=
hat there is some kind of race</span><br style=3D"white-space: pre-wrap;" /=
><span style=3D"white-space: pre-wrap;">in file creation confusing pseudo. =
The latest commits to pseudo try and</span><br style=3D"white-space: pre-wr=
ap;" /><span style=3D"white-space: pre-wrap;">fix the latter.<br /></span><=
/p>
</blockquote>
<p>I see the pseudo SRCREV is different in kirkstone and master from dunfel=
l branch one. I will check the one from kirkstone and even master and I wil=
l let you know in any case.<br /><br />Br,<br />Panagiotis</p>

--5zuJOVeWgoV5kYMHhOvX--

