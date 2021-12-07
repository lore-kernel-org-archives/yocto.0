Return-Path: <tomasz.zyjewski@3mdeb.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE72C433F5
	for <webhook@archiver.kernel.org>; Tue,  7 Dec 2021 08:49:58 +0000 (UTC)
Subject: Re: How to log inside a recipe #yocto
To: yocto@lists.yoctoproject.org
From: "tomzy" <tomasz.zyjewski@3mdeb.com>
X-Originating-Location: Gdansk, Pomerania, PL (85.222.117.222)
X-Originating-Platform: Linux Firefox 94
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 07 Dec 2021 00:49:57 -0800
References: <21846.1638863595090094460@lists.yoctoproject.org>
In-Reply-To: <21846.1638863595090094460@lists.yoctoproject.org>
Message-ID: <5435.1638866997967225535@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="3dDFvjPlnQF7M0v4uIlV"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Dec 2021 08:49:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55497

--3dDFvjPlnQF7M0v4uIlV
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

This is not something I do a lot but from what I know, you should be able
to use `bbnote` expresions etc inside the functions like `do_install` or
`do_compile` only if you inherit the `logging` bbclass
https://git.yoctoproject.org/poky/tree/meta/classes/logging.bbclass within
your recipes.

Regards
--
Tomasz =C5=BByjewski
Embedded Systems Engineer
GPG: 5C495EA3EBEECA59
https://3mdeb.com | @3mdeb_com

--3dDFvjPlnQF7M0v4uIlV
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>This is not something I do a lot but from what I know, you should be abl=
e<br />to use `bbnote` expresions etc inside the functions like `do_install=
` or<br />`do_compile` only if you inherit the `logging` bbclass<br /><a hr=
ef=3D"https://git.yoctoproject.org/poky/tree/meta/classes/logging.bbclass" =
target=3D"_blank" rel=3D"noopener">https://git.yoctoproject.org/poky/tree/m=
eta/classes/logging.bbclass</a> within<br />your recipes.<br /><br />Regard=
s<br />--<br />Tomasz =C5=BByjewski <br />Embedded Systems Engineer <br />G=
PG: 5C495EA3EBEECA59 <br /><a class=3D"moz-txt-link-freetext" href=3D"https=
://3mdeb.com" target=3D"_blank" rel=3D"nofollow noopener">https://3mdeb.com=
</a> | @3mdeb_com</p>

--3dDFvjPlnQF7M0v4uIlV--

