Received: from esa1.bmw.c3s2.iphmx.com (esa1.bmw.c3s2.iphmx.com [68.232.133.201])
 by mx.groups.io with SMTP id smtpd.web10.1422.1575277402045002240
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Dec 2019 01:03:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bmw.de header.s=mailing1 header.b=lCy5h2b0;
 spf=pass (domain: bmw.de, ip: 68.232.133.201, mailfrom: prvs=2322e7b47=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1575277403; x=1606813403;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=3bNDqjY7JbAo1OZT7K82GsnOAlJTryItBd9D/VSKgkE=;
  b=lCy5h2b0IUMGB5cEqApNdN69N9vlZ5MDKgO6aOXtjmcxwfOysQS6cOqU
   gtuho4boClYhQE1CfGYfW0S2EqxFQfTPWdNSI2U0dQyluMaHpm8ohSU6m
   zg9eXYdFzpfgHTEDIiQNOD6rq5nc4to2HyDgKmeO2Urcyz5pzsR9fv5jh
   k=;
IronPort-SDR: 1g9KKpgoAPSVcGgeLdqcT5fPaRxv5NJCuwIQqou/uwRJnWHH9JlTxsdtfhTkrtB1DyvpHY2E8r
 vcJXj++hqg6/NO/qba3ds9HwHiedFyr5wUXjMQ1MkCOSl5qSZTWPDTTDpKCX7MEpOXlMJ1asde
 +Y4iZeTmpGtlXLzvcZjarvlR8GdUQFtn6p6oYjLzJv2PcJmbYEaRHw58dce6VNl4NBWds7Fwas
 1gvk1tBeBVUmp4nfe/ooQhmiNCqnl83jDudCEsgKw8q1odHqbMRckyrfFGqT0L5Yg+ABFAyQun
 gnA=
Received: from esagw6.bmwgroup.com (HELO esagw6.muc) ([160.46.252.49]) by
 esa1.bmw.c3s2.iphmx.com with ESMTP/TLS; 02 Dec 2019 10:01:57 +0100
Received: from esabb3.muc ([160.50.100.30])  by esagw6.muc with ESMTP/TLS;
 02 Dec 2019 10:01:55 +0100
Received: from smucm10k.bmwgroup.net (HELO smucm10k.europe.bmw.corp) ([160.48.96.47])
 by esabb3.muc with ESMTP/TLS; 02 Dec 2019 10:01:54 +0100
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by smucm10k.europe.bmw.corp
 (160.48.96.47) with Microsoft SMTP Server (TLS;
 Mon, 2 Dec 2019 10:01:53 +0100
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
 smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1473.005; Mon, 2
 Dec 2019 10:01:53 +0100
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <peter@berginkonsult.se>
CC: <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] linux-libc-headers - how to handle for older kernels?
Thread-Topic: [yocto] linux-libc-headers - how to handle for older kernels?
Thread-Index: AQHVqJJSvJlOU9RAhEeZfZeyLe0uqqemfF+A
Date: Mon, 2 Dec 2019 09:01:53 +0000
Message-ID: <20191202090153.GC3527@hiutale>
References: <93249840-e25f-bb2d-39af-325c15ae7afe@berginkonsult.se>
In-Reply-To: <93249840-e25f-bb2d-39af-325c15ae7afe@berginkonsult.se>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <E9154C2056C3AD4A83B516B7A835BCAF@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

Hi,

On Sun, Dec 01, 2019 at 10:57:15PM +0100, Peter Bergin wrote:
> Hi,
>=20
> I'm currently working in a project using Yocto 2.6 (thud) release. It has
> default kernel v4.18 and also linux-libc-headers from kernel v4.18. In my
> project we will use kernel v4.1. I would like advice how to handle the
> linux-libc-headers package for my project, should I use the v4.18 headers=
 or
> should I use the v4.1 header files which matches the running kernel?
>=20
> > From https://www.kernel.org/doc/html/latest/kbuild/headers_install.html=
:
> "Kernel headers are backwards compatible, but not forwards compatible. Th=
is
> means that a program built against a C library using older kernel headers
> should run on a newer kernel (although it may not have access to new
> features), but a program built against newer kernel headers may not work =
on
> an older kernel."
>=20
> With the information from the quote above I would directly use v4.1 heade=
rs
> as my linux-libc-headers. But then reading the information in the file
> meta/recipes-kernel/linux-libc-headers/linux-libc-headers.inc makes me th=
ink
> another round. It states:
>=20
> "
> # You're probably looking here thinking you need to create some new copy
> # of linux-libc-headers since you have your own custom kernel. To put
> # this simply, you DO NOT.
> ...
> # There can also be a case where your kernel extremely old and you want
> # an older libc ABI for that old kernel. The headers installed by this
> # recipe should still be a standard mainline kernel, not your own custom
> # one.
> "
>=20
> The first part states that I should not change linux-libc-headers. But wh=
en
> I read the last part I'm not sure about the interpretation and it could b=
e
> for my case. Just a matter of definition if v4.1 is extremely old compare=
d
> to v4.18.
>=20
> Then another thing comes in to the equation; the LIBC ABI. When I look in=
to
> the configuration of the glibc package it uses the configure switch
> "--enable-kernel=3D3.2" which means it shall be compatible with all kerne=
l
> newer than v3.2. Then probably glibc is fine if it is compiled with v4.18
> and run on v4.1?
>=20
> If building all applications against v4.18 headers but run on v4.1 kernel=
. I
> have a feeling that there potentially can be problems here.
>=20
> Please help me with some information about this and share your opinions? =
Are
> there any risks at all to use v4.1 as linux-libc-headers in my Yocto buil=
d?
> The only drawback I see is that it will be a new configuration not well
> tested by the community. Are there other risks or drawbacks using your ow=
n
> version of linux-libc-headers?

I would fork linux-libc-headers to the kernel you are actually using despit=
e the
comment in the file.

That's the only way to export headers from the correct kernel to everyone
who needs them.

There is no other documented way of exporting the actual kernel headers to =
users
in bitbake builds and SDK.

One optimization I would do is to fork the uapi headers from the actual ker=
nel
recipe so that full system does not need to be recompiled when kernel chang=
es.

One needs to manually track for kernel uapi header changes then.

Cheers,

-Mikko=
