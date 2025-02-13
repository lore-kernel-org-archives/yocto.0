Return-Path: <jdowd@slashdevslashnull.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 830F7C021A0
	for <webhook@archiver.kernel.org>; Thu, 13 Feb 2025 17:49:53 +0000 (UTC)
Subject: Re: [yocto] PREFERRED_VERSION not being populated onto the rootfs image
To: "John" <jdowd@slashdevslashnull.org>, yocto@lists.yoctoproject.org
From: "John" <jdowd@slashdevslashnull.org>
X-Originating-Location: Ottawa, Ontario, CA (184.175.41.163)
X-Originating-Platform: Linux Chrome 133
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 13 Feb 2025 09:49:44 -0800
References: <13254.1739463914284453219@lists.yoctoproject.org>
In-Reply-To: <13254.1739463914284453219@lists.yoctoproject.org>
Message-ID: <18350.1739468984755588893@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="UDz7Ycc2mFTf35WDAjCq"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Feb 2025 17:49:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64805

--UDz7Ycc2mFTf35WDAjCq
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

So, I added "dhcpcd" to this line in my local.conf file:

>=20
> IMAGE_INSTALL:append =3D " linux-firmware-bcm43430 bluez5 i2c-tools
> wpa-supplicant dhcpcd"
>=20

and voila, I have my wpa_supplicant v2.9 installed.... so any ideas why thi=
s worked?

And with that, I ran the wpa_supplicant and I now have wifi working on a ra=
spberry Pi Zero 2 W running a Yocto 64-bit image.

The negative is that wpa-supplicant 2.9 doesn't take a passphrase that's en=
coded so I have a clear text PSK in the file. That will need to be fixed. I=
 guess the patch that causes the issues with 2.11 needs to be identified an=
d removed. I'm sure that will be tedious.

Any tests or information about my build that is requested will certainly be=
 done if you think it will be constructive and helpful to the cause.

Cheers!!

--UDz7Ycc2mFTf35WDAjCq
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>So, I added "dhcpcd" to this line in my local.conf file:</div>
<blockquote>
<div>IMAGE_INSTALL:append =3D " linux-firmware-bcm43430 bluez5 i2c-tools wp=
a-supplicant dhcpcd"</div>
</blockquote>
<div>and voila, I have my wpa_supplicant v2.9 installed.... so any ideas wh=
y this worked?</div>
<div>&nbsp;</div>
<div>And with that, I ran the wpa_supplicant and I now have wifi working on=
 a raspberry Pi Zero 2 W running a Yocto 64-bit image.</div>
<div>&nbsp;</div>
<div>The negative is that wpa-supplicant 2.9 doesn't take a passphrase that=
's encoded so I have a clear text PSK in the file. That will need to be fix=
ed. I guess the patch that causes the issues with 2.11 needs to be identifi=
ed and removed. I'm sure that will be tedious.</div>
<div>&nbsp;</div>
<div>Any tests or information about my build that is requested will certain=
ly be done if you think it will be constructive and helpful to the cause.</=
div>
<div>&nbsp;</div>
<div>Cheers!!</div>

--UDz7Ycc2mFTf35WDAjCq--

