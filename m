Received: from esa9.bmw.c3s2.iphmx.com (esa9.bmw.c3s2.iphmx.com [68.232.133.110])
 by mx.groups.io with SMTP id smtpd.web12.4578.1582200102717178144
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Feb 2020 04:01:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bmw.de header.s=mailing1 header.b=SB8qe8qP;
 spf=pass (domain: bmw.de, ip: 68.232.133.110, mailfrom: prvs=312a66309=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1582200103; x=1613736103;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=Pf5qXSysBPdJKAb6FUeBUW3TlPzaD7s2LFmjRCY5fRc=;
  b=SB8qe8qP8UuDUGg3kYgfaeUA0XvdNTgRLhzh2BF8oVckmUGsZNwiNd+q
   kBUIF/TUDqpLbcuxAho1tMQ8zAhBAxQKcSoYvVnwtMGKiVP2Hrs5agpgq
   OqWNaNxt2+BAaD3ALEmsYmXGCf6i3EiPg3m0h3VnGyqLpYDo46F0jyyrE
   U=;
IronPort-SDR: juoIBs3YluRB9IZRnwWKq6W/4dWbaiMC3gVy/1M3mRW6WCiMkwUqTCR4F95G5jMOSyyqfMu4gS
 /ZkYPDDVrGE1IU49fztDpQwHoH04lnVnCWzMr2Fs32RjP3oizZJOb+jfvhA/2xXbG18OecfP/q
 7q09jT16coIwRalxxfrAd3eJY0Dj8aaZgXKEdPM58MByqKEUxme+vksuwZf0DinkFsq0xE94iM
 YCBJu0g238AmcRg6Ff0QI8i2mQhDbfnyginlJyd1BJjNDmPgMW2gO6sdH6Gz6XsXlgTb/xqITS
 GhA=
Received: from esagw5.bmwgroup.com (HELO esagw5.muc) ([160.46.252.46]) by
 esa9.bmw.c3s2.iphmx.com with ESMTP/TLS; 20 Feb 2020 13:01:39 +0100
Received: from esabb3.muc ([160.50.100.30])  by esagw5.muc with ESMTP/TLS;
 20 Feb 2020 13:01:38 +0100
Received: from smucm10l.bmwgroup.net (HELO smucm10l.europe.bmw.corp) ([160.48.96.48])
 by esabb3.muc with ESMTP/TLS; 20 Feb 2020 13:01:38 +0100
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by smucm10l.europe.bmw.corp
 (160.48.96.48) with Microsoft SMTP Server (TLS;
 Thu, 20 Feb 2020 13:01:38 +0100
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
 smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1473.005; Thu,
 20 Feb 2020 13:01:37 +0100
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <martin.jansa@gmail.com>
CC: <j.armandohernandez.j@gmail.com>, <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] how to reuse generated library in a nativesdk recipe #sdk #systemd
Thread-Topic: [yocto] how to reuse generated library in a nativesdk recipe
 #sdk #systemd
Thread-Index: AQHV5wg0rpjF7EdG7kGTb2Q0RzuE0KgiM38AgADM44CAAKw3AIAAPe6AgAABpoA=
Date: Thu, 20 Feb 2020 12:01:37 +0000
Message-ID: <20200220120137.GO104502@korppu>
References: <m6OI.1582105039365385215.XDJN@lists.yoctoproject.org>
 <20200219094422.GV104502@korppu>
 <CA+chaQeh2s-T-qXABAkr_28Wp2UZe0-WkZCEOuZ52cnUYtQsfg@mail.gmail.com>
 <20200220081404.GF104502@korppu> <20200220115543.2f3hnbia5tytxfeq@jama>
In-Reply-To: <20200220115543.2f3hnbia5tytxfeq@jama>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <D7F06BB7763B7B41997B4CA46F839CB6@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Feb 20, 2020 at 12:55:43PM +0100, Martin Jansa wrote:
> On Thu, Feb 20, 2020 at 08:14:04AM +0000, Mikko.Rapeli@bmw.de wrote:
> > On Wed, Feb 19, 2020 at 10:57:41PM +0100, Martin Jansa wrote:
> > > > DEPENDS_class-target +=3D "systemd"
> > >=20
> > > You surely meant
> > > DEPENDS_append_class-target =3D " systemd"
> > > here
> >=20
> > Yes, quite likely. Tough reason why +=3D doesn't work is a mystery to m=
e :)
> >=20
> > I hack things until "bitbake -e" shows the right things for the recipes=
.
>=20
> I agree it's a bit confusing at first (I was doing the same long time
> ago, before bitbake -e was even showing the history of evaluation), but
> everybody who uses bitbake often should learn this simple difference:
>=20
> FOO_append_override =3D " bar"
>   is "conditional" append, so it will append "bar" only when "override" i=
s
> being used
>=20
> FOO_override +=3D "bar"
>   always appends to "FOO_override" and then it overrides whole "FOO" vari=
able

Thanks for this explanation!

> There are other more subtle differences like "+=3D" adds leading space,
> _append doesn't and _append is processed later (which is important when
> appending to variable set with ?=3D), but the above difference is a must
> to know.
>=20
> Also
> FOO_append +=3D "bar"
> is just silly way how to add leading space to the value, one should
> always use
> FOO_append =3D " bar"
> when appending to space separated list (like DEPENDS).

Hmm. I would rather see FOO_append +=3D "bar" being used every time when
spaces are expected. It's way too easy to forget the extra space which caus=
es
annoying and hard to debug issues, and is often missed in reviews too.

Cheers,

-Mikko=
