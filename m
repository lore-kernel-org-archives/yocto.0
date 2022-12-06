Return-Path: <hrsourabh011@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54D71C352A1
	for <webhook@archiver.kernel.org>; Tue,  6 Dec 2022 06:42:10 +0000 (UTC)
Subject: Re: How to maintain meta layer with different versions of recipes?
To: yocto@lists.yoctoproject.org
From: "Sourabh Hegde" <hrsourabh011@gmail.com>
X-Originating-Location: Mysore, Karnataka, IN (150.129.88.138)
X-Originating-Platform: Windows Chrome 107
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 05 Dec 2022 22:42:03 -0800
References: <CAMKF1sokC=LNUhDyCsgVZ=aaGBGVQiUUU+dO4x85BNZVGKuubg@mail.gmail.com>
In-Reply-To: <CAMKF1sokC=LNUhDyCsgVZ=aaGBGVQiUUU+dO4x85BNZVGKuubg@mail.gmail.com>
Message-ID: <8343.1670308923532231609@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="cm5nWMrLcRElqnieOErd"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 06 Dec 2022 06:42:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58732

--cm5nWMrLcRElqnieOErd
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Khem Raj,

Thank you for the response.
>=20
> Second, way would be to have test.service copies installed under
> files/<customer-override>/ directory next to recipe
> and then define customer distro specific overrides

This seems to be a better solution for my use case. But, I didn't understan=
d it completely. Could you please provide an example or any link to documen=
tation? Is it also needed to create a custom distribution? This layer will =
be used by different customers in bblayers.conf

--cm5nWMrLcRElqnieOErd
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Khem Raj,<br /><br />Thank you for the response.
<blockquote><span style=3D"white-space: pre-wrap;">Second, way would be to =
have test.service copies installed under</span><br style=3D"white-space: pr=
e-wrap;" /><span style=3D"white-space: pre-wrap;">files/&lt;customer-overri=
de&gt;/ directory next to recipe</span><br style=3D"white-space: pre-wrap;"=
 /><span style=3D"white-space: pre-wrap;">and then define customer distro s=
pecific overrides</span></blockquote>
This seems to be a better solution for my use case. But, I didn't understan=
d it completely. Could you please provide an example or any link to documen=
tation? Is it also needed to create a custom distribution? This layer will =
be used by different customers in bblayers.conf

--cm5nWMrLcRElqnieOErd--

