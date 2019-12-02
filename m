Received: from esa7.bmw.c3s2.iphmx.com (esa7.bmw.c3s2.iphmx.com [68.232.133.109])
 by mx.groups.io with SMTP id smtpd.web12.2082.1575298144179460506
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Dec 2019 06:49:05 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@bmw.de header.s=mailing1 header.b=kYQMKFUR;
 spf=pass (domain: bmw.de, ip: 68.232.133.109, mailfrom: prvs=2322e7b47=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1575298144; x=1606834144;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=eJs70lhBBoSW+7jqAXUgSGdUZJ9haG0LhDQoY4IB1A0=;
  b=kYQMKFUR12+iSC80lGVAM8Zp5aRYWKuw6REfhQ+QTlu2TRU6axrdbkAB
   BvOSk5h0Ln6GPV7pj1y2Yr18em8Hopad0lpL03T+OfQgvmlSSRJYjUDYy
   50osp7Z21u1+V1pZqVgaX6R5OXShxo9er3HDgILcCdczviVDPOsTeD8vh
   8=;
IronPort-SDR: ck62IdKs16Wysc++kIp3xB3kVYBgC+fIwPJtKGa7GhTFCdMycuAYa0rfuOngXDzF9eVNX8p509
 RG4SOEkyf7/2U1BeE6gOr9FLt+33MgAbpbTHzTEDaOtmUEcD30Qt5/3yRRqXiDQq88nuxtDoCM
 ZLjsFoHCGKqY+1fOAfQkQ16kiOfpAjciPeFlS+yAy0IM4vHFY3JKtYIBb3WIlMwkc82cw15yOa
 QIFwOyVEeQbCEg1CoDDMxw1VqBRwYg1msoyYCitLVUI8aAbu3J7EQBlVVcNrHtRhsUHC4lnMer
 RaE=
Received: from esagw4.bmwgroup.com (HELO esagw4.muc) ([160.46.252.39]) by
 esa7.bmw.c3s2.iphmx.com with ESMTP/TLS; 02 Dec 2019 15:09:35 +0100
Received: from esabb1.muc ([160.50.100.31])  by esagw4.muc with ESMTP/TLS;
 02 Dec 2019 15:09:34 +0100
Received: from smucm10m.bmwgroup.net (HELO smucm10m.europe.bmw.corp) ([160.48.96.49])
 by esabb1.muc with ESMTP/TLS; 02 Dec 2019 15:09:34 +0100
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by smucm10m.europe.bmw.corp
 (160.48.96.49) with Microsoft SMTP Server (TLS;
 Mon, 2 Dec 2019 15:09:34 +0100
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
 smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1473.005; Mon, 2
 Dec 2019 15:09:34 +0100
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <bunk@stusta.de>
CC: <mike.looijmans@topic.nl>, <peter@berginkonsult.se>,
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] linux-libc-headers - how to handle for older kernels?
Thread-Topic: [yocto] linux-libc-headers - how to handle for older kernels?
Thread-Index: AQHVqJJSvJlOU9RAhEeZfZeyLe0uqqemf7KAgAABpwCAAAJWgIAAAYmAgABK6oCAAAI0AA==
Date: Mon, 2 Dec 2019 14:09:34 +0000
Message-ID: <20191202140934.GP3527@hiutale>
References: <93249840-e25f-bb2d-39af-325c15ae7afe@berginkonsult.se>
 <dcb9a8b4-88c5-5b1e-00ba-4b89f809e3d3@topic.nl>
 <20191202091942.GF3527@hiutale>
 <aa713358-4ec7-5215-25f6-ef13f513c97f@topic.nl>
 <20191202093333.GI3527@hiutale> <20191202140140.GB1581@localhost>
In-Reply-To: <20191202140140.GB1581@localhost>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <BAB5D2DE504C8846AEACEB1A3E8D64B2@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 02, 2019 at 04:01:41PM +0200, Adrian Bunk wrote:
> On Mon, Dec 02, 2019 at 09:33:33AM +0000, Mikko Rapeli wrote:
> >...
> > On Mon, Dec 02, 2019 at 09:28:03AM +0000, Mike Looijmans wrote:
> > > One solution I can think of is to put the header into it's own=20
> > > recipe/repository and then refer to it like any other library would. =
Refer to=20
> > > that recipe from the module (or kernel) recipe that needs it. This wa=
y you=20
> > > have your header in a single maintainable location and dependencies p=
roperly=20
> > > taken care of.
> > >=20
> > > If that's not something you could live with, share your recipes, sinc=
e vague=20
> > > problem descriptions will only get you vague solutions...
> >=20
> > This is the problem I see with multiple BSPs. In the end for every one =
of them
> > the best solution is to fork linux-libc-headers.
> >...
>=20
> The fork can be a .bbappend with a patch adding the required
> definitions to linux-libc-headers.

Yes, this is what I meant. Basically just adjust the SRC_URI and possibly P=
V
through a linux-libc-headers_%.bbappend in product or BSP specific meta lay=
er.

Cheers,

-Mikko=
