Return-Path: <jdowd@slashdevslashnull.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF144C021A4
	for <webhook@archiver.kernel.org>; Thu, 13 Feb 2025 22:21:24 +0000 (UTC)
Subject: Re: [yocto] PREFERRED_VERSION not being populated onto the rootfs image
To: "John" <jdowd@slashdevslashnull.org>, yocto@lists.yoctoproject.org
From: "John" <jdowd@slashdevslashnull.org>
X-Originating-Location: Ottawa, Ontario, CA (184.175.41.163)
X-Originating-Platform: Linux Chrome 133
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 13 Feb 2025 14:21:23 -0800
References: <18350.1739468984755588893@lists.yoctoproject.org>
In-Reply-To: <18350.1739468984755588893@lists.yoctoproject.org>
Message-ID: <26374.1739485283805608205@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="LrZU9VH0ME97eaaFwwNP"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Feb 2025 22:21:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64810

--LrZU9VH0ME97eaaFwwNP
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

And now I have a working raspberrypi Zero 2 W with wifi (comes up automatic=
ally) and probably a working Bluetooth (not of importance to me right now b=
ut there appears to be an interface for it).

With the addition of the dhcpcd s/w shown above I had a working wpa-supplic=
ant as it replaced the 2.11 version with the 2.9 version. My next problem w=
as to get the wifi to start automatically. This was done by creating my own=
 "interfaces" file under "init-updown" in the recipes-connectivity right he=
re:

>=20
> ./recipes-core/init-ifupdown/init-ifupdown-1.0/raspberrypi0-64-wf/interfa=
ces
>=20
>=20

This file will be installed to /etc/network.

Somewhere I ran across this setup in which you can just override a generic =
file by placing the same file in a sub-directory prefixed with the machine =
name you are using. This will prioritise this version of the file. In that =
file I removed some of the references to "eth0" and "eth1" and made sure "w=
lan0" was set to auto.

So I consider my issue all closed and then some.

Cheers!!

--LrZU9VH0ME97eaaFwwNP
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>And now I have a working raspberrypi Zero 2 W with wifi (comes up auto=
matically) and probably a working Bluetooth (not of importance to me right =
now but there appears to be an interface for it).</div>
<div>&nbsp;</div>
<div>With the addition of the dhcpcd s/w shown above I had a working wpa-su=
pplicant as it replaced the 2.11 version with the 2.9 version. My next prob=
lem was to get the wifi to start automatically. This was done by creating m=
y own "interfaces" file under "init-updown" in the recipes-connectivity rig=
ht here:</div>
<blockquote>
<div>./recipes-core/init-ifupdown/init-ifupdown-1.0/raspberrypi0-64-wf/inte=
rfaces</div>
</blockquote>
<div>This file will be installed to /etc/network.</div>
<div>&nbsp;</div>
<div>Somewhere I ran across this setup in which you can just override a gen=
eric file by placing the same file in a sub-directory prefixed with the mac=
hine name you are using. This will prioritise this version of the file. In =
that file I removed some of the references to "eth0" and "eth1" and made su=
re "wlan0" was set to auto.</div>
<div>&nbsp;</div>
<div>So I consider my issue all closed and then some.</div>
<div>&nbsp;</div>
<div>Cheers!!</div>
<div>&nbsp;</div>
<div>&nbsp;</div>

--LrZU9VH0ME97eaaFwwNP--

