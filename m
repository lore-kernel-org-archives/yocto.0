Return-Path: <casey.ballentine@essvote.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C3ABC4707A
	for <webhook@archiver.kernel.org>; Thu, 21 Apr 2022 16:46:06 +0000 (UTC)
Subject: Re: secure boot w/ Mender bzImage fails validation #dunfell
To: yocto@lists.yoctoproject.org
From: "Ballentine, Casey" <casey.ballentine@essvote.com>
X-Originating-Location: Omaha, Nebraska, US (98.168.241.110)
X-Originating-Platform: Windows Chrome 100
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 21 Apr 2022 07:13:35 -0700
References: 
 <CA+Uj8Ux3T3fNkbpeT_FLHNbuqF0aBYTTUBZe4V8gi-=GzR+CBw@mail.gmail.com>
In-Reply-To: 
 <CA+Uj8Ux3T3fNkbpeT_FLHNbuqF0aBYTTUBZe4V8gi-=GzR+CBw@mail.gmail.com>
Message-ID: <25117.1650550415442728122@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="xOjWy8h5vjTJ1EldyjXM"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Apr 2022 16:46:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56828

--xOjWy8h5vjTJ1EldyjXM
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Unfortunately, the uefi-comboapp requires systemd-boot, which Mender doesn'=
t currently support with mender-partuuid which our system requires for soft=
ware updates over USB. Our devices aren't connected to the internet so OTA =
updates aren't an option for us. I've started a discussion on Mender.io to =
see if someone there can help us solve this issue, but in the meantime, any=
 thoughts/suggestions are certainly appreciated!

-Casey

--xOjWy8h5vjTJ1EldyjXM
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Unfortunately, the uefi-comboapp requires systemd-boot, which Mender doesn'=
t currently support with mender-partuuid which our system requires for soft=
ware updates over USB. Our devices aren't connected to the internet so OTA =
updates aren't an option for us. I've started a discussion on Mender.io to =
see if someone there can help us solve this issue, but in the meantime, any=
 thoughts/suggestions are certainly appreciated!<br /><br />-Casey

--xOjWy8h5vjTJ1EldyjXM--

