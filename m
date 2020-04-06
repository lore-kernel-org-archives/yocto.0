Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
 by mx.groups.io with SMTP id smtpd.web12.2364.1586204408601420260
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Apr 2020 13:20:09 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.1.11, mailfrom: randy.macleod@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 036KK5gU021397
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Mon, 6 Apr 2020 13:20:05 -0700 (PDT)
Received: from [172.25.44.3] (172.25.44.3) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Mon, 6 Apr
 2020 13:20:04 -0700
Subject: Re: [yocto] Novice question on makefile in yocto environment
To: Raghu Icecraft Software Trainings <raghu.icecraft@gmail.com>,
        <yocto@lists.yoctoproject.org>
References: <CAKRDAG--FgfkAkYiLodkNzQxKo66pKN+Q=s30OhhrBaptRyVhg@mail.gmail.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <0fad62f4-5268-d877-2d1f-b9d29a3f8037@windriver.com>
Date: Mon, 6 Apr 2020 16:20:02 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAKRDAG--FgfkAkYiLodkNzQxKo66pKN+Q=s30OhhrBaptRyVhg@mail.gmail.com>
X-Originating-IP: [172.25.44.3]
X-MIME-Autoconverted: from 8bit to quoted-printable by mail.windriver.com id 036KK5gU021397
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: quoted-printable

On 2020-03-29 11:08 p.m., Raghu Icecraft Software Trainings wrote:
> Hi,
>=20
>  =C2=A0 I have some general idea on makefile in C, C++ environment.
> Related to my Yocto project having a very tough time in getting my=20
> makefile ready on shape after almost every development change.
>=20
> Is there any specific Troubleshooting based guidance available some wher=
e ?
> I have also tried looking for old posts in this group.
> Please suggest if I have to post this question, somewhere else.

Did anyone reply off list?

Did you have a look at using the SDK and tips in:
=20
https://www.yoctoproject.org/docs/current/sdk-manual/sdk-manual.html#sdk-a=
dding-makefile-only-software


Also, here's a simple recipe example from the Wind River docs:
https://docs.windriver.com/bundle/Wind_River_Linux_Platform_Developers_Gui=
de_CD/page/mmo1403548803429.html
you should be able to make that work with just oe-core/poky.

If you're still having trouble, post a example Makefile
for 'hello-world' and perhaps someone will help you out.

../Randy

>=20
>=20
>=20


--=20
# Randy MacLeod
# Wind River Linux
