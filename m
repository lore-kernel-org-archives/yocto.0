Received: from esa3.bmw.c3s2.iphmx.com (esa3.bmw.c3s2.iphmx.com [68.232.133.150])
 by mx.groups.io with SMTP id smtpd.web12.45019.1585551862111775333
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Mar 2020 00:04:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bmw.de header.s=mailing1 header.b=CBLlLm2z;
 spf=pass (domain: bmw.de, ip: 68.232.133.150, mailfrom: prvs=3511a2862=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1585551863; x=1617087863;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=bes7LWpeNv3u1uZ/LPbOhOZhpSRC2KlJEaFYQboyiO4=;
  b=CBLlLm2zDeAy9uBC/QMs3sufwiPMU1uGtnYHqwjH0lfMYrs/Obw1YnEt
   F1s+e05c5J0jSOgpvkgOvmUpKI69VOJBkjn47SiLUixrllRrQ7dK/AnMU
   nPgXm3raOO2nRvNfroVrpC9qLsbmaXQANFOPglrvPtdu6XBn82zR8LEr5
   A=;
Received: from esagw4.bmwgroup.com (HELO esagw4.muc) ([160.46.252.39]) by
 esa3.bmw.c3s2.iphmx.com with ESMTP/TLS; 30 Mar 2020 09:04:21 +0200
Received: from esabb1.muc ([160.50.100.31])  by esagw4.muc with ESMTP/TLS;
 30 Mar 2020 09:04:20 +0200
Received: from smucm10l.bmwgroup.net (HELO smucm10l.europe.bmw.corp) ([160.48.96.48])
 by esabb1.muc with ESMTP/TLS; 30 Mar 2020 09:04:20 +0200
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by smucm10l.europe.bmw.corp
 (160.48.96.48) with Microsoft SMTP Server (TLS;
 Mon, 30 Mar 2020 09:04:20 +0200
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
 smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1473.005; Mon,
 30 Mar 2020 09:04:20 +0200
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <ajama@hcl.com>
CC: <raj.khem@gmail.com>, <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Image size reduction
Thread-Topic: [yocto] Image size reduction
Thread-Index: AQHWBeZcNGow7JB2ME2ZHxK+8kxKv6hf8LOAgABgmYCAAEQ9gA==
Date: Mon, 30 Mar 2020 07:04:20 +0000
Message-ID: <20200330070419.GT104502@korppu>
References: <HK0PR04MB2914D21E1391217F6E47708DB4CA0@HK0PR04MB2914.apcprd04.prod.outlook.com>
 <CAMKF1spcwhbFNYrVjd8TgNiWG2EWWFN8rm=fM0_VsV4hQ=ZqFA@mail.gmail.com>
 <HK0PR04MB2914115F5AB129C9AEB709FFB4CB0@HK0PR04MB2914.apcprd04.prod.outlook.com>
In-Reply-To: <HK0PR04MB2914115F5AB129C9AEB709FFB4CB0@HK0PR04MB2914.apcprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <26FFD23E6B24234D9B722CD9B48FD064@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 30, 2020 at 03:00:05AM +0000, Ajam Ali wrote:
> Hi khemraj,
>=20
> Please suggest the way to reduce the image size. Your earlier suggestion =
is not that much helpful.

Actually suggestion to use buildhistory is the first critical step because =
without
this you can't easily see where the size comes from. buildhistory provides
for example the list of installed binary packages ordered by size for every=
 image
built. Then it enables you to easily check the dependencies of variour pack=
ages
and detect, e.g. who brings perl or python to the image.

Cheers,

-Mikko=
