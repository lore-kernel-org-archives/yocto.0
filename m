Return-Path: <hchanuy@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C170E6FE4F
	for <webhook@archiver.kernel.org>; Sat,  7 Sep 2024 07:34:26 +0000 (UTC)
Subject: Re: [yocto] How to use i686-linux-gnu-gcc instead of install multilib when using luajit
To: hchanuy@gmail.com, yocto@lists.yoctoproject.org
From: hchanuy@gmail.com
X-Originating-Location: Helsinki, Uusimaa, FI (87.92.135.50)
X-Originating-Platform: Linux Firefox 130
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 07 Sep 2024 00:34:25 -0700
References: <8axl.1725614606267108811.qj7E@lists.yoctoproject.org>
In-Reply-To: <8axl.1725614606267108811.qj7E@lists.yoctoproject.org>
Message-ID: <7911.1725694465005703678@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="G4imuzE6YhYFgDrWMepv"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 07 Sep 2024 07:34:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63796

--G4imuzE6YhYFgDrWMepv
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Apparently, I have to put the full path to the compiler instead of just the=
 executable name. So setting `HOST_CC=3D/usr/bin/i686-linux-gnu-gcc` works.

--G4imuzE6YhYFgDrWMepv
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Apparently, I have to put the full path to the compiler instead of jus=
t the executable name. So setting `HOST_CC=3D/usr/bin/i686-linux-gnu-gcc` w=
orks.</div>

--G4imuzE6YhYFgDrWMepv--

