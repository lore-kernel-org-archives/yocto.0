Return-Path: <crane2018@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 554FFEE49A0
	for <webhook@archiver.kernel.org>; Tue, 22 Aug 2023 01:58:46 +0000 (UTC)
Subject: EXTRA_USERS_PARAMS doesn't work to generate password for root and add new users
To: yocto@lists.yoctoproject.org
From: "Crane" <crane2018@gmail.com>
X-Originating-Location: Mississauga, Ontario, CA (135.0.213.201)
X-Originating-Platform: Windows Chrome 115
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 21 Aug 2023 18:58:44 -0700
Message-ID: <LrQL.1692669524450391340.bx32@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="5qOAddxdysjiHxX1tIR3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Aug 2023 01:58:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60846

--5qOAddxdysjiHxX1tIR3
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I am trying to generate a password for root and add a new user. Here is the=
 code in the image recipe:

IMAGE_FEATURES:remove =3D "debug-tweaks"
INHERIT +=3D "extrausers"
EXTRA_USERS_PARAMS +=3D "usermod -P root root; useradd -P 2023 crane"

When using "inherit extrausers", there is an error of "usermod command did =
not succeed."

When checking the parameter, the result is:
EXTRA_USERS_PARAMS=3D" usermod -P root root; useradd -P 2023 crane; "

The image does requires a password for root, but doesn't generate anything =
in /etc/shadow and doesn't add new user in /etc/shadow as well.

I am wondering what might be missing. Can anyone give me any clue?

Thanks!
Crane

--5qOAddxdysjiHxX1tIR3
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />I am trying to generate a password for root and add a new=
 user. Here is the code in the image recipe:<br /><br />IMAGE_FEATURES:remo=
ve =3D "debug-tweaks"<br />INHERIT +=3D "extrausers" <br />EXTRA_USERS_PARA=
MS +=3D "usermod -P root root; useradd -P 2023 crane"<br /><br />When using=
 "inherit extrausers", there is an error of "usermod command did not succee=
d."<br /><br />When checking the parameter, the result is:<br />
<div>EXTRA_USERS_PARAMS=3D" <span style=3D"white-space: pre;"> </span>userm=
od -P root root; <span style=3D"white-space: pre;"> </span>useradd -P 2023 =
crane; "</div>
<div><br />The image does requires a password for root, but doesn't generat=
e anything in /etc/shadow and doesn't add new user in /etc/shadow as well.<=
br /><br />I am wondering what might be missing. Can anyone give me any clu=
e?&nbsp;<br /><br />Thanks!<br />Crane<br /><br /></div>

--5qOAddxdysjiHxX1tIR3--

