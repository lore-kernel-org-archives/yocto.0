Return-Path: <sbabic@denx.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E55B8C7EE24
	for <webhook@archiver.kernel.org>; Sat,  3 Jun 2023 12:07:54 +0000 (UTC)
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
 by mx.groups.io with SMTP id smtpd.web10.10426.1685794065735140773
 for <yocto@lists.yoctoproject.org>;
 Sat, 03 Jun 2023 05:07:47 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@denx.de header.s=phobos-20191101 header.b=pfEb5K6p;
 spf=pass (domain: denx.de, ip: 85.214.62.61, mailfrom: sbabic@denx.de)
Received: from [IPV6:2001:a61:6143:6401:cf4:f861:5606:6f80] (unknown [IPv6:2001:a61:6143:6401:cf4:f861:5606:6f80])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: sbabic@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 0D6E78466A;
	Sat,  3 Jun 2023 14:07:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1685794063;
	bh=os13fbOu9KpMiNLjg2vn6K78c4Axr54Uhprfx6vz3nU=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=pfEb5K6pZ8cw95aUZBlkODoKc5LN7ThuuPIS8X4vyukFlgWECxS8xPTFjyc1hAqRE
	 jwZ6JQmdjR0EKrckl9jZzexCZpR8RjWtLap338NNcqn5k8SA5MkgcqYD/Z2STQwAPc
	 iJRim+A1/ruvvMfXMzOK6PlazzWj6o7nOgkdGMxfoLo3Sc0AyOnO4rhQtGXrbs6Gxr
	 n47cdvdwMq6nZyWkTxmHscbpjgMANnFZ357+dVTuaypqED+z4yMLaIZxIuIAPkbTGe
	 JIdf38/VdoEGuXEDAOGF4rFIpsfZpHHcYxsYgupisg880WRSeDXZeMwfPVxN9I2mmQ
	 PJ2bTt3qskEVA==
Message-ID: <96baaa8f-b031-c9be-acad-ac3939884e7e@denx.de>
Date: Sat, 3 Jun 2023 14:07:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [yocto] libubootenv setup
To: Vipin Vijayan <vipin.v@calixto.co.in>, yocto@lists.yoctoproject.org
References: <CAPDLeY0fo=4OQYXRnmK1rcqO_QMEWhLEEx6_exUHnRMH7mjsTg@mail.gmail.com>
Content-Language: en-US
From: Stefano Babic <sbabic@denx.de>
In-Reply-To: <CAPDLeY0fo=4OQYXRnmK1rcqO_QMEWhLEEx6_exUHnRMH7mjsTg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 03 Jun 2023 12:07:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60169

Hi Vipin,

On 03.06.23 12:29, Vipin Vijayan wrote:
> Hi,
> I am working on our custom board with dunfell version and we are using =
a=20
> custom u-boot for the board. But when i try to use fw_printenv and=20
> fw_setenv iam not being able to access those functionalities. Iam using=
=20
> libubootenv=C2=A0for those specific functionalities .
>=20
> iam adding libubootenv-bin in image_install and iam getting the=20
> fw_printenv and fw_setenv in the /usr/bin folder
>=20
> But when i use fw_printenv and fw_setenv iam getting an error,
> Can't read from default
> Can't read from file.
>=20
> We are storing the environment=C2=A0variables in the spi flash /dev/mtd=
3
>=20
> When i try hexdump i can find the variables present
> But iam not being able to access it with fw_printenv and fw_setenv any=20
> variable using fw_setenv
>=20
> I should mention that fw_env.config is perfect and does not have any=20
> error in it, because when we try to access those variables using anothe=
r=20
> fw_printenv,

This is not a valid proof. Old tools have linked-in environment, and=20
fw_printenv prints variables even if fw_env.config is not correct. If=20
libuboot does not report the variables, the main reason is that your=20
fw_env.config does not match the configuration in U-Boot.

To check this, you can set with old tool some variables, reboot your=20
board and check if the variable can be read by U-Boot. If not, your=20
fw_env.config is far away to be perfect.

> which we got from executing make in the git source , we are=20
> getting the variables printed.
>=20
> Also during build of the u-boot we are using a patch file which we got=20
> from internet for its build succession, I dont=C2=A0know whether that p=
atch=20
> interferes with anything that hinders its function.

Patch was merged into U-Boot some years ago and you do not need it if=20
your u-boot is not too old. You need to install u-boot-initial-env as=20
well (this replaces the linked-in environment from old tool), it is part=20
of u-boot-env package.

>=20
> Iam attaching my fw_env.config

Only you can check if fw_env.config is correct.

> and also the patch file i used for u-boot=20
> along with this

Patch was merged and part of U-Boot since 2019.07

>=20
> As iam a beginner in this field, Iam not much aware of these=20
> functionalities in detail. Please look in to the issue and any helps ar=
e=20
> appreciated.
Best regards,
Stefano Babic

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

