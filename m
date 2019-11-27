Received: from mail.koansoftware.com (mail.koansoftware.com [178.79.174.16])
 by mx.groups.io with SMTP id smtpd.web11.4865.1574854900097526316
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Nov 2019 03:41:40 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: koansoftware.com, ip: 178.79.174.16, mailfrom: m.salvini@koansoftware.com)
Received: from localhost (localhost [127.0.0.1])
	by mail.koansoftware.com (Postfix) with ESMTP id E1FCD3E9C3;
	Wed, 27 Nov 2019 12:41:38 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at mail
Received: from mail.koansoftware.com ([127.0.0.1])
	by localhost (mail.koansoftware.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 72ae9khhnNQJ; Wed, 27 Nov 2019 12:41:37 +0100 (CET)
Subject: Re: [yocto] Yocto build to add root password
To: Andy Pont <andy.pont@sdcsystems.com>
Cc: yocto@lists.yoctoproject.org
References: <CAA=hcWR3Vhfc9H3VRf-Q1m44rX_ox2J-LjuPWHsB1Rrq-yrVTg@mail.gmail.com>
 <bc70cb07-37c8-3078-7c02-d7be487035fd@ibeeto.com>
 <cb99f223-9a19-3c88-b1a3-e67d6b7a6654@koansoftware.com>
 <em055836fc-7045-483e-85dc-61bedfdb14e9@andys-imac.leeshillfarm.local>
From: "Mauro" <m.salvini@koansoftware.com>
Message-ID: <49c4847e-7bcc-b3b1-f6f5-8ab0a7b3fec1@koansoftware.com>
Date: Wed, 27 Nov 2019 12:41:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <em055836fc-7045-483e-85dc-61bedfdb14e9@andys-imac.leeshillfarm.local>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 27/11/19 12:06, Andy Pont wrote:
> I tried this out on a build that I=C2=A0am working on for which I neede=
d to=20
> add a root password and to create a non-root user with a password.
>=20
> If I use:
>=20
> EXTRA_USERS_PARAMS +=3D "usermod -p `openssl passwd -6 ${ROOT_PASSWORD}=
`=20
> root;=E2=80=9D
>=20
> When I try to login to the device it rejects the password that was=20
> defined as ROOT_PASSWORD. =C2=A0If I remove the =E2=80=9C-6=E2=80=9D fr=
om the openssl command=20
> and rebuild/deploy the image then I can login to the target as expected=
.=20
>  =C2=A0Is there something else that needs to be defined/included in the=
 Yocto=20
> configuration in order for the =E2=80=9C-6=E2=80=9D option to work?
>=20
> -Andy.
>=20

Actually I'm using:

EXTRA_USERS_PARAMS =3D " usermod -p '$(openssl passwd -6 myrootpassword)'=
=20
root;"

with success on warrior.

Sorry, I forgot to mention that with password algorithms like the -6 we=20
need the two ' ' around the openssl command, because the generated hash=20
contains the "$" character, that is resolved as a bash variable=20
somewhere in the process.

But at this point I'm not sure if ${ROOT_PASSWORD} works (I'm using the=20
password wrote on the command, not passed by variable).

Regards

--=20
Mauro

