Return-Path: <rgovostes@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E2CFC433EF
	for <webhook@archiver.kernel.org>; Mon, 17 Jan 2022 21:22:50 +0000 (UTC)
Subject: Re: Building uImage with appended DTB
To: yocto@lists.yoctoproject.org
From: "Ryan Govostes" <rgovostes@gmail.com>
X-Originating-Location: Jamaica Plain, Massachusetts, US (72.74.129.106)
X-Originating-Platform: Mac Safari 15.2
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 17 Jan 2022 13:22:48 -0800
References: <mt8I.1642398119365665679.kouk@lists.yoctoproject.org>
In-Reply-To: <mt8I.1642398119365665679.kouk@lists.yoctoproject.org>
Message-ID: <6198.1642454568890211581@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="8pFPTZOQOdEd1efXKNhG"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 17 Jan 2022 21:22:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55891

--8pFPTZOQOdEd1efXKNhG
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

A solution that seems to work is to create a new .bbclass inherited from my=
 layer's linux .bbappend file that implements uboot_prep_kimage:append() to=
 append the DTB to linux.bin. This code would run at the beginning of=C2=A0=
do_uboot_mkimage() before the uImage is created.

There are a couple of prerequisites such as setting KEEPUIMAGE =3D "yes" an=
d=C2=A0KERNEL_DEVICETREE_BUNDLE =3D "0".

https://gist.github.com/rgov/0628785685ab858a99c5bfca626c1d8f

I would still be curious to know why=C2=A0KERNEL_DEVICETREE_BUNDLE doesn't =
work as expected if that is supposed to be the supported method of achievin=
g this, but my solution at least lets me move on.

--8pFPTZOQOdEd1efXKNhG
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

A solution that seems to work is to create a new .bbclass inherited from my=
 layer's linux .bbappend file that implements uboot_prep_kimage:append() to=
 append the DTB to linux.bin. This code would run at the beginning of&nbsp;=
do_uboot_mkimage() before the uImage is created.<br /><br />There are a cou=
ple of prerequisites such as setting KEEPUIMAGE =3D "yes" and&nbsp;KERNEL_D=
EVICETREE_BUNDLE =3D "0".<br /><br /><a href=3D"https://gist.github.com/rgo=
v/0628785685ab858a99c5bfca626c1d8f" target=3D"_blank" rel=3D"noopener">http=
s://gist.github.com/rgov/0628785685ab858a99c5bfca626c1d8f</a><br /><br />I =
would still be curious to know why&nbsp;KERNEL_DEVICETREE_BUNDLE doesn't wo=
rk as expected if that is supposed to be the supported method of achieving =
this, but my solution at least lets me move on.

--8pFPTZOQOdEd1efXKNhG--

