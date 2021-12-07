Return-Path: <tomasz.zyjewski@3mdeb.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 591A9C433F5
	for <webhook@archiver.kernel.org>; Tue,  7 Dec 2021 07:10:05 +0000 (UTC)
Subject: Re: How to log inside a recipe #yocto
To: yocto@lists.yoctoproject.org
From: "tomzy" <tomasz.zyjewski@3mdeb.com>
X-Originating-Location: Gdansk, Pomerania, PL (85.222.117.222)
X-Originating-Platform: Linux Firefox 94
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 06 Dec 2021 23:10:04 -0800
References: <UC6s.1638860677590654571.G6Wx@lists.yoctoproject.org>
In-Reply-To: <UC6s.1638860677590654571.G6Wx@lists.yoctoproject.org>
Message-ID: <9583.1638861004282973137@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Jvka0WXMqBaaJHOu6gyZ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Dec 2021 07:10:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55494

--Jvka0WXMqBaaJHOu6gyZ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi

To get a value of some variable added in recipe it is best to use bitbake
with `-e` flag which should print the whole environment, then one can just
use `grep` to search for given variable. Let say we have recipe `example.bb=
`
and need to know the value of `A_VAR` - with bitbake you can find it with

`bitbake -e example | grep ^A_VAR`

Regards
--
Tomasz =C5=BByjewski
Embedded Systems Engineer
GPG: 5C495EA3EBEECA59
https://3mdeb.com | @3mdeb_com

--Jvka0WXMqBaaJHOu6gyZ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi</p>
<p>To get a value of some variable added in recipe it is best to use bitbak=
e<br />with `-e` flag which should print the whole environment, then one ca=
n just<br />use `grep` to search for given variable. Let say we have recipe=
 `example.bb`<br />and need to know the value of `A_VAR` - with bitbake you=
 can find it with<br /><br />`bitbake -e example | grep ^A_VAR`<br /><br />=
Regards<br />--<br />Tomasz =C5=BByjewski <br />Embedded Systems Engineer <=
br />GPG: 5C495EA3EBEECA59 <br /><a class=3D"moz-txt-link-freetext" href=3D=
"https://3mdeb.com">https://3mdeb.com</a> | @3mdeb_com</p>

--Jvka0WXMqBaaJHOu6gyZ--

