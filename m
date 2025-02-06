Return-Path: <jdowd@slashdevslashnull.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3DD09C02198
	for <webhook@archiver.kernel.org>; Thu,  6 Feb 2025 16:31:26 +0000 (UTC)
Subject: Re: [yocto] Unable to boot a raspberry Pi Zero 2 W using the master branch of Yocto #raspberrypi #raspberrypi0-wifi
To: "Khem Raj" <raj.khem@gmail.com>, yocto@lists.yoctoproject.org
From: "John" <jdowd@slashdevslashnull.org>
X-Originating-Location: Ottawa, Ontario, CA (184.175.41.163)
X-Originating-Platform: Linux Chrome 133
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 06 Feb 2025 08:31:20 -0800
References: <CAMKF1soC8CoNRRF8p4G78cQBxuQRJQXHOuY3VPT+gBP=GSh-PA@mail.gmail.com>
In-Reply-To: <CAMKF1soC8CoNRRF8p4G78cQBxuQRJQXHOuY3VPT+gBP=GSh-PA@mail.gmail.com>
Message-ID: <22391.1738859480398711450@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="U7d1AEkJgt1IcLRTXFeb"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Feb 2025 16:31:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64729

--U7d1AEkJgt1IcLRTXFeb
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Yeah I just figure that out and tested it. I was going to reply back. Anywa=
ys, I ran it through bunzip and then "dd'd" the image to my SD card. Same i=
ssue. Dead. However I need to add some commands to the config.txt file to g=
et the output from startx.elf to find out if it's stopping at the same plac=
e.

Cheers!!

--U7d1AEkJgt1IcLRTXFeb
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Yeah I just figure that out and tested it. I was going to reply back. =
Anyways, I ran it through bunzip and then "dd'd" the image to my SD card. S=
ame issue. Dead. However I need to add some commands to the config.txt file=
 to get the output from startx.elf to find out if it's stopping at the same=
 place.</div>
<div>&nbsp;</div>
<div>Cheers!!</div>

--U7d1AEkJgt1IcLRTXFeb--

