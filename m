Return-Path: <jdowd@slashdevslashnull.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC12EC02199
	for <webhook@archiver.kernel.org>; Fri,  7 Feb 2025 13:39:52 +0000 (UTC)
Subject: Re: [yocto] Unable to boot a raspberry Pi Zero 2 W using the master branch of Yocto #raspberrypi #raspberrypi0-wifi
To: "Khem Raj" <raj.khem@gmail.com>, yocto@lists.yoctoproject.org
From: "John" <jdowd@slashdevslashnull.org>
X-Originating-Location: Ottawa, Ontario, CA (184.175.41.163)
X-Originating-Platform: Linux Chrome 133
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 07 Feb 2025 05:39:47 -0800
References: <CAMKF1sq2MrjRGY95CtH6PTwNPn8KFbrNmrv1a+req+4RNn9Z0w@mail.gmail.com>
In-Reply-To: <CAMKF1sq2MrjRGY95CtH6PTwNPn8KFbrNmrv1a+req+4RNn9Z0w@mail.gmail.com>
Message-ID: <22391.1738935587041536318@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="k9iTSeGFjPhI7pVj8PLT"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 07 Feb 2025 13:39:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64750

--k9iTSeGFjPhI7pVj8PLT
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

So with your suggested change to the file: raspberrypi0-2w.conf, it stopped=
 at the same place as reported in my first post. I of course, added a line =
to the config.txt of:

>=20
> arm_64bit=3D0
>=20

I checked the output on the console to verify.

Unless there is anything else you want me to try I'm going to move onto get=
ting the wifi to work and eventually bluetooth (Everything is better with b=
luetooth).

Cheers!!

--k9iTSeGFjPhI7pVj8PLT
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>So with your suggested change to the file: raspberrypi0-2w.conf, it st=
opped at the same place as reported in my first post. I of course, added a =
line to the config.txt of:</div>
<div>&nbsp;</div>
<blockquote>
<div>arm_64bit=3D0</div>
</blockquote>
<div>I checked the output on the console to verify.</div>
<div>&nbsp;</div>
<div>Unless there is anything else you want me to try I'm going to move ont=
o getting the wifi to work and eventually bluetooth (Everything is better w=
ith bluetooth).</div>
<div>&nbsp;</div>
<div>Cheers!!</div>
<div>&nbsp;</div>

--k9iTSeGFjPhI7pVj8PLT--

