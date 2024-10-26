Return-Path: <crane2018@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EEEE5D149F9
	for <webhook@archiver.kernel.org>; Sat, 26 Oct 2024 01:37:21 +0000 (UTC)
Subject: Re: [yocto] error while adding device tree overlay for UART to the image #bitbake #linux
To: "Crane" <crane2018@gmail.com>, yocto@lists.yoctoproject.org
From: "Crane" <crane2018@gmail.com>
X-Originating-Location: Mississauga, Ontario, CA (135.0.213.201)
X-Originating-Platform: Windows Chrome 130
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 25 Oct 2024 18:37:14 -0700
References: <6kB9.1729694356995050356.znfv@lists.yoctoproject.org>
In-Reply-To: <6kB9.1729694356995050356.znfv@lists.yoctoproject.org>
Message-ID: <17483.1729906634778402189@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="OlwCkqo7HuCLoHXAfgGc"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 26 Oct 2024 01:37:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64134

--OlwCkqo7HuCLoHXAfgGc
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I found this link talking about the same error.
https://lists.yoctoproject.org/g/yocto/topic/meta_raspberrypi_error_with/78=
879953

Indeed, the contents of IMAGE_BOOT_FILES has issues.
But when overlays/uart0-pi5.dtbo is added, both uart0-pi5.dtbo and overlays=
/uart0-pi5.dtbo are added. This should be the cause.

--OlwCkqo7HuCLoHXAfgGc
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I found this link talking about the same error.</div>
<div><a href=3D"https://lists.yoctoproject.org/g/yocto/topic/meta_raspberry=
pi_error_with/78879953" target=3D"_blank" rel=3D"noopener">https://lists.yo=
ctoproject.org/g/yocto/topic/meta_raspberrypi_error_with/78879953</a></div>
<div>&nbsp;</div>
<div>Indeed, the contents of IMAGE_BOOT_FILES has issues.</div>
<div>But when overlays/uart0-pi5.dtbo is added, both uart0-pi5.dtbo and ove=
rlays/uart0-pi5.dtbo are added. This should be the cause.&nbsp;</div>

--OlwCkqo7HuCLoHXAfgGc--

