Return-Path: <sbabic@denx.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 30BBFC7619A
	for <webhook@archiver.kernel.org>; Sat,  8 Apr 2023 08:17:33 +0000 (UTC)
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
 by mx.groups.io with SMTP id smtpd.web11.6965.1680941848782462041
 for <yocto@lists.yoctoproject.org>;
 Sat, 08 Apr 2023 01:17:30 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@denx.de header.s=phobos-20191101 header.b=C4as9HhI;
 spf=pass (domain: denx.de, ip: 85.214.62.61, mailfrom: sbabic@denx.de)
Received: from [IPV6:2001:a61:6018:da01:83eb:a3b5:f5aa:3d87] (unknown [IPv6:2001:a61:6018:da01:83eb:a3b5:f5aa:3d87])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: sbabic@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 46B8385A4A;
	Sat,  8 Apr 2023 10:17:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1680941845;
	bh=usR3RUXDPrzP/X9V/v/fAwC88M0dnZaV4vnZlSv5bPY=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=C4as9HhI9ZG3toOOnArNqAqiaf3QM2Zs5yAAEZav1SdrTKaSPrCZv2X+bRrizTSNU
	 6dNsOnZuszlSV3gd1dy/08T63zaCuB1O6EJRq+iF90SFbVg4FgOwg0oZwytJA5wvAS
	 EETlAuqjBJOLtoU32yvPTJ4DtPQgp7+jCcGEkQIlp4pbvtvBZcmr+ls06jbtM9M8C0
	 Hju4YRjq6I4YOwUOWD89WGUcbjPlXvvvySL3+xxaJMTmCnXBafe1RgDhcJMjHNQ9Rl
	 7V3JddknFI/9DZKpidIa3oLFWffi8qEEWEB67hQPXwMjeZL8XDm2/lCz2Xb6A50BNU
	 lvy696PuqkncQ==
Message-ID: <ab1f0955-da75-d25f-9aa7-21c9a5c00922@denx.de>
Date: Sat, 8 Apr 2023 10:17:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [yocto] How to add libubootenv to the rootfs
To: Sethu Madhav <sethu.m@calixto.co.in>, yocto@lists.yoctoproject.org
References: <CAFjAHzFhe5bsLeX8u1b0+1+g5SAkTmvad=hNY8W1=uOHpUqjwg@mail.gmail.com>
Content-Language: en-US
From: Stefano Babic <sbabic@denx.de>
In-Reply-To: <CAFjAHzFhe5bsLeX8u1b0+1+g5SAkTmvad=hNY8W1=uOHpUqjwg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 08 Apr 2023 08:17:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59642



On 07.04.23 14:31, Sethu Madhav wrote:
> Hi,
> Iam working on a dunfell version and using a custom u-boot, kernel etc.
> I need to add u-boot-fw-utils to my image and its well documented that=20
> the recipe is obsolete and is replaced by the libubootenv.
> But i'm not sure how to add libubootenv to the rootfs.
> I tried adding
> PREFERRED_PROVIDER_u-boot-fw-utils =3D =E2=80=9Clibubootenv=E2=80=9D
> to the local.conf, but no luck .
> Can anyone tell the procedure for getting u-boot-fw-utils in my rootfs

IMAGE_INSTALL:append =3D " libubootenv-bin"

And probably you have to add u-boot-env as well to install fw_env.config.

Best regards,
Stefano


>=20
> Thankyou
>=20
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59641): https://lists.yoctoproject.org/g/yocto/mess=
age/59641
> Mute This Topic: https://lists.yoctoproject.org/mt/98139728/3618551
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [sbabic@denx.=
de]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20

--=20
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
DENX Software Engineering GmbH,        Managing Director: Erika Unter
HRB 165235 Munich,   Office: Kirchenstr.5, 82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

