Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D323C47071
	for <webhook@archiver.kernel.org>; Thu, 16 Nov 2023 07:41:16 +0000 (UTC)
Subject: Re: install: cannot create directory: File exists
To: yocto@lists.yoctoproject.org
From: "MOHAMMED HASSAN" <hassanchattarki@gmail.com>
X-Originating-Location: Hyderabad, Telangana, IN (183.82.1.74)
X-Originating-Platform: Linux Chrome 119
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 15 Nov 2023 23:41:14 -0800
References: <CAM6O0Zh_=A878ek3djmidg4RoQFJiLcGwfuiZ3rWNQo04M2Gkg@mail.gmail.com>
In-Reply-To: <CAM6O0Zh_=A878ek3djmidg4RoQFJiLcGwfuiZ3rWNQo04M2Gkg@mail.gmail.com>
Message-ID: <17414.1700120474960249975@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Yh4IC4LByENtyEkrcjd5"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 Nov 2023 07:41:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61708

--Yh4IC4LByENtyEkrcjd5
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

>=20
>=20
>=20
> man install:
>=20
> -d, --directory
> treat all arguments as directory names; create all components of
> the specified directories
>=20
> So you are trying to install all normal files (Edge/*) as directories (as
> you use -d). This then, as per error message message, will fail.
>=20
> Maybe you meant -D (to create previous dirs)? Or just had it copied by
> mistake.
>=20
>=20

Thanks, I found my error. I am able to build now.

Now the only issue remains is why my files cant be stored in the /home/root=
 directory?

If you can share some documentation or some solution then let me know.

Thanks

--Yh4IC4LByENtyEkrcjd5
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<blockquote>
<div dir=3D"ltr">
<div class=3D"gmail_quote">
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>man install:</div>
<div>&nbsp;</div>
<div>&nbsp; &nbsp; &nbsp;&nbsp; -d, --directory<br />&nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; treat all arguments as directory names; create a=
ll components of<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; the =
specified directories</div>
<div>&nbsp;</div>
<div>So you are trying to install all normal files (Edge/*) as directories =
(as you use -d). This then, as per error message message, will fail.</div>
<div>&nbsp;</div>
<div>Maybe you meant -D (to create previous dirs)? Or just had it copied by=
 mistake.</div>
<div>&nbsp;</div>
</div>
</div>
</blockquote>
Thanks, I found my error. I am able to build now.<br /><br />Now the only i=
ssue remains is why my files cant be stored in the /home/root directory?<br=
 /><br />If you can share some documentation or some solution then let me k=
now.<br /><br />Thanks&nbsp;

--Yh4IC4LByENtyEkrcjd5--

