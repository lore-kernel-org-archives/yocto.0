Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 35D08C07548
	for <webhook@archiver.kernel.org>; Wed, 15 Nov 2023 07:46:58 +0000 (UTC)
Subject: Re: Unable to run arm 64 binary on arm64 machine
To: yocto@lists.yoctoproject.org
From: "MOHAMMED HASSAN" <hassanchattarki@gmail.com>
X-Originating-Location: Hyderabad, Telangana, IN (183.82.1.74)
X-Originating-Platform: Linux Chrome 119
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 14 Nov 2023 23:46:54 -0800
References: <CAMKF1soKGqit8-x155PVPNPAg2j8A__EH30un==BXUtQoT=M+g@mail.gmail.com>
In-Reply-To: <CAMKF1soKGqit8-x155PVPNPAg2j8A__EH30un==BXUtQoT=M+g@mail.gmail.com>
Message-ID: <2967.1700034414866887421@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="8KkQNUPdEQ9MXm3zL98n"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Nov 2023 07:46:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61690

--8KkQNUPdEQ9MXm3zL98n
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 14, 2023 at 11:40 PM, Khem Raj wrote:

>=20
> it seems you have=C2=A0a mixed mode image where kernel is 64bit but users=
pace
> is 32bit, so you have to compile your app to be 32bit as well.
> otherwise you need to include 64bit runtime as well to support 64bit apps=
.
>=20
>=20

Unfortunately I don't have much clarity on how to achieve this. Can you sug=
gest what i should do.
Thanks

--8KkQNUPdEQ9MXm3zL98n
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 14, 2023 at 11:40 PM, Khem Raj wrote:<br />
<blockquote>
<div dir=3D"ltr">it seems you have&nbsp;a mixed mode image where kernel is =
64bit but userspace is 32bit, so you have to compile your app to be 32bit a=
s well.
<div>otherwise you need to include 64bit runtime as well to support 64bit a=
pps.</div>
</div>
</blockquote>
Unfortunately I don't have much clarity on how to achieve this. Can you sug=
gest what i should do.<br />Thanks

--8KkQNUPdEQ9MXm3zL98n--

