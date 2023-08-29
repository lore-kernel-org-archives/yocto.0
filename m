Return-Path: <m.salvini@koansoftware.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A13D9C83F12
	for <webhook@archiver.kernel.org>; Tue, 29 Aug 2023 07:08:28 +0000 (UTC)
Received: from mail.koansoftware.com (mail.koansoftware.com [172.104.12.216])
 by mx.groups.io with SMTP id smtpd.web10.12105.1693292904966502700
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Aug 2023 00:08:25 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: koansoftware.com, ip: 172.104.12.216, mailfrom: m.salvini@koansoftware.com)
Received: from localhost (localhost [127.0.0.1])
	by mail.koansoftware.com (Postfix) with ESMTP id C295A3C450
	for <yocto@lists.yoctoproject.org>; Tue, 29 Aug 2023 09:08:23 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at mail
Received: from mail.koansoftware.com ([127.0.0.1])
	by localhost (mail.koansoftware.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lZb_SOXRiBEw for <yocto@lists.yoctoproject.org>;
	Tue, 29 Aug 2023 09:08:21 +0200 (CEST)
Message-ID: <095bfe92-ee5f-17c0-ea8e-dadf51e81d1a@koansoftware.com>
Date: Tue, 29 Aug 2023 09:08:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [yocto] EXTRA_USERS_PARAMS doesn't work to generate password for
 root and add new users
To: yocto@lists.yoctoproject.org
References: <80a3f668-0e7e-fb19-95ef-dba24df5af76@koansoftware.com>
 <18414.1693106809457776245@lists.yoctoproject.org>
Content-Language: en-US, it
From: Mauro Salvini <m.salvini@koansoftware.com>
In-Reply-To: <18414.1693106809457776245@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 29 Aug 2023 07:08:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60911

On 27/08/23 05:26, Crane wrote:
> On Thu, Aug 24, 2023 at 04:21 AM, Mauro wrote:
>=20
>     To Crane: please try to build the image and test it, don't stop at
>     Yocto variables analysis step.
>=20
> Thanks Mauro so much.
>=20
> Indeed, it is not relevant the value of the variable, but where it is=20
> assigned.
> It doesn't work to assign these values in image recipe, but works in=20
> local.conf.
>=20

extrausers class (and then EXTRA_USERS_PARAMS) works both in image=20
recipe and in local.conf, both with the openssl command and with the=20
ciphered password.

> I am wondering what's the different in assigning the value in different=
=20
> locations. Maybe it is relevant to the building sequence. If it is=20
> assigned later, it is useless. Is there any rule to follow? Or it is=20
> just from experience?
>=20

extrauser class is designed to add or modify users at image level, then=20
it must be used in image recipes or in a .conf file. [1]

useradd class is designed to create users at package level, then it must=20
be used in normal (not image) recipes only. [2]

[1] https://docs.yoctoproject.org/ref-manual/classes.html#extrausers
[2] https://docs.yoctoproject.org/ref-manual/classes.html#useradd

> Another question I think of is how you guys source control local.conf.=20
> It looks it might be much different from project to project.
>=20
> Thanks!
> Crane

--=20
Mauro Salvini | KOAN sas | Bergamo - Italia
embedded software engineering
=E2=9C=86:+39 351-9518710
http://KoanSoftware.com


