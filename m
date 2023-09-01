Return-Path: <crane2018@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F5B3CA0FE1
	for <webhook@archiver.kernel.org>; Fri,  1 Sep 2023 14:46:19 +0000 (UTC)
Subject: Re: EXTRA_USERS_PARAMS doesn't work to generate password for root and add new users
To: yocto@lists.yoctoproject.org
From: "Crane" <crane2018@gmail.com>
X-Originating-Location: Hamilton, Ontario, CA (72.138.19.58)
X-Originating-Platform: Windows Chrome 116
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 01 Sep 2023 07:46:14 -0700
References: <095bfe92-ee5f-17c0-ea8e-dadf51e81d1a@koansoftware.com>
In-Reply-To: <095bfe92-ee5f-17c0-ea8e-dadf51e81d1a@koansoftware.com>
Message-ID: <9663.1693579574675872813@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="647xqojnir4ypR1XImdJ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 01 Sep 2023 14:46:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60924

--647xqojnir4ypR1XImdJ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 29, 2023 at 03:08 AM, Mauro wrote:

>=20
> extrauser class is designed to add or modify users at image level, then i=
t
> must be used in image recipes or in a .conf file. [1]
>=20
> useradd class is designed to create users at package level, then it must
> be used in normal (not image) recipes only. [2]
>=20
> [1] https://docs.yoctoproject.org/ref-manual/classes.html#extrausers
> [2] https://docs.yoctoproject.org/ref-manual/classes.html#useradd

Thanks Manro for sharing these links. Now I see a big pool of classes that =
can be used.

Eventually I found that why it doesn't work for me to add EXTRA_USER_PARAMS=
 in image recipe is that I used this line:=C2=A0INHERIT +=3D "extrausers"
instead of this line:=C2=A0inherit extrausers
to use the class extrausers.

But at the beginning there was an error when using "inherit extrauser". Now=
 it works fine. I couldn't figure out why. But anyway it works this way now=
.

Regards,
Crane

--647xqojnir4ypR1XImdJ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 29, 2023 at 03:08 AM, Mauro wrote:<br />
<blockquote>extrauser class is designed to add or modify users at image lev=
el, then it must be used in image recipes or in a .conf file. [1]<br /><br =
/>useradd class is designed to create users at package level, then it must =
be used in normal (not image) recipes only. [2]<br /><br />[1] <a href=3D"h=
ttps://docs.yoctoproject.org/ref-manual/classes.html#extrausers" target=3D"=
_blank" rel=3D"noopener">https://docs.yoctoproject.org/ref-manual/classes.h=
tml#extrausers</a><br />[2] <a href=3D"https://docs.yoctoproject.org/ref-ma=
nual/classes.html#useradd" target=3D"_blank" rel=3D"noopener">https://docs.=
yoctoproject.org/ref-manual/classes.html#useradd</a></blockquote>
Thanks Manro for sharing these links. Now I see a big pool of classes that =
can be used.<br /><br />Eventually I found that why it doesn't work for me =
to add EXTRA_USER_PARAMS in image recipe is that I used this line:&nbsp;INH=
ERIT +=3D "extrausers" <br />instead of this line:&nbsp;inherit extrausers<=
br />to use the class extrausers.<br /><br />But at the beginning there was=
 an error when using "inherit extrauser". Now it works fine. I couldn't fig=
ure out why. But anyway it works this way now.<br /><br />Regards,<br />Cra=
ne<br />

--647xqojnir4ypR1XImdJ--

