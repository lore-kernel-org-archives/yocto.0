Return-Path: <stephen@radxa.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD492C3DA6E
	for <webhook@archiver.kernel.org>; Mon, 25 Dec 2023 14:58:45 +0000 (UTC)
Subject: Re: [yocto] I get an error with bitbake when a program requires libgpiod.
To: fgobber@hotmail.com <fgobber@hotmail.com>,yocto@lists.yoctoproject.org
From: "Stephen Chen" <stephen@radxa.com>
X-Originating-Location: Taipei, Taipei City, TW (103.152.220.44)
X-Originating-Platform: Mac Firefox 120
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 25 Dec 2023 06:58:38 -0800
References: <SQYO.1703485041673038154.cmwU@lists.yoctoproject.org>
In-Reply-To: <SQYO.1703485041673038154.cmwU@lists.yoctoproject.org>
Message-ID: <26170.1703516318303380181@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="yw8ywFB13KRSG7wEpudu"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Dec 2023 14:58:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62035

--yw8ywFB13KRSG7wEpudu
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi

I don't know how to reproduce your issue.
But to add libgpiod, you can add the following lines to your build/conf/loc=
al.conf

IMAGE_INSTALL:append =3D " \
libgpiod \
libgpiod-dev \
libgpiod-tools \
"

--yw8ywFB13KRSG7wEpudu
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi<br /><br />I don't know how to reproduce your issue.<br />But to add lib=
gpiod, you can add the following lines to your build/conf/local.conf<br /><=
br />
<div style=3D"white-space: pre-wrap;" data-zone-id=3D"0" data-line-index=3D=
"0" data-line=3D"true">IMAGE_INSTALL:append =3D " \</div>
<div style=3D"white-space: pre-wrap;" data-zone-id=3D"0" data-line-index=3D=
"19" data-line=3D"true">libgpiod \</div>
<div style=3D"white-space: pre-wrap;" data-zone-id=3D"0" data-line-index=3D=
"20" data-line=3D"true">libgpiod-dev \</div>
<div style=3D"white-space: pre-wrap;" data-zone-id=3D"0" data-line-index=3D=
"21" data-line=3D"true">libgpiod-tools \</div>
<div style=3D"white-space: pre-wrap;" data-zone-id=3D"0" data-line-index=3D=
"22" data-line=3D"true">"</div>

--yw8ywFB13KRSG7wEpudu--

