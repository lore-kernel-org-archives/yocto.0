Received: from proxima.lasnet.de (proxima.lasnet.de [78.47.171.185])
 by mx.groups.io with SMTP id smtpd.web11.7167.1623313851236742311
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Jun 2021 01:30:52 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@datenfreihafen.org header.s=2021 header.b=wKuODk5g;
 spf=pass (domain: datenfreihafen.org, ip: 78.47.171.185, mailfrom: stefan@datenfreihafen.org)
Received: from [IPv6:2003:e9:d722:1c17:562f:1f54:5720:8a95] (p200300e9d7221c17562f1f5457208a95.dip0.t-ipconnect.de [IPv6:2003:e9:d722:1c17:562f:1f54:5720:8a95])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: stefan@datenfreihafen.org)
	by proxima.lasnet.de (Postfix) with ESMTPSA id 795EBC0293
	for <yocto@lists.yoctoproject.org>; Thu, 10 Jun 2021 10:30:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=datenfreihafen.org;
	s=2021; t=1623313849;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=HwyfAr+tSkbbP8Yc1ohW15msGe9aP0dFbnpTcnOZfK8=;
	b=wKuODk5gv3W1T6T4WwmnmttyyfrN8JlYM38npTWpQVP0Zt4OKbC7NLkvBXoMWIBWCt8mzy
	OEMs3vveNqPu8Q8p29DzkKNlMAzrwaasPF5EGb8QcBLQvPeE+mhTOxqRdthiAgeduvYJTc
	WZvZQbCLRZN1n4BHrNOQSOls9X4Kas3ri8RUerKmgTzDh4wS+uWGDN1F+SWOsNGR6yyvsQ
	C8do3P5pC3OZ3ZiZZeXDMxS5TJN+nshsTawcYbGQlmxcIWCoOlXlsYAZ4BU3jaZ1kROK77
	M0UyM93l2R2UwwliYQyOpFFXVfe1u3YiWenIIcwJNi0gSgr1A2pKWT7N2polsg==
Subject: Re: [yocto] [PATCH 1/2] zephyr-kernel: Add OpenThread module to build
To: yocto@lists.yoctoproject.org
References: <1684311F98CA2297.21857@lists.yoctoproject.org>
 <16868AED9FCC2F35.10003@lists.yoctoproject.org>
From: "Stefan Schmidt" <stefan@datenfreihafen.org>
Message-ID: <7c122c9e-b3f5-f1ff-1061-96d91e33cd0b@datenfreihafen.org>
Date: Thu, 10 Jun 2021 10:30:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <16868AED9FCC2F35.10003@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hello.

On 08.06.21 09:31, Stefan Schmidt wrote:
> Hello.
>=20
> On 31.05.21 17:42, Stefan Schmidt wrote:
>> From: Stefan Schmidt <stefan.schmidt@huawei.com>
>>
>> OpenThread support in Zephyr is realised as an external module. Make
>> sure we pull it in and have it available for applications to use it.
>>
>> Signed-off-by: Stefan Schmidt <stefan.schmidt@huawei.com>
>> ---
>> =C2=A0 recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 1 +
>> =C2=A0 recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0-rc1.inc | =
1 +
>> =C2=A0 recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 1 +
>> =C2=A0 3 files changed, 3 insertions(+)
>>
>> diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc=20
>> b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
>> index c9acbbb..eb5e75a 100644
>> --- a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
>> +++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
>> @@ -30,6 +30,7 @@ ZEPHYR_MODULES_append_nordic =3D=20
>> "\;${S}/modules/hal/nordic"
>> =C2=A0 ZEPHYR_MODULES_append_stm32 =3D "\;${S}/modules/hal/stm32"
>> =C2=A0 ZEPHYR_MODULES_append_mbedtls =3D "\;${S}/modules/lib/mbedtls"
>> =C2=A0 ZEPHYR_MODULES_append_openamp =3D=20
>> "\;${S}/modules/lib/open-amp\;${S}/modules/hal/libmetal"
>> +ZEPHYR_MODULES_append_openthread =3D "\;${S}/modules/lib/openthread"
>> =C2=A0 EXTRA_OECMAKE_append =3D " -DZEPHYR_MODULES=3D${ZEPHYR_MODULES}=
"
>> diff --git=20
>> a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0-rc1.inc=20
>> b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0-rc1.inc
>> index a0e358e..546eb35 100644
>> --- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0-rc1.inc
>> +++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0-rc1.inc
>> @@ -4,6 +4,7 @@ SRCREV_cmsis =3D "c3bd2094f92d574377f7af2aec147ae181aa=
5f8e"
>> =C2=A0 SRCREV_nordic =3D "574493fe29c79140df4827ab5d4a23df79d03681"
>> =C2=A0 SRCREV_stm32 =3D "f8ff8d25aa0a9e65948040c7b47ec67f3fa300df"
>> =C2=A0 SRCREV_open-amp =3D "6010f0523cbc75f551d9256cf782f173177acdef"
>> +SRCREV_openthread =3D "385e19da1ae15f27872c2543b97276a42f102ead"
>> =C2=A0 SRCREV_libmetal =3D "39d049d4ae68e6f6d595fce7de1dcfc1024fb4eb"
>> =C2=A0 SRCREV_tinycrypt =3D "3e9a49d2672ec01435ffbf0d788db6d95ef28de0"
>> =C2=A0 SRCREV_mbedtls =3D "5765cb7f75a9973ae9232d438e361a9d7bbc49e7"
>> diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc=20
>> b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
>> index 069fa56..4df5e7e 100644
>> --- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
>> +++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
>> @@ -15,6 +15,7 @@ SRC_URI =3D "\
>>      =20
>> git://github.com/zephyrproject-rtos/hal_stm32.git;protocol=3Dhttps;des=
tsuffix=3Dgit/modules/hal/stm32;name=3Dstm32=20
>> \
>>      =20
>> git://github.com/zephyrproject-rtos/mbedtls.git;protocol=3Dhttps;dests=
uffix=3Dgit/modules/lib/mbedtls;name=3Dmbedtls=20
>> \
>>      =20
>> git://github.com/zephyrproject-rtos/open-amp.git;protocol=3Dhttps;dest=
suffix=3Dgit/modules/lib/open-amp;name=3Dopen-amp=20
>> \
>> +   =20
>> git://github.com/zephyrproject-rtos/openthread.git;protocol=3Dhttps;br=
anch=3Dzephyr;destsuffix=3Dgit/modules/lib/openthread;name=3Dopenthread=20
>> \
>>      =20
>> git://github.com/zephyrproject-rtos/libmetal.git;protocol=3Dhttps;dest=
suffix=3Dgit/modules/hal/libmetal;name=3Dlibmetal=20
>> \
>>      =20
>> git://github.com/zephyrproject-rtos/tinycrypt.git;protocol=3Dhttps;des=
tsuffix=3Dgit/modules/crypto/tinycrypt;name=3Dtinycrypt=20
>> \
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://0001-cmake-add-yocto-toolchain.p=
atch \
>>
>=20
>=20
> Friendly reminder on these two. :-)

Rebased on the 2.6 changes now and send a v2 (also with the right=20
meta-zephyr prefix this time).

regards
Stefan Schmidt

