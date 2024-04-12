Return-Path: <linusnilsson@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E372C04FF8
	for <webhook@archiver.kernel.org>; Fri, 12 Apr 2024 06:07:51 +0000 (UTC)
Subject: Re: [yocto] Correct way for multiple recipes to install files in the same directory
To: "Peter Marko" <peter.marko@siemens.com>, yocto@lists.yoctoproject.org
From: linusnilsson@hotmail.com
X-Originating-Location: Bromma, Stockholm County, SE (212.181.123.98)
X-Originating-Platform: Windows Chrome 123
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 11 Apr 2024 23:07:47 -0700
References: <AS1PR10MB5697190D6580085C83A3A310FD052@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: <AS1PR10MB5697190D6580085C83A3A310FD052@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
Message-ID: <31389.1712902067429675400@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="NkQN6ZV12l38PWlVw0Ld"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 12 Apr 2024 06:07:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62924

--NkQN6ZV12l38PWlVw0Ld
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

>=20
> Obvious solution is to copy chmod command to your recipe.

Yes and I did that but that line alone didn't suffice. I also had to copy t=
he 'chown'-line but since the polkit user was created in another recipe it =
is not recognized in this recipe and so I have to somehow figure out a way =
to fix that.

--NkQN6ZV12l38PWlVw0Ld
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<blockquote>Obvious solution is to copy chmod command to your recipe.</bloc=
kquote>
Yes and I did that but that line alone didn't suffice. I also had to copy t=
he 'chown'-line but since the polkit user was created in another recipe it =
is not recognized in this recipe and so I have to somehow figure out a way =
to fix that.

--NkQN6ZV12l38PWlVw0Ld--

