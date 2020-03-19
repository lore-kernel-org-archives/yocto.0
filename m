Received: from esa4.bmw.c3s2.iphmx.com (esa4.bmw.c3s2.iphmx.com [68.232.139.62])
 by mx.groups.io with SMTP id smtpd.web10.10169.1584618206738030694
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Mar 2020 04:43:28 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@bmw.de header.s=mailing1 header.b=U6vIs4RE;
 spf=pass (domain: bmw.de, ip: 68.232.139.62, mailfrom: prvs=340a7fc1c=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1584618206; x=1616154206;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=phofJdyXhuWMTmHnZKlwx7EL0pzgTNfwPyv0IyYmSTQ=;
  b=U6vIs4REaxWDrt0TG7PsiK9iRFEITP2fUt1J0/RWCEOvWK7kMPPEt3aI
   8z2aJdha3MlTjTVBI/2X7VQ18jKSkm+pRBKbA0EqEPMiarMY4Flm3uu2b
   ESWyVttCwNRPCOViAad78y9IvLcJzIB497Bs2XbRHFot+w1y4UofEUS2j
   U=;
Received: from esagw3.bmwgroup.com (HELO esagw3.muc) ([160.46.252.35]) by
 esa4.bmw.c3s2.iphmx.com with ESMTP/TLS; 19 Mar 2020 12:43:23 +0100
Received: from esabb3.muc ([160.50.100.30])  by esagw3.muc with ESMTP/TLS;
 19 Mar 2020 12:43:22 +0100
Received: from smucm10k.bmwgroup.net (HELO smucm10k.europe.bmw.corp) ([160.48.96.47])
 by esabb3.muc with ESMTP/TLS; 19 Mar 2020 12:43:23 +0100
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by smucm10k.europe.bmw.corp
 (160.48.96.47) with Microsoft SMTP Server (TLS;
 Thu, 19 Mar 2020 12:43:23 +0100
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
 smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1473.005; Thu,
 19 Mar 2020 12:43:23 +0100
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <richard.purdie@linuxfoundation.org>
CC: <ross@burtonini.com>, <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] What are the key factors for yocto build speed?
Thread-Topic: [yocto] What are the key factors for yocto build speed?
Thread-Index: AQHV/SQvHMEDglrWJECufLQaId00LqhOUpqAgACTXgCAAJk5AIAAMhEAgAAK4QA=
Date: Thu, 19 Mar 2020 11:43:23 +0000
Message-ID: <20200319114322.GX104502@korppu>
References: <rCbr.1584535957803213201.lfzw@lists.yoctoproject.org>
 <f53ec55d-5f43-4ea3-f9a7-827f0f29154f@topic.nl>
 <8032ed75-802c-9dd3-2d76-f468159b90af@burtonini.com>
 <20200319080514.GR104502@korppu>
 <bcab55b919af5da30e9b8fe3db0cc6537ac3f785.camel@linuxfoundation.org>
In-Reply-To: <bcab55b919af5da30e9b8fe3db0cc6537ac3f785.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <D48DBDD9D091564590D8075948D1D090@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 19, 2020 at 11:04:26AM +0000, Richard Purdie wrote:
> On Thu, 2020-03-19 at 08:05 +0000, Mikko Rapeli wrote:
> > Once this is done, IO still happens when anything calls sync() and
> > fsync() and worst offenders are package management tools. In yocto
> > builds, package manager actions to flush to disk are always useless
> > since rootfs images are going to be compressed and original ones
> > wiped by rm_work anyway.
> > I've tried to hook eatmydata library into the build which makes
> > sync() and fsync() calls no-ops but I've still failed to fix all the
> > tools and processes called during build from python code. For shell
> > based tasks this does it:
> >=20
> > $ export LD_LIBRARY_PATH=3D/usr/lib/libeatmydata
> > $ export LD_PRELOAD=3Dlibeatmydata.so
> > $ grep -rn LD_PRELOAD conf/local.conf
> > conf/local.conf:305:BB_HASHBASE_WHITELIST_append =3D " LD_PRELOAD"
> > conf/local.conf:306:BB_HASHCONFIG_WHITELIST_append =3D " LD_PRELOAD"
>=20
> Doesn't pseudo intercept and stop these sync calls already? Its
> supposed to so if its not, we should fix that.

I will double check, but I'm sure I see IO going to disk when plenty of RAM
is still available in page cache.

> > The effect is clearly visible during build time using Performance Co-
> > Pilot (pcp) or similar tools to monitor CPU, memory, IO and network
> > IO. The usage of RAM as page cache grows until limits are hit and
> > only then writes to disk start, except for the python image
> > classes... Hints to fix this are welcome!
> >=20
> > To my knowledge of monitoring our builds, there is a lot of
> > optimization
> > potential to better build times. CPU are under utilized during
> > bitbake recipe parsing
>=20
> Recipe parsing should hit 100% CPU, its one of the few places we can do
> that.

I'm not fully aware what bitbake does before starting task execution.
With sumo, there is an initial spike in CPU use and then a long single
thread wait where log shows "Initialising tasks..." and Cooker process
is using a single core. For me this takes at least one minutes for
every build. Same is visible with zeus too.

Example graph from pmchart:

https://mcfrisk.kapsi.fi/temp/bitbake_start_to_task_execution.png

> > , fetch, configure, package and rootfs tasks.=20
>=20
> Sadly these tasks are much harder.

Yep.

> > Memory is not fully utilized either since IO through sync()/fsync()
> > happens everywhere
>=20
> non-pseudo tasks?

I'll try to check this case once more.

-Mikko=
