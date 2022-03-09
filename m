Return-Path: <hrsourabh011@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96875C433EF
	for <webhook@archiver.kernel.org>; Wed,  9 Mar 2022 09:01:54 +0000 (UTC)
Subject: Re: How to disable Bluetooth of Raspberry Pi from Yocto?
To: yocto@lists.yoctoproject.org
From: "Sourabh Hegde" <hrsourabh011@gmail.com>
X-Originating-Location: Sesslach, Bavaria, DE (217.24.55.250)
X-Originating-Platform: Windows Firefox 91
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 09 Mar 2022 01:01:54 -0800
References: <22943.1646812940439022103@lists.yoctoproject.org>
In-Reply-To: <22943.1646812940439022103@lists.yoctoproject.org>
Message-ID: <14260.1646816514233831890@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="b8xMZ2KfTAOBKUU43Yp3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Mar 2022 09:01:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56400

--b8xMZ2KfTAOBKUU43Yp3
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Tomasz,

Thanks for quick reply.

>=20
> meta-raspberrypi provide recipe just for the `config.txt` file. I don't
> know which Yocto version you are usingbut on master it looks like this ht=
tps://github.com/agherzan/meta-raspberrypi/blob/master/recipes-bsp/bootfile=
s/rpi-config_git.bb#L1
> You will need some bbappend in your custom recipe to extend config.txt
> wtih `dtoverlay=3Ddisable-bt`.

I forgot to mention, I am on "Honister" release. Yes, I added rpi_config_gi=
t.bbappend file

>=20
> Did you try to hit an enter couple of times and then maybe log in?

Yes, I tried that, but it's not working. May be it's fails to respond for k=
eyboard inputs.

Regards,
Sourabh

--b8xMZ2KfTAOBKUU43Yp3
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Tomasz,<br /><br />Thanks for quick reply.<br /><br />
<blockquote>meta-raspberrypi provide recipe just for the `config.txt` file.=
 I don't know which Yocto version you are usingbut on master it looks like =
this <a href=3D"https://github.com/agherzan/meta-raspberrypi/blob/master/re=
cipes-bsp/bootfiles/rpi-config_git.bb#L1" target=3D"_blank" rel=3D"nofollow=
 noopener">https://github.com/agherzan/meta-raspberrypi/blob/master/recipes=
-bsp/bootfiles/rpi-config_git.bb#L1</a>You will need some bbappend in your =
custom recipe to extend config.txt wtih `dtoverlay=3Ddisable-bt`.</blockquo=
te>
I forgot to mention, I am on "Honister" release. Yes, I added rpi_config_gi=
t.bbappend file<br /><br />
<blockquote>Did you try to hit an enter couple of times and then maybe log =
in?</blockquote>
Yes, I tried that, but it's not working. May be it's fails to respond for k=
eyboard inputs.<br /><br />Regards,<br />Sourabh

--b8xMZ2KfTAOBKUU43Yp3--

