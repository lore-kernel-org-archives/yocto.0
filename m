Received: from mail.lineo.co.jp (mail.lineo.co.jp [203.141.200.203])
 by mx.groups.io with SMTP id smtpd.web11.8260.1589445124557665560
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 May 2020 01:32:05 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: lineo.co.jp, ip: 203.141.200.203, mailfrom: ito@lineo.co.jp)
Received: from [192.168.113.218] (vps.lineo.co.jp [203.141.200.196])
	by mail.lineo.co.jp (Postfix) with ESMTPSA id B271280312C49;
	Thu, 14 May 2020 17:32:01 +0900 (JST)
Subject: Re: [yocto] PREFERRED_VERSION
To: yocto@lists.yoctoproject.org
References: <CA+FhBv8kAsM9bHk71bXZ33pF9hep4w6CkBQau0UivS50tLG89w@mail.gmail.com>
From: "ito@lineo.co.jp" <ito@lineo.co.jp>
Message-ID: <5d382e60-644f-6752-618e-eb4c398e5867@lineo.co.jp>
Date: Thu, 14 May 2020 17:32:00 +0900
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CA+FhBv8kAsM9bHk71bXZ33pF9hep4w6CkBQau0UivS50tLG89w@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi Damienm

How about using  BBMULTICONFIG ?

https://www.yoctoproject.org/docs/3.1/mega-manual/mega-manual.html#executi=
ng-a-multiple-configuration-build


On 2020/05/14 17:05, Damien LEFEVRE wrote:
> Hi,
>=20
> Should it be possible to set=C2=A0PREFERRED_VERSION in the image definit=
ion=20
> files?
>=20
> I have 2 image files:
> - image1.bb <http://image1.bb>
> - image2.bb <http://image2.bb> :=C2=A0PREFERRED_VERSION_package_1.0.0
>=20
> I have a package with 2 versions:
> - package_1.0.0.bb <http://package_1.0.0.bb>
> - package_1.1.0.bb <http://package_1.1.0.bb>
>=20
> I'm using the same HW setup, MACHINE, distro and local.conf.
>=20
> Thanks,
> -Damien
>=20
>=20
>=20

--=20
Takayasu Ito
Technical Expert, Solution Department
Lineo Solutions, Inc.
https://www.lineo.co.jp/modules/english/
Email: ito@lineo.co.jp
