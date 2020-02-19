Received: from esa10.bmw.c3s2.iphmx.com (esa10.bmw.c3s2.iphmx.com [68.232.139.98])
 by mx.groups.io with SMTP id smtpd.web11.305.1582149678340419444
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 14:01:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bmw.de header.s=mailing1 header.b=CwGA0ejC;
 spf=pass (domain: bmw.de, ip: 68.232.139.98, mailfrom: prvs=311c70376=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1582149678; x=1613685678;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-id:content-transfer-encoding:mime-version;
  bh=0S7D+MdVSv5qjK5eo7bqgUGSHhpr+Ie7ajbl25Mwuco=;
  b=CwGA0ejCuZFweOW/6TBi/RhXf35SeLKaVBVCnMpdfMYSfLt/U4EQw06C
   KXblwPqT+OLtv7VemzWCUrPo6uT3M/mXKJtxk5sWhBmdnc/v5cF3bceZf
   54JE/V0U6dzr5liLBSBQWtSHIXzxQglotvuSvgGel9KaNJ5a/vA35pSMF
   I=;
IronPort-SDR: 7SYcqkliOoqWrleuDYOWZE9GLzr/BUob0DZdaj9ncj/ibQ/TmSzphbdm/Ydvcb49vB8mjOtOUj
 a2KchZYpPya8/NIKl2qFB1Yr78odqJA6oNHhJyEQsN9q47zYoNjM1CpvGibKA21KTdMGw2cDna
 u6TzyGsg/0LKWGTsnSvGvCvZY5+nGOrwin+xb9nMYr1hNnlyxco2LO7j+gazMtc7T9gWRbS2F4
 M8mEOBFn8AaGVmdxxkMsXvYrPf+rzPLfvcnRSCaWTJGdc9Qw7KG72mqTwvuck2FyvddzAMpuSZ
 MHI=
Received: from esagw6.bmwgroup.com (HELO esagw6.muc) ([160.46.252.49]) by
 esa10.bmw.c3s2.iphmx.com with ESMTP/TLS; 19 Feb 2020 16:57:22 +0100
Received: from esabb6.muc ([160.50.100.50])  by esagw6.muc with ESMTP/TLS;
 19 Feb 2020 16:57:22 +0100
Received: from smucm10m.bmwgroup.net (HELO smucm10m.europe.bmw.corp) ([160.48.96.49])
 by esabb6.muc with ESMTP/TLS; 19 Feb 2020 16:57:22 +0100
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by smucm10m.europe.bmw.corp
 (160.48.96.49) with Microsoft SMTP Server (TLS;
 Wed, 19 Feb 2020 16:57:22 +0100
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
 smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1473.005; Wed,
 19 Feb 2020 16:57:21 +0100
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <j.armandohernandez.j@gmail.com>, <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] how to reuse generated library in a nativesdk recipe #sdk #systemd
Thread-Topic: [yocto] how to reuse generated library in a nativesdk recipe
 #sdk #systemd
Thread-Index: AQHV5wg0rpjF7EdG7kGTb2Q0RzuE0KgiM38AgABmhQCAAAGxgA==
Date: Wed, 19 Feb 2020 15:57:21 +0000
Message-ID: <20200219155721.GD104502@korppu>
References: <m6OI.1582105039365385215.XDJN@lists.yoctoproject.org>
 <20200219094422.GV104502@korppu>
 <CAGpycA+PGsbqnJL1FD8pPNzWK3203RoBTPPD08Vwjn5J9aGMJA@mail.gmail.com>
In-Reply-To: <CAGpycA+PGsbqnJL1FD8pPNzWK3203RoBTPPD08Vwjn5J9aGMJA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <0A415A6710096748A1E57941B46C3A8F@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

Hi,

(lets keep this on the list too)

On Wed, Feb 19, 2020 at 04:51:18PM +0100, Armando Hernandez wrote:
> Hi Mikko,
>=20
> Thanks for your reply. I checked your suggestion but does not work for me=
.
> I did included a .bbappend file in which I:
>=20
>    - re-set EXTRA_OECMAKE to an empty string (i.e. ""). - my intention wa=
s
>    to pass no arguments when building the nativesdk. Now I know that this
>    accion overwrites the value of EXTRA_OECMAKE in the original .bb file
>    - added the line BBCLASSEXTEND =3D "nativesdk" to this new .bbappend f=
ile
>    - added the line DEPENDS_class-target +=3D "systemd" to the original .=
bb
>    file
>=20
> I found out that this configures both the target and the nativesdk
> libraries without systemd - which later on causes a failure when bitbake
> attempts to pull up everything to create the final image.
>=20
> Basically, I'd like to find a way to unset or overwrite the following
> variables when building the nativesdk package:
>=20
>    - SYSTEMD_PACKAGES
>    - SYSTEMD_SERVICE_${PN}
>    - SYSTEMD_AUTO_ENABLE_${PN}
>    - SYSTEMD_SERVICE_${PN}-systemd
>    - SYSTEMD_AUTO_ENABLE_${PN}-systemd
>    - EXTRA_OECMAKE

You can add _class-[target|native|nativesdk] to all variables
to override defaults.

Verify with "bitbake -e".

Hope this helps,

-Mikko

> Is it possible to do so? Or do I come up with another recipe of the sama
> package exclusively for the nativesdk?
>=20
> Thanks again.
>=20
> Armando Hernandez
>=20
> On Wed, Feb 19, 2020 at 10:44 AM <Mikko.Rapeli@bmw.de> wrote:
>=20
> > Hi,
> >
> > On Wed, Feb 19, 2020 at 01:37:19AM -0800, Armando Hernandez wrote:
> > > Hello,
> > >
> > > I have a recipe that builds a library. The recipe specifies an
> > additional package "${PN}-systemd" along with other systemd related
> > variables and finally it instructs that the package should be built wit=
h
> > "-DWITH_SYSTEMD=3DON" being passed to cmake. So far so good. But, I ext=
ended
> > this recipe to nativesdk because I need this library on it. When trying=
 to
> > build the corresponding nativesdk package, the build fails at the
> > configuration step (i.e. "do_configure") claiming it cannot find the
> > package systemd.
> > >
> > > Is there a way I can install the -already-generated libraries into my
> > SDK (potentially via the corresponding nativesdk recipe) without having=
 to
> > rebuild the package? Or do I need to somehow include such systemd packa=
ge
> > in my sdk (which I don't think I need at all)?
> > >
> > > Any hints and pointers as to were to look at are very well appreciate=
d.
> > > Thanks.
> >
> > Make the systemd dependency for target only, e.g. DEPENDS_class-target =
+=3D
> > "systemd"
> > etc.
> >
> > There may be relevant use cases to build some of systemd components or
> > tools
> > to native or nativesdk targets too. In that case add BBCLASSEXTEND +=3D
> > "nativesdk" etc
> > in a bbappend to systemd.
> >
> > Hope this helps,
> >
> > -Mikko=
