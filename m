Return-Path: <crane2018@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3BE6EEE4993
	for <webhook@archiver.kernel.org>; Tue, 22 Aug 2023 16:00:59 +0000 (UTC)
Subject: Re: EXTRA_USERS_PARAMS doesn't work to generate password for root and add new users
To: yocto@lists.yoctoproject.org
From: "Crane" <crane2018@gmail.com>
X-Originating-Location: Port Hope, Ontario, CA (72.38.198.131)
X-Originating-Platform: Windows Chrome 116
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 22 Aug 2023 09:00:54 -0700
References: <5b90942a-3d7d-d3db-42e6-5779d2fb2839@koansoftware.com>
In-Reply-To: <5b90942a-3d7d-d3db-42e6-5779d2fb2839@koansoftware.com>
Message-ID: <25389.1692720054983292974@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="sq2wB3OAcG8GX5VOy9k1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Aug 2023 16:00:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60853

--sq2wB3OAcG8GX5VOy9k1
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 22, 2023 at 11:36 AM, Mauro wrote:

>=20
> Try with this:
>=20
> EXTRA_USERS_PARAMS=3D" usermod -p '$(openssl passwd -6 root)' root; usera=
dd
> -p '$(openssl passwd -6 2023)' crane; "

Not working.
Here is the value of the variable becoming:
EXTRA_USERS_PARAMS=3D" usermod -p '\$(openssl passwd -6 root)' root; userad=
d -p '\$(openssl passwd -6 2023)' crane; "
One \ is added before $ symbol.

--sq2wB3OAcG8GX5VOy9k1
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 22, 2023 at 11:36 AM, Mauro wrote:<br />
<blockquote>Try with this:<br /><br />EXTRA_USERS_PARAMS=3D" usermod -p '$(=
openssl passwd -6 root)' root; useradd -p '$(openssl passwd -6 2023)' crane=
; "</blockquote>
Not working.&nbsp;<br />Here is the value of the variable becoming:<br />
<div>EXTRA_USERS_PARAMS=3D" <span style=3D"white-space: pre;"> </span>userm=
od -p '\$(openssl passwd -6 root)' root; <span style=3D"white-space: pre;">=
 </span>useradd -p '\$(openssl passwd -6 2023)' crane; "<br />One \ is adde=
d before $ symbol.</div>
<div>&nbsp;</div>

--sq2wB3OAcG8GX5VOy9k1--

