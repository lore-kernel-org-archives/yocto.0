Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.4240.1605084409196008120
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Nov 2020 00:46:49 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@bmw.de header.s=mailing1 header.b=DeG2skWZ;
 spf=neutral (domain: bmw.de, ip: 198.145.29.25, mailfrom: prvs=577f07fd8=mikko.rapeli@bmw.de)
Received: from esa10.hc324-48.eu.iphmx.com (esa10.hc324-48.eu.iphmx.com [207.54.69.29])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 21DFE38C04AD
	for <yocto@yoctoproject.org>; Wed, 11 Nov 2020 08:46:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1605084407; x=1636620407;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=ZR36ajPmCd3dRsT61HRS64wz8Qdpq69KWGATEX6Jj68=;
  b=DeG2skWZeUDRZILe2VbjePkzTQsJSYNRVJ2efaJfw1Prti32gaHEVYAv
   PzkQ+nNTjnvPd+wjtFRl9oKXOUSxVr855K+37M3Gdq1J13BlZbP7wVUFp
   CReBUXJJCJIlJIr9xRHOpPzIrDJv08DxeVnWni0Z58WmIhiEQ+PLqgUo8
   E=;
Received: from esagw1.bmwgroup.com (HELO esagw1.muc) ([160.46.252.34]) by
 esa10.hc324-48.eu.iphmx.com with ESMTP/TLS; 11 Nov 2020 09:46:40 +0100
Received: from esabb5.muc ([160.50.100.47])  by esagw1.muc with ESMTP/TLS;
 11 Nov 2020 09:46:40 +0100
Received: from smucm10j.bmwgroup.net (HELO smucm10j.europe.bmw.corp) ([160.48.96.46])
 by esabb5.muc with ESMTP/TLS; 11 Nov 2020 09:46:40 +0100
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by smucm10j.europe.bmw.corp
 (160.48.96.46) with Microsoft SMTP Server (TLS;
 Wed, 11 Nov 2020 09:46:39 +0100
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
 smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1497.007; Wed,
 11 Nov 2020 09:46:40 +0100
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <marek.belisko@gmail.com>
CC: <yocto@yoctoproject.org>
Subject: Re: [yocto] python bump
Thread-Topic: [yocto] python bump
Thread-Index: AQHWt5Gg7fGcj3SXV0e7nDkMy5aaNqnCceCAgAAJ2wCAABK0AA==
Date: Wed, 11 Nov 2020 08:46:39 +0000
Message-ID: <20201111084638.GR1246345@korppu>
References: <CAAfyv37ayVuQRRk+oKAX_=HtMeN_oGW+tCGCw2F8GEPBOzCdbQ@mail.gmail.com>
 <20201111070425.GM1246345@korppu>
 <CAAfyv36zE2VNcK6F6c1nKuYb3ORei5paG1VD2YheWWh-+OhZDA@mail.gmail.com>
In-Reply-To: <CAAfyv36zE2VNcK6F6c1nKuYb3ORei5paG1VD2YheWWh-+OhZDA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <94CE8CBD517419489DCC1ED0A7C80A8E@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 11, 2020 at 08:39:42AM +0100, Belisko Marek wrote:
> On Wed, Nov 11, 2020 at 8:04 AM <Mikko.Rapeli@bmw.de> wrote:
> >
> > Hi,
> >
> > On Tue, Nov 10, 2020 at 07:44:39PM +0100, Marek Belisko wrote:
> > > Hi,
> > >
> > > I'm using poky release thud and would like to bump python3 to 3.8.x. =
I
> > > took recipe from most recent poky version but I'm hitting issue with
> > > e.g. meson build like:
> > > Log data follows:
> > > | DEBUG: Executing shell function do_configure
> > > | Traceback (most recent call last):
> > > |   File "setup.py", line 25, in <module>
> > > |     from setuptools import setup
> > > | ModuleNotFoundError: No module named 'setuptools'
> > >
> > > Are there some other things I need to take care when want to bump pyt=
hon3?
> >
> > When backporting changes, I find it better to cherry-pick the changes f=
or e.g.
> > python3 update from master to the old branch that I have to use. In my =
case I can
> > not update anything which breaks ABIs on target images but can update a=
ll
> > development tools like python3. Often fixes and/or updates to component=
s which
> > fail to build are also easy to find from master and cherry-pick, especi=
ally if you
> > don't need to build all recipes from poky but only a certain subset. Ov=
er
> > time this will make your local branch look horrible though, but at leas=
t
> > merges from stable branches will in most cases work, if they are still =
alive.
> Thanks for sharing. But I'm using official poky release from git so I
> cannot cherry pick changes.
> Or you have clone of poky repo and add changes on top from newest version=
s?

Locally, as developer you always have a local branch where you can cherry-p=
ick
changes. With git submodules and repo tooling, you should use a local or
project specific clone of poky. Or move all updates and changes to your own
layers, but I find this doesn't scale and instead branching in git works
better.

Cheers,

-Mikko=
