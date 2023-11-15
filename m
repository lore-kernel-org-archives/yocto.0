Return-Path: <j.casas@falconelectronica.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A05B7C07548
	for <webhook@archiver.kernel.org>; Wed, 15 Nov 2023 12:45:09 +0000 (UTC)
Subject: Re: Files copied to /usr/local during installation get removed misteriously
To: yocto@lists.yoctoproject.org
From: =?UTF-8?B?SmF2aWVyIENhc2FzIE1hcsOtbg==?= <j.casas@falconelectronica.com>
X-Originating-Location: Lodosa, Navarre, ES (185.128.171.24)
X-Originating-Platform: Windows Chrome 119
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 15 Nov 2023 04:45:04 -0800
References: <13A07558-2632-4DD0-AA57-F7B1A4E09D83@arm.com>
In-Reply-To: <13A07558-2632-4DD0-AA57-F7B1A4E09D83@arm.com>
Message-ID: <17365.1700052304098843498@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="o9D7Qh9WrvQ6fhWBu1dF"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Nov 2023 12:45:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61699

--o9D7Qh9WrvQ6fhWBu1dF
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

you are right, it is defined in layers/meta-ked/classes/userfs.bbclass I di=
dn't consider that it could be something added by a custom layer but it is,=
 as you said. I'll have a loot at it.

Thanks for the clarification

Javi

--o9D7Qh9WrvQ6fhWBu1dF
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

you are right, it is defined in layers/meta-ked/classes/userfs.bbclass I di=
dn't consider that it could be something added by a custom layer but it is,=
 as you said. I'll have a loot at it.<br /><br />Thanks for the clarificati=
on<br /><br />Javi

--o9D7Qh9WrvQ6fhWBu1dF--

