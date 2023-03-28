Return-Path: <nagarkarajay@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D0C8C6FD18
	for <webhook@archiver.kernel.org>; Tue, 28 Mar 2023 17:03:50 +0000 (UTC)
Subject: Missing timezones in tzdata
To: yocto@lists.yoctoproject.org
From: nagarkarajay@gmail.com
X-Originating-Location: Pune, Maharashtra, IN (1.39.25.125)
X-Originating-Platform: Windows Chrome 111
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 28 Mar 2023 10:03:40 -0700
Message-ID: <6Fay.1680023020146984361.rxcA@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="TWJhymjEpSeNp5pNW27h"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Mar 2023 17:03:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59542

--TWJhymjEpSeNp5pNW27h
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,
I have a imx6ul board that I am working on (SOM has been purchased from a c=
ompany).
We are using=C2=A0Krogoth (2.1) and we need to have ntpd as a part of the b=
uild. ntpd is working ok, however the tzdata that we have in /usr/share/zon=
einfo is missing a lot of zones (looking at it in detail we realized that 3=
0 min timezones are missing .. i.e. GMT+4:30 , +5:30 etc.). One hour timezo=
nes are available. i,e, GMT-3 ... etc Any suggestion on where to look for o=
r what should be the approach to fix this ?
- Ajay

--TWJhymjEpSeNp5pNW27h
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br />I have a imx6ul board that I am working on (SOM has been purchased=
 from a company).<br />We are using&nbsp;Krogoth (2.1) and we need to have =
ntpd as a part of the build. ntpd is working ok, however the tzdata that we=
 have in /usr/share/zoneinfo is missing a lot of zones (looking at it in de=
tail we realized that 30 min timezones are missing .. i.e. GMT+4:30 , +5:30=
 etc.). One hour timezones are available. i,e, GMT-3 ... etc Any suggestion=
 on where to look for or what should be the approach to fix this ?<br />- A=
jay<br /><span style=3D"color: #ffffff; font-family: 'S&ouml;hne Mono', Mon=
aco, 'Andale Mono', 'Ubuntu Mono', monospace; white-space: pre; background-=
color: #000000;"><br /></span>

--TWJhymjEpSeNp5pNW27h--

