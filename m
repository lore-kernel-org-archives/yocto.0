Received: from esa5.bmw.c3s2.iphmx.com (esa5.bmw.c3s2.iphmx.com [68.232.139.67])
 by mx.groups.io with SMTP id smtpd.web11.2711.1582186448758171502
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Feb 2020 00:14:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bmw.de header.s=mailing1 header.b=pAcmarNY;
 spf=pass (domain: bmw.de, ip: 68.232.139.67, mailfrom: prvs=312a66309=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1582186449; x=1613722449;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=lO8cx3i509MnVyW/wOPYtI/d8Yh+PpLXwu3VZW1AsJ4=;
  b=pAcmarNYads53r3mPwlPFJdYhSsswLBcow36ksT7vL+A+sATeFWiZu6/
   ODT0QOqhOFjVqkhcqwGV56m6n4D8MYMg/lKGHeZIa3bZ3SnYlVN3l8TFw
   /R5mqmtWc5xdPBcEFU8tUDWUklvntuhHdRBE8FHH0sb3M4+egy0ufeZDS
   Q=;
IronPort-SDR: WrfgKNvCvGn+Q0GfObVENTW6HWTVAsYrWVIgoYtTNQAsUKky9Ky8P5Y9VfXFcZDJsBi0OOSjuR
 y0ntOWnHy+v7P5ejFF2Qf8C2h+JGC2BUjsHdvcQzRN0xlCKKD5DvWw8JApPpns3+qDZ1kuccqi
 TAJ6+6Pp1VfVvnrA3DNUWP1f2eL1pMn9roGqMBX60BFtN5NFIJ3Hvnr78BJGJxvC0slyY8l4qZ
 Kf2/uptpmjMDczy1MtMQIlInhBaofT7utKROqFKbL0LgChQfJtxWsmnVW+0DuFBF3YBf3l4Ss+
 IsE=
Received: from esagw5.bmwgroup.com (HELO esagw5.muc) ([160.46.252.46]) by
 esa5.bmw.c3s2.iphmx.com with ESMTP/TLS; 20 Feb 2020 09:14:05 +0100
Received: from esabb5.muc ([160.50.100.47])  by esagw5.muc with ESMTP/TLS;
 20 Feb 2020 09:14:04 +0100
Received: from smucm10j.bmwgroup.net (HELO smucm10j.europe.bmw.corp) ([160.48.96.46])
 by esabb5.muc with ESMTP/TLS; 20 Feb 2020 09:14:04 +0100
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by smucm10j.europe.bmw.corp
 (160.48.96.46) with Microsoft SMTP Server (TLS;
 Thu, 20 Feb 2020 09:14:04 +0100
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
 smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1473.005; Thu,
 20 Feb 2020 09:14:04 +0100
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <martin.jansa@gmail.com>
CC: <j.armandohernandez.j@gmail.com>, <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] how to reuse generated library in a nativesdk recipe #sdk #systemd
Thread-Topic: [yocto] how to reuse generated library in a nativesdk recipe
 #sdk #systemd
Thread-Index: AQHV5wg0rpjF7EdG7kGTb2Q0RzuE0KgiM38AgADM44CAAKw3AA==
Date: Thu, 20 Feb 2020 08:14:04 +0000
Message-ID: <20200220081404.GF104502@korppu>
References: <m6OI.1582105039365385215.XDJN@lists.yoctoproject.org>
 <20200219094422.GV104502@korppu>
 <CA+chaQeh2s-T-qXABAkr_28Wp2UZe0-WkZCEOuZ52cnUYtQsfg@mail.gmail.com>
In-Reply-To: <CA+chaQeh2s-T-qXABAkr_28Wp2UZe0-WkZCEOuZ52cnUYtQsfg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <4DECD9FC49F6D441946FB38A007AFB10@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 19, 2020 at 10:57:41PM +0100, Martin Jansa wrote:
> > DEPENDS_class-target +=3D "systemd"
>=20
> You surely meant
> DEPENDS_append_class-target =3D " systemd"
> here

Yes, quite likely. Tough reason why +=3D doesn't work is a mystery to me :=
)

I hack things until "bitbake -e" shows the right things for the recipes.

-Mikko

> On Wed, Feb 19, 2020 at 10:48 PM Mikko Rapeli <mikko.rapeli@bmw.de> wrot=
e:
>=20
> > Hi,
> >
> > On Wed, Feb 19, 2020 at 01:37:19AM -0800, Armando Hernandez wrote:
> > > Hello,
> > >
> > > I have a recipe that builds a library. The recipe specifies an
> > additional package "${PN}-systemd" along with other systemd related
> > variables and finally it instructs that the package should be built wi=
th
> > "-DWITH_SYSTEMD=3DON" being passed to cmake. So far so good. But, I ex=
tended
> > this recipe to nativesdk because I need this library on it. When tryin=
g to
> > build the corresponding nativesdk package, the build fails at the
> > configuration step (i.e. "do_configure") claiming it cannot find the
> > package systemd.
> > >
> > > Is there a way I can install the -already-generated libraries into m=
y
> > SDK (potentially via the corresponding nativesdk recipe) without havin=
g to
> > rebuild the package? Or do I need to somehow include such systemd pack=
age
> > in my sdk (which I don't think I need at all)?
> > >
> > > Any hints and pointers as to were to look at are very well appreciat=
ed.
> > > Thanks.
> >
> > Make the systemd dependency for target only, e.g. DEPENDS_class-target=
 +=3D
> > "systemd"
> > etc.
> >
> > There may be relevant use cases to build some of systemd components or
> > tools
> > to native or nativesdk targets too. In that case add BBCLASSEXTEND +=
=3D
> > "nativesdk" etc
> > in a bbappend to systemd.
> >
> > Hope this helps,
> >
> > -Mikko
> >
