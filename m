Received: from esa1.bmw.c3s2.iphmx.com (esa1.bmw.c3s2.iphmx.com [68.232.133.201])
 by mx.groups.io with SMTP id smtpd.web10.1520.1575278385713091596
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Dec 2019 01:19:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bmw.de header.s=mailing1 header.b=J04Pq4Ji;
 spf=pass (domain: bmw.de, ip: 68.232.133.201, mailfrom: prvs=2322e7b47=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1575278386; x=1606814386;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=FIf16+0hwtySWgmFYWy+zm33iZgrdx66n046cPHdH+Q=;
  b=J04Pq4Jiw4omX/k36PClOfwYLa3f/4iIAlEEbD7/6Tax1Ee4/CUutNIo
   pp+o5dQJU6BI/gFcmBr9YyeVaFCSwqxg6KEbT3Gs9vJzeQvPwRc/GJLg6
   l5rb9izGsTL+NQlqNT6O2ZtPVZ5Uet6jc2RT4+RZ8xTG4/HvGTZkIuPLp
   4=;
IronPort-SDR: NHtAMZiZ/R5C2s8r5omAMnGtKsSZJXefnoCtv1uteH/Ct+KnG91NWlQBwRJUzf1kmr2e/qflEG
 LSpUYzYyuW4EEjGJLplpn/XiwMRrEVBCt6F5d26PnUxDOD4xmWcENv38r/t6aRd3XIJc0PdG8G
 YXmVcd4yT5CZJq3mCIR5IZW2vTimuLXFqPgKql0iUK6EXprj2r3G4GD68U1IdjN+NHY9+vCOZ7
 3HZhlI6h0iFlSexy57/ugaDsVgUtiwUq1ZgmFvC8dlMg2fB7fE9a/5zi7D6PPFT3Z79dLosoEt
 /3s=
Received: from esagw4.bmwgroup.com (HELO esagw4.muc) ([160.46.252.39]) by
 esa1.bmw.c3s2.iphmx.com with ESMTP/TLS; 02 Dec 2019 10:19:44 +0100
Received: from esabb5.muc ([160.50.100.47])  by esagw4.muc with ESMTP/TLS;
 02 Dec 2019 10:19:43 +0100
Received: from smucm10j.bmwgroup.net (HELO smucm10j.europe.bmw.corp) ([160.48.96.46])
 by esabb5.muc with ESMTP/TLS; 02 Dec 2019 10:19:42 +0100
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by smucm10j.europe.bmw.corp
 (160.48.96.46) with Microsoft SMTP Server (TLS;
 Mon, 2 Dec 2019 10:19:42 +0100
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
 smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1473.005; Mon, 2
 Dec 2019 10:19:42 +0100
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <mike.looijmans@topic.nl>
CC: <peter@berginkonsult.se>, <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] linux-libc-headers - how to handle for older kernels?
Thread-Topic: [yocto] linux-libc-headers - how to handle for older kernels?
Thread-Index: AQHVqJJSvJlOU9RAhEeZfZeyLe0uqqemf7KAgAABpwA=
Date: Mon, 2 Dec 2019 09:19:42 +0000
Message-ID: <20191202091942.GF3527@hiutale>
References: <93249840-e25f-bb2d-39af-325c15ae7afe@berginkonsult.se>
 <dcb9a8b4-88c5-5b1e-00ba-4b89f809e3d3@topic.nl>
In-Reply-To: <dcb9a8b4-88c5-5b1e-00ba-4b89f809e3d3@topic.nl>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <A509DDB5D997A643846AF4C1DBF87ED6@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Dec 02, 2019 at 09:13:47AM +0000, Mike Looijmans wrote:
> On 01-12-19 22:57, Peter Bergin via Lists.Yoctoproject.Org wrote:
> > Hi,
> >=20
> > I'm currently working in a project using Yocto 2.6 (thud) release. It h=
as=20
> > default kernel v4.18 and also linux-libc-headers from kernel v4.18. In =
my=20
> > project we will use kernel v4.1. I would like advice how to handle the=
=20
> > linux-libc-headers package for my project, should I use the v4.18 heade=
rs or=20
> > should I use the v4.1 header files which matches the running kernel?
> >=20
> >  From https://www.kernel.org/doc/html/latest/kbuild/headers_install.htm=
l:
> > "Kernel headers are backwards compatible, but not forwards compatible. =
This=20
> > means that a program built against a C library using older kernel heade=
rs=20
> > should run on a newer kernel (although it may not have access to new=20
> > features), but a program built against newer kernel headers may not wor=
k on an=20
> > older kernel."
> >=20
> > With the information from the quote above I would directly use v4.1 hea=
ders as=20
> > my linux-libc-headers. But then reading the information in the file=20
> > meta/recipes-kernel/linux-libc-headers/linux-libc-headers.inc makes me =
think=20
> > another round. It states:
> >=20
> > "
> > # You're probably looking here thinking you need to create some new cop=
y
> > # of linux-libc-headers since you have your own custom kernel. To put
> > # this simply, you DO NOT.
> > ...
> > # There can also be a case where your kernel extremely old and you want
> > # an older libc ABI for that old kernel. The headers installed by this
> > # recipe should still be a standard mainline kernel, not your own custo=
m
> > # one.
> > "
> >=20
> > The first part states that I should not change linux-libc-headers. But =
when I=20
> > read the last part I'm not sure about the interpretation and it could b=
e for=20
> > my case. Just a matter of definition if v4.1 is extremely old compared =
to v4.18.
> >=20
> > Then another thing comes in to the equation; the LIBC ABI. When I look =
into=20
> > the configuration of the glibc package it uses the configure switch=20
> > "--enable-kernel=3D3.2" which means it shall be compatible with all ker=
nel newer=20
> > than v3.2. Then probably glibc is fine if it is compiled with v4.18 and=
 run on=20
> > v4.1?
> >=20
> > If building all applications against v4.18 headers but run on v4.1 kern=
el. I=20
> > have a feeling that there potentially can be problems here.
> >=20
> > Please help me with some information about this and share your opinions=
? Are=20
> > there any risks at all to use v4.1 as linux-libc-headers in my Yocto bu=
ild?=20
> > The only drawback I see is that it will be a new configuration not well=
 tested=20
> > by the community. Are there other risks or drawbacks using your own ver=
sion of=20
> > linux-libc-headers?
>=20
>=20
> It is not broken, so please don't fix it.
>=20
> OpenPLi has been using kernels way older than 4.1 with the kernel-headers=
=20
> generated by OE/yocto and did not experience any problems with that. Ther=
e's=20
> about 50+ machines in there that have pre-built binary drivers that only =
work=20
> with a particular kernel config and hence the old stuff.
>=20
> There are some corner-cases with exotic kernels and exotic exports and ex=
otic=20
> boot executables that use the kernel compiler, but I doubt that you're in=
 there...
>=20
> If you have a kernel that exports something that's not in the regular hea=
ders,=20
> it's way better to solve that using a syscall than trying to poke in low =
level=20
> libc stuff.
>=20
> So again, if you don't experience problems, please don't try to fix it...

How to find a Linux kernel uapi header file with custom ioctl() etc definit=
ions which
are missing form the default linux-libc-headers?

Other recipes and SDK builds need these.

Copying the needed header files into the recipes who needs them is not ok.

Cheers,

-Mikko=
