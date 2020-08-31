Received: from esa4.hc324-48.eu.iphmx.com (esa4.hc324-48.eu.iphmx.com [207.54.71.48])
 by mx.groups.io with SMTP id smtpd.web10.50929.1598871063559835839
 for <yocto@lists.yoctoproject.org>;
 Mon, 31 Aug 2020 03:51:04 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@bmw.de header.s=mailing1 header.b=WXwUIJ/S;
 spf=pass (domain: bmw.de, ip: 207.54.71.48, mailfrom: prvs=505975d9f=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1598871063; x=1630407063;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=veLeIqhoAVuWAyOzKNmndqqARqE2P9uFOAjXGZf7DgI=;
  b=WXwUIJ/Sfb4ndS5QtVs8QchCpTiXpeTdX51VI5r+zXi4f6Z4civb85p1
   Eve5L5vnWGjFIfHrHAiaOoHaSpUhqhCDW9rXkRjR1TZmD6OWyIg3qr99A
   TcRK55OGt3KhB5aAdqVKT2h7P6wV99WZ6+T/MwILHaW3mInNvo1fqGAF+
   Y=;
Received: from esagw1.bmwgroup.com (HELO esagw1.muc) ([160.46.252.34]) by
 esa4.hc324-48.eu.iphmx.com with ESMTP/TLS; 31 Aug 2020 12:50:59 +0200
Received: from esabb4.muc ([160.50.100.33])  by esagw1.muc with ESMTP/TLS;
 31 Aug 2020 12:50:59 +0200
Received: from smucm10l.bmwgroup.net (HELO smucm10l.europe.bmw.corp) ([160.48.96.48])
 by esabb4.muc with ESMTP/TLS; 31 Aug 2020 12:50:59 +0200
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by smucm10l.europe.bmw.corp
 (160.48.96.48) with Microsoft SMTP Server (TLS;
 Mon, 31 Aug 2020 12:50:59 +0200
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
 smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1497.006; Mon,
 31 Aug 2020 12:50:59 +0200
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <alex.kanavin@gmail.com>
CC: <majid.nasiry65@gmail.com>, <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Backport some packages
Thread-Topic: [yocto] Backport some packages
Thread-Index: AQHWf3Qs+tes241L+UO57M7xllCJ1KlR0voAgAAVzgA=
Date: Mon, 31 Aug 2020 10:50:59 +0000
Message-ID: <20200831105058.GE2162@korppu>
References: <G4Or.1598863972268843731.gimU@lists.yoctoproject.org>
 <CANNYZj_VWjmPswgd_yfgBSYWtQU9fh5CHRpmATtPJ_V9QqGGMw@mail.gmail.com>
In-Reply-To: <CANNYZj_VWjmPswgd_yfgBSYWtQU9fh5CHRpmATtPJ_V9QqGGMw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <F4E56CF21FC9B4469D714286DB2C3CB9@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Aug 31, 2020 at 11:32:56AM +0200, Alexander Kanavin wrote:
> The best is to ask your BSP supplier to provide a new version of the BSP
> that is compatible with recent Yocto versions.
>=20
> Backporting userspace stuff is difficult or impossible.

For those who aren't afraid to digging deeper, it is possible to limit
the impact of BSP layers by e.g. restricting which recipes and bbappends
get applied in your product via BBMASK in distro config for example.
This enables much, much faster updates cycles since fixing one or two BSP =
recipes
for new yocto version is easier than waiting and possibly paying for a ful=
l
update with all bells and whistles.

In many cases users don't need all patches and changes provided in BSP SW =
layers.
In some cases they are even undesirable.

But yes, talking to BSP supplier(s) is a good start.

Cheers,

-Mikko

> Alex
>=20
> On Mon, 31 Aug 2020 at 10:52, <majid.nasiry65@gmail.com> wrote:
>=20
> > Hi
> > How can I backport some package (e.g php, cmake). My BSP only work in =
Krogoth
> > version and I want to use some new package (e.g from Sumo version).
> > I'm new in this stuffs. I don't know mybe the best way is I rewrite BS=
Ps
> > and update whole project, anyway I don't know how can I do this too!
> >
> > Please help=20
> >

>=20
