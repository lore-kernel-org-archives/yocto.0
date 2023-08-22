Return-Path: <crane2018@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 13FF6EE4993
	for <webhook@archiver.kernel.org>; Tue, 22 Aug 2023 15:33:59 +0000 (UTC)
Subject: Re: EXTRA_USERS_PARAMS doesn't work to generate password for root and add new users
To: yocto@lists.yoctoproject.org
From: "Crane" <crane2018@gmail.com>
X-Originating-Location: Port Hope, Ontario, CA (72.38.198.131)
X-Originating-Platform: Windows Chrome 116
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 22 Aug 2023 08:33:58 -0700
References: <19830.1692717401104034546@lists.yoctoproject.org>
In-Reply-To: <19830.1692717401104034546@lists.yoctoproject.org>
Message-ID: <25389.1692718438327967662@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ohigQ4ZTeQ110SmnGF3H"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Aug 2023 15:33:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60851

--ohigQ4ZTeQ110SmnGF3H
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Here is the variable value:
EXTRA_USERS_PARAMS=3D" usermod -p 'openssl passwd -6 root' root; useradd -p=
 'openssl passwd -6 2023' crane; "

Actually no need to add \ before $ symbol.=C2=A0 \ is already added as belo=
w:
EXTRA_USERS_PARAMS=3D" usermod -p '\$6\$9UMdfjsa9kYD4oQB\$a3jUptBObMgh8palv=
zovMriEp8X0d/7xHHOj7WdcBKXvhcUvOBOzFTAdl3.NDi.CGwMtpwfB3J6dvxRQN.iUq.' root=
; useradd -p '\$6\$IfrdWN4tMhCHSL6E\$NS3/r/qO3kSKNh0PVtqmrocLAxbdkUZu3cYg7c=
zkMy9Y42le02G92hgxRVvsFogjCufY4BRdjRdaW77K/kT170' crane; "

--ohigQ4ZTeQ110SmnGF3H
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Here is the variable value:<br />EXTRA_USERS_PARAMS=3D" <span style=3D"whit=
e-space: pre;"> </span>usermod -p 'openssl passwd -6 root' root; <span styl=
e=3D"white-space: pre;"> </span>useradd -p 'openssl passwd -6 2023' crane; =
"<br /><br />Actually no need to add \ before $ symbol.&nbsp; \ is already =
added as below:<br />
<div>EXTRA_USERS_PARAMS=3D" <span style=3D"white-space: pre;"> </span>userm=
od -p '\$6\$9UMdfjsa9kYD4oQB\$a3jUptBObMgh8palvzovMriEp8X0d/7xHHOj7WdcBKXvh=
cUvOBOzFTAdl3.NDi.CGwMtpwfB3J6dvxRQN.iUq.' root; <span style=3D"white-space=
: pre;"> </span>useradd -p '\$6\$IfrdWN4tMhCHSL6E\$NS3/r/qO3kSKNh0PVtqmrocL=
AxbdkUZu3cYg7czkMy9Y42le02G92hgxRVvsFogjCufY4BRdjRdaW77K/kT170' crane; "</d=
iv>
<div>&nbsp;</div>

--ohigQ4ZTeQ110SmnGF3H--

