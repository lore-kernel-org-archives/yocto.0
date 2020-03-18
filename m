Received: from esa7.bmw.c3s2.iphmx.com (esa7.bmw.c3s2.iphmx.com [68.232.133.109])
 by mx.groups.io with SMTP id smtpd.web10.18667.1584546695995725364
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Mar 2020 08:51:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bmw.de header.s=mailing1 header.b=gB++YvQb;
 spf=pass (domain: bmw.de, ip: 68.232.133.109, mailfrom: prvs=339894f69=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1584546696; x=1616082696;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=FPNBwPHgI3dY4ipfVeKVnsX0E9uQ00AZl1yaEb4g3rE=;
  b=gB++YvQblooRmTLw9042YnEcwZB3QJrYAyoFXyszjeZinFd7+t4C5+r4
   YMSXA0OSsnXPigE+Sp0hYbTxVgP8wYKYOeQcN+V/atJTtmki/xHvIE3L6
   yPYrqb+e0IrCWMrVcDvITexzTR0kKmluTPDQM1HBHclN9g5lFM9nksTzF
   s=;
Received: from esagw3.bmwgroup.com (HELO esagw3.muc) ([160.46.252.35]) by
 esa7.bmw.c3s2.iphmx.com with ESMTP/TLS; 18 Mar 2020 16:51:34 +0100
Received: from esabb3.muc ([160.50.100.30])  by esagw3.muc with ESMTP/TLS;
 18 Mar 2020 16:51:33 +0100
Received: from smucm10l.bmwgroup.net (HELO smucm10l.europe.bmw.corp) ([160.48.96.48])
 by esabb3.muc with ESMTP/TLS; 18 Mar 2020 16:51:33 +0100
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by smucm10l.europe.bmw.corp
 (160.48.96.48) with Microsoft SMTP Server (TLS;
 Wed, 18 Mar 2020 16:51:33 +0100
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
 smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1473.005; Wed,
 18 Mar 2020 16:51:33 +0100
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <mike.looijmans@topic.nl>
CC: <bunk@stusta.de>, <jean-marie.lemetayer@savoirfairelinux.com>,
	<pbarker@konsulko.com>, <oliver.westermann@cognex.com>,
	<yocto@lists.yoctoproject.org>, <embedded-discuss@lists.savoirfairelinux.net>
Subject: Re: [yocto] What are the key factors for yocto build speed?
Thread-Topic: [yocto] What are the key factors for yocto build speed?
Thread-Index: AQHV/SQvHMEDglrWJECufLQaId00LqhOP5+AgAAH1gCAAAv/AIAACj8AgAAFvYCAAAu0AA==
Date: Wed, 18 Mar 2020 15:51:33 +0000
Message-ID: <20200318155132.GO104502@korppu>
References: <rCbr.1584535957803213201.lfzw@lists.yoctoproject.org>
 <20200318130126.GK104502@korppu>
 <CAM9ZRVuQyj7X0YFqkpSFWM2=kQHnu8ZGpMsD34ntHYny4x7XJg@mail.gmail.com>
 <251912923.167286.1584540746314.JavaMail.zimbra@savoirfairelinux.com>
 <20200318144906.GC23112@localhost>
 <080227a9-b5f2-8e3e-201f-5285a1f80e2d@topic.nl>
In-Reply-To: <080227a9-b5f2-8e3e-201f-5285a1f80e2d@topic.nl>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <8EAC9195ECA29942B59277E7EB14719D@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 18, 2020 at 04:09:39PM +0100, Mike Looijmans wrote:
> On 18-03-2020 15:49, Adrian Bunk via Lists.Yoctoproject.Org wrote:
> > On Wed, Mar 18, 2020 at 10:12:26AM -0400, Jean-Marie Lemetayer wrote:
> > > ...
> > > For example one of our build servers is using:
> > > - AMD Ryzen 9 3900X
> > > ...
> > > - 32Go DDR4 3200 MHZ CL14
> > > ...
> > > It is a really good price / build time ratio configuration.
> >=20
> > Depends on what you are building.
> >=20
> > Building non-trivial C++ code (e.g. webkitgtk) with 24 cores
> > but only 32 GB RAM will not work, for such code you need
> > more than 2 GB/core.
>=20
> Seems a bit excessive to buy hardware just to handle a particular corner
> case. Most of OE/Yocto code is plain C, not even C++.
>=20
> My rig only has 8GB but doesn't run into memory issues during big GUI
> builds. The only thing that made it swap was the populate_sdk task that
> created a 1.1GB fiel and needed 20GB of RAM to compress that. Took a few
> minutes more due to swapping.
> I submitted a patch today to fix that in OE.
>=20
> Your mileage may vary. But RAM is easy to add.

Well, I can't build with under 2 gigs per core or I run out of physical mem=
ory
and kernel oom-killer kicks in to kill the build. Also can't run
with yocto default parallel settings which only take into account the
number of cores and thus have a custom script which does caps the threads
so that 2 gigs of RAM for each are available.

Though I'm sure plain C and plain poky projects have less requirements for =
RAM.

-Mikko=
