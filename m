Return-Path: <m.salvini@koansoftware.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 22C61EE4993
	for <webhook@archiver.kernel.org>; Tue, 22 Aug 2023 15:36:59 +0000 (UTC)
Received: from mail.koansoftware.com (mail.koansoftware.com [172.104.12.216])
 by mx.groups.io with SMTP id smtpd.web10.11067.1692718617647432987
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Aug 2023 08:36:58 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: koansoftware.com, ip: 172.104.12.216, mailfrom: m.salvini@koansoftware.com)
Received: from localhost (localhost [127.0.0.1])
	by mail.koansoftware.com (Postfix) with ESMTP id 97A663C53A;
	Tue, 22 Aug 2023 17:36:56 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at mail
Received: from mail.koansoftware.com ([127.0.0.1])
	by localhost (mail.koansoftware.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gv7i9-XJDrgp; Tue, 22 Aug 2023 17:36:54 +0200 (CEST)
Message-ID: <5b90942a-3d7d-d3db-42e6-5779d2fb2839@koansoftware.com>
Date: Tue, 22 Aug 2023 17:36:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [yocto] EXTRA_USERS_PARAMS doesn't work to generate password for
 root and add new users
Content-Language: en-US, it
To: yocto@lists.yoctoproject.org
References: <b0b315a3-a549-6a86-58ae-417709a5344f@koansoftware.com>
 <19830.1692717401104034546@lists.yoctoproject.org>
Cc: crane2018@gmail.com
From: Mauro Salvini <m.salvini@koansoftware.com>
In-Reply-To: <19830.1692717401104034546@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Aug 2023 15:36:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60852

On 22/08/23 17:16, Crane wrote:
> Thanks Mauro for your input.
>=20
> I referred two posts from Koan Software in my work. One is to use=20
> devtool to modify recipe and another one is to add system service to=20
> image. Very clearly explained. Thanks!
>=20
> Good point. I tried, but in my case it looks still not generating the=20
> password and also no new user added.
> And I am afraid that the $ symbol in the encrypted password string migh=
t=20
> prevent it from being applied. I tried to add \ before $ symbol. And=20
> it's also not working.

oh, indeed.

Try with this:

EXTRA_USERS_PARAMS=3D" usermod -p '$(openssl passwd -6 root)' root;=20
useradd -p '$(openssl passwd -6 2023)' crane; "

>=20
> Wondering what else might be still missing.
>=20


--=20
Mauro Salvini | KOAN sas | Bergamo - Italia
embedded software engineering
=E2=9C=86:+39 351-9518710
http://KoanSoftware.com


