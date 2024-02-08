Return-Path: <jguittet.opensource@witekio.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14F63C48260
	for <webhook@archiver.kernel.org>; Thu,  8 Feb 2024 15:12:48 +0000 (UTC)
Subject: Re: [yocto] initramfs and system logs
To: Joel GUITTET <jguittet.opensource@witekio.com>,yocto@lists.yoctoproject.org
From: "Joel GUITTET" <jguittet.opensource@witekio.com>
X-Originating-Location: =?UTF-8?B?Q2jDonRlYXVyb3V4LCBDZW50cmUtVmFsIGRlIExvaXJlLCBGUg==?= (78.114.34.105)
X-Originating-Platform: Linux Chrome 121
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 08 Feb 2024 07:12:47 -0800
References: <4625.1706004127144905507@lists.yoctoproject.org>
In-Reply-To: <4625.1706004127144905507@lists.yoctoproject.org>
Message-ID: <28123.1707405167146586672@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="WQfYFxJk4uasuHYYzP8d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Feb 2024 15:12:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62430

--WQfYFxJk4uasuHYYzP8d
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello community!

Finally got a solution to my issue.

I created a busybox_%.bbappend file in my layer with the following content,=
 to create the /dev/console node during the build:

>=20
> # Install
> do_install:append() {
> # init process needs the console created before running
> # If the console is not available, no logs are displayed in the terminal
> install -d ${D}/dev
> mknod -m 622 ${D}/dev/console c 5 1
> }
> FILES:${PN}:append =3D " \
> /dev/console \
> "
>=20

I also found a relevant discussion here that seems still to be up to date: =
https://busybox.busybox.narkive.com/Erf4teRC/modifying-init-to-create-dev-c=
onsole

I hope this will help others reading this message in the future :-)

Joel

--WQfYFxJk4uasuHYYzP8d
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello community!<br /><br />Finally got a solution to my issue.<br /><br />=
I created a busybox_%.bbappend file in my layer with the following content,=
 to create the /dev/console node during the build:<br /><br />
<blockquote>
<div># Install</div>
<div>do_install:append() {</div>
<div>&nbsp; &nbsp; # init process needs the console created before running<=
/div>
<div>&nbsp; &nbsp; # If the console is not available, no logs are displayed=
 in the terminal</div>
<div>&nbsp; &nbsp; install -d ${D}/dev</div>
<div>&nbsp; &nbsp; mknod -m 622 ${D}/dev/console c 5 1</div>
<div>}</div>
<div>FILES:${PN}:append =3D " \</div>
<div>&nbsp; &nbsp; /dev/console \</div>
<div>"</div>
</blockquote>
<div>I also found a relevant discussion here that seems still to be up to d=
ate:&nbsp;<a href=3D"https://busybox.busybox.narkive.com/Erf4teRC/modifying=
-init-to-create-dev-console" target=3D"_blank" rel=3D"noopener">https://bus=
ybox.busybox.narkive.com/Erf4teRC/modifying-init-to-create-dev-console</a><=
br /><br />I hope this will help others reading this message in the future =
:-)<br /><br />Joel</div>

--WQfYFxJk4uasuHYYzP8d--

