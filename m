Received: from esa9.hc324-48.eu.iphmx.com (esa9.hc324-48.eu.iphmx.com [207.54.69.27])
 by mx.groups.io with SMTP id smtpd.web08.10689.1614352875256420750
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Feb 2021 07:21:16 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@bmw.de header.s=mailing1 header.b=N9BIrGau;
 spf=pass (domain: bmw.de, ip: 207.54.69.27, mailfrom: prvs=6845c8010=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1614352875; x=1645888875;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=6T2bjwRXZaTGAXP0D0IRSqbxS7V7Uqi4rMABcd10UrA=;
  b=N9BIrGauqgv3sUMkKmAhM5leek6We9zNt2w03dKu6TFjd0tku+kAwCKS
   T081FG2FgawpOpbE4oXXLjI93uFxEdHB20kC7UhRM3i/xv2jY3ntxQN0y
   qjxGotL9U3KyifrpoY5Mw1Q8e8I5+Z8Swmr/EtAuIQE1G6/uyKXWtE4YD
   0=;
Received: from esagw6.bmwgroup.com (HELO esagw6.muc) ([160.46.252.49]) by
 esa9.hc324-48.eu.iphmx.com with ESMTP/TLS; 26 Feb 2021 16:21:12 +0100
Received: from esabb6.muc ([160.50.100.50])  by esagw6.muc with ESMTP/TLS;
 26 Feb 2021 16:21:11 +0100
Received: from smucm33l.bmwgroup.net (HELO smucm33l.europe.bmw.corp) ([160.46.167.68])
 by esabb6.muc with ESMTP/TLS; 26 Feb 2021 16:21:11 +0100
Received: from smucm33l.europe.bmw.corp (160.46.167.68) by smucm33l.europe.bmw.corp
 (160.46.167.68) with Microsoft SMTP Server (TLS;
 Fri, 26 Feb 2021 16:21:11 +0100
Received: from smucm33l.europe.bmw.corp ([160.46.167.68]) by
 smucm33l.europe.bmw.corp ([160.46.167.68]) with mapi id 15.00.1497.010; Fri,
 26 Feb 2021 16:21:11 +0100
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <cJ-yocto@zougloub.eu>
CC: <mikko.murto@hhpartners.fi>, <yocto@lists.yoctoproject.org>,
	<licensing@lists.yoctoproject.org>
Subject: Re: [licensing] [yocto] Package names in IMAGE_MANIFEST and PACKAGES
Thread-Topic: [licensing] [yocto] Package names in IMAGE_MANIFEST and PACKAGES
Thread-Index: AdcMSTQmr6+AtqswQG6gpiPYqqc34v///2SAgAADdIA=
Date: Fri, 26 Feb 2021 15:21:10 +0000
Message-ID: <YDkR5bUm7W9qCSyg@korppu>
References: <6de2fa72e60448a9980a3ff820f225bf@hhpartners.fi>
 <20210226100914.33f5684c@pouet.cJ>
In-Reply-To: <20210226100914.33f5684c@pouet.cJ>
Accept-Language: en-US, de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <0F230EFA7F98214A8358A30D9FEA6BD6@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Feb 26, 2021 at 10:08:47AM -0500, J=E9r=F4me Carretero wrote:
> On Fri, 26 Feb 2021 14:18:59 +0000
> "Mikko Murto" <mikko.murto@hhpartners.fi> wrote:
>=20
> > The crux of the matter is that I need to find packages created by recip=
es and to link the packages listed in image's manifest files to these packa=
ges.=20
>=20
> The way I've been doing it, which is probably not optimal and specific
> to one package format, is to lookup .ipk packages from the image
> manifest, then use the .ipk control info "OE" key to find the
> originating recipe.

FWIW, the mapping from binary package names recipes and recipe metadata lik=
e
LICENSE is available from buildhistory. Also binary package content of imag=
es
is available from buildhistory. With some scripting it is possible to list
recipes which produce binaries to images, except for static linking and
header-only recipes but I hope these cought via some other way.

Cheers,

-Mikko=
