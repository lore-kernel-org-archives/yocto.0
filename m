Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.3359.1605078279597753332
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Nov 2020 23:04:40 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@bmw.de header.s=mailing1 header.b=qd4ch3pW;
 spf=neutral (domain: bmw.de, ip: 198.145.29.25, mailfrom: prvs=577f07fd8=mikko.rapeli@bmw.de)
Received: from esa11.hc324-48.eu.iphmx.com (esa11.hc324-48.eu.iphmx.com [207.54.69.30])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 702B838C04F0
	for <yocto@yoctoproject.org>; Wed, 11 Nov 2020 07:04:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1605078278; x=1636614278;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=a72OBZRVADR9RR3qK6/aBjIMRU94aTIUMRfhDjPmEBQ=;
  b=qd4ch3pW7b8zZ5MnvwSABo72/BBJUh+Z0zeQunuk5d2mn/8cOv64xYFE
   kA0HGLNxNodvM9oatjBHd9wK1VplPbk6lmdB3Rhm1UYDRpJ5uUnmB+mP2
   uitXsgGf++IBB5rPgF+doUkHpajYIiKEq4XQNqN1mxUuoAcozQiO0jDXE
   0=;
Received: from esagw3.bmwgroup.com (HELO esagw3.muc) ([160.46.252.35]) by
 esa11.hc324-48.eu.iphmx.com with ESMTP/TLS; 11 Nov 2020 08:04:34 +0100
Received: from esabb3.muc ([160.50.100.30])  by esagw3.muc with ESMTP/TLS;
 11 Nov 2020 08:04:26 +0100
Received: from smucm10j.bmwgroup.net (HELO smucm10j.europe.bmw.corp) ([160.48.96.46])
 by esabb3.muc with ESMTP/TLS; 11 Nov 2020 08:04:26 +0100
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by smucm10j.europe.bmw.corp
 (160.48.96.46) with Microsoft SMTP Server (TLS;
 Wed, 11 Nov 2020 08:04:25 +0100
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
 smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1497.007; Wed,
 11 Nov 2020 08:04:26 +0100
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <marek.belisko@gmail.com>
CC: <yocto@yoctoproject.org>
Subject: Re: [yocto] python bump
Thread-Topic: [yocto] python bump
Thread-Index: AQHWt5Gg7fGcj3SXV0e7nDkMy5aaNqnCceCA
Date: Wed, 11 Nov 2020 07:04:26 +0000
Message-ID: <20201111070425.GM1246345@korppu>
References: <CAAfyv37ayVuQRRk+oKAX_=HtMeN_oGW+tCGCw2F8GEPBOzCdbQ@mail.gmail.com>
In-Reply-To: <CAAfyv37ayVuQRRk+oKAX_=HtMeN_oGW+tCGCw2F8GEPBOzCdbQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <62FB82DC5939D14AA39D1CDD0CA950EF@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Nov 10, 2020 at 07:44:39PM +0100, Marek Belisko wrote:
> Hi,
>=20
> I'm using poky release thud and would like to bump python3 to 3.8.x. I
> took recipe from most recent poky version but I'm hitting issue with
> e.g. meson build like:
> Log data follows:
> | DEBUG: Executing shell function do_configure
> | Traceback (most recent call last):
> |   File "setup.py", line 25, in <module>
> |     from setuptools import setup
> | ModuleNotFoundError: No module named 'setuptools'
>=20
> Are there some other things I need to take care when want to bump python3=
?

When backporting changes, I find it better to cherry-pick the changes for e=
.g.
python3 update from master to the old branch that I have to use. In my case=
 I can
not update anything which breaks ABIs on target images but can update all
development tools like python3. Often fixes and/or updates to components wh=
ich
fail to build are also easy to find from master and cherry-pick, especially=
 if you
don't need to build all recipes from poky but only a certain subset. Over
time this will make your local branch look horrible though, but at least
merges from stable branches will in most cases work, if they are still aliv=
e.

But like Alex said, using 3.1 dunfell LTS or 3.2 gatesgarth would be better=
.

Hope this helps,

-Mikko=
