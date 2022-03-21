Return-Path: <oleg@kaa.org.ua>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 34192C433F5
	for <webhook@archiver.kernel.org>; Mon, 21 Mar 2022 09:57:56 +0000 (UTC)
Received: from smtp.220.in.ua (smtp.220.in.ua [89.184.67.205])
 by mx.groups.io with SMTP id smtpd.web09.28766.1647856674337706834
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Mar 2022 02:57:55 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: kaa.org.ua, ip: 89.184.67.205, mailfrom: oleg@kaa.org.ua)
Received: from [192.168.0.103] (unknown [91.234.25.222])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.220.in.ua (Postfix) with ESMTPSA id BDA4E1A204FD;
	Mon, 21 Mar 2022 11:57:50 +0200 (EET)
Message-ID: <e2ccb39e-58b0-4eab-1dd5-136940a1a112@kaa.org.ua>
Date: Mon, 21 Mar 2022 11:57:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.7.0
Subject: Re: [yocto] Multiconfig dependency
Content-Language: uk
To: Manuel Wagesreither <ManWag@FastMail.FM>
References: <4392d158-e0cb-0776-93c3-62972ed28431@kaa.org.ua>
 <c6ff5ff6-a11f-43fb-b85a-d6426c94212d@www.fastmail.com>
Cc: yocto@lists.yoctoproject.org
From: Oleh Kravchenko <oleg@kaa.org.ua>
In-Reply-To: <c6ff5ff6-a11f-43fb-b85a-d6426c94212d@www.fastmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Mar 2022 09:57:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56517

Hello Manuel,
Thank you for your reply.

It isn't missing.
Here is a cut from manual:

A "default" configuration already exists by definition. This=20
configuration is named: "" (i.e. empty string) and is defined by the=20
variables coming from your local.conf file.


21.03.22 08:02, Manuel Wagesreither =D0=BF=D0=B8=D1=88=D0=B5:
> Hi Oleh,
>=20
> Am Do, 17. M=C3=A4r 2022, um 21:29, schrieb Oleh Kravchenko:
>>   do_install[mcdepends] =3D "mc:initramfs::core-image-minimal:do_image=
_complete"
>=20
> I have zero practical experience with multiconfig, but isn't this missi=
ng one argument?
>=20
> See here:
>=20
> https://github.com/JPEWdev/meta-multiconfig-demos/blob/main/recipes-mis=
c/arthur-embed/arthur-embed.bb#L21https://youtu.be/YvtlGjWrL-M?list=3DPLD=
4M5FoHz-TwWYbaJwduH8ZYNYvva76QQ&t=3D5030
>=20
> Regards,
> Manuel

