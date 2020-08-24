Received: from esa4.hc324-48.eu.iphmx.com (esa4.hc324-48.eu.iphmx.com [207.54.71.48])
 by mx.groups.io with SMTP id smtpd.web12.1423.1598289054906158774
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Aug 2020 10:10:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bmw.de header.s=mailing1 header.b=QfBA2xd6;
 spf=pass (domain: bmw.de, ip: 207.54.71.48, mailfrom: prvs=498975cca=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1598289055; x=1629825055;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=MdOPy2PMjasr7eMUu5Lrf15vCvLMz/gRrFWT0YPLoXQ=;
  b=QfBA2xd66FQDddH/aexjVsZj+uOGBP9e2Jl9EN4XmlJ64JTtG7edeT9q
   krktWovmdMj0WMp1Lv+7JQzEVl9yvpD9Ksf1V3LdS9ksEvq0gAzhbR0oO
   uAqf40ua0jzTZ4RxSJ478iU/JHDWS5gqJwhJwloJWQRL+nhtjPZiDvMGh
   o=;
Received: from esagw4.bmwgroup.com (HELO esagw4.muc) ([160.46.252.39]) by
 esa4.hc324-48.eu.iphmx.com with ESMTP/TLS; 24 Aug 2020 19:10:52 +0200
Received: from esabb6.muc ([160.50.100.50])  by esagw4.muc with ESMTP/TLS;
 24 Aug 2020 19:10:52 +0200
Received: from smucm10j.bmwgroup.net (HELO smucm10j.europe.bmw.corp) ([160.48.96.46])
 by esabb6.muc with ESMTP/TLS; 24 Aug 2020 19:10:51 +0200
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by smucm10j.europe.bmw.corp
 (160.48.96.46) with Microsoft SMTP Server (TLS;
 Mon, 24 Aug 2020 19:10:51 +0200
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
 smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1497.006; Mon,
 24 Aug 2020 19:10:51 +0200
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <steven.monsees@baesystems.com>
CC: <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Yocto standard SDK/cmake/ and meta-clang build issue
Thread-Topic: [yocto] Yocto standard SDK/cmake/ and meta-clang build issue
Thread-Index: AdZ6IfO2Uwpejy3qT9io6cQTMhdwIgABsy8A
Date: Mon, 24 Aug 2020 17:10:51 +0000
Message-ID: <20200824171050.GS108868@korppu>
References: <MADEUP.162E3B22E7C10FBE.21931@lists.yoctoproject.org>
In-Reply-To: <MADEUP.162E3B22E7C10FBE.21931@lists.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <B48BD6628424EC43B1CBF1188E0FF87D@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Aug 24, 2020 at 02:38:54PM +0000, Monsees, Steven C (US) via lists.=
yoctoproject.org wrote:
>=20
> I am having trouble with configuring my SDK for meta-clang...
>=20
> When I build my SDK, I setup the following:
>=20
> SDKMACHINE =3D "x86_64"
> SDKIMAGE_FEATURES_append =3D " staticdev-pkgs"
> TOOLCHAIN_HOST_TASK_append =3D "${SDK_EXTRA_TOOLS}"
> SDK_EXTRA_TOOLS =3D "  \
>     nativesdk-cmake \
>     nativesdk-clang \

I was wondering on same thing few days ago.

nativesdk-clang and clang-cross-canadian-aarch64 if your target arch is aar=
ch64
bring a working clang compiler to the SDK.

I was also missing the clang-cross bit for a long time and scratching my
head.

Hope this helps,

-Mikko=
