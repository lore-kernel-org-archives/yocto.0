Received: from esa7.hc324-48.eu.iphmx.com (esa7.hc324-48.eu.iphmx.com [207.54.71.126])
 by mx.groups.io with SMTP id smtpd.web09.10608.1614091051804514006
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Feb 2021 06:37:32 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@bmw.de header.s=mailing1 header.b=Zz223efP;
 spf=pass (domain: bmw.de, ip: 207.54.71.126, mailfrom: prvs=681a2f65d=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1614091051; x=1645627051;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=lUVQAc2XpvEqv/TbFy5WMlcm+zFX/ZhxjWXVkVP236U=;
  b=Zz223efPXoZfHZBHHXvtwvuEOzEBi/2AiubEOF94uo0XyEsE1IHDthie
   AKpeAZ2ghc4/yu/n7fiN25B6mG2uKTl45qH8Iu4PmUFeX6cOhveYNb3cX
   v+GCZLi8PfYUvG0EsXPptLIA+WPVFf7gaB/V1al4XJ2Jlzcrak3QcNsUb
   o=;
Received: from esagw4.bmwgroup.com (HELO esagw4.muc) ([160.46.252.39]) by
 esa7.hc324-48.eu.iphmx.com with ESMTP/TLS; 23 Feb 2021 15:37:27 +0100
Received: from esabb3.muc ([160.50.100.30])  by esagw4.muc with ESMTP/TLS;
 23 Feb 2021 15:37:27 +0100
Received: from smucm33j.bmwgroup.net (HELO smucm33j.europe.bmw.corp) ([160.46.167.66])
 by esabb3.muc with ESMTP/TLS; 23 Feb 2021 15:37:26 +0100
Received: from smucm33l.europe.bmw.corp (160.46.167.68) by smucm33j.europe.bmw.corp
 (160.46.167.66) with Microsoft SMTP Server (TLS;
 Tue, 23 Feb 2021 15:37:25 +0100
Received: from smucm33l.europe.bmw.corp ([160.46.167.68]) by
 smucm33l.europe.bmw.corp ([160.46.167.68]) with mapi id 15.00.1497.010; Tue,
 23 Feb 2021 15:37:24 +0100
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <cbing@cybernetics.com>
CC: <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Updating Yocto
Thread-Topic: [yocto] Updating Yocto
Thread-Index: AQHXCT32WniIw9ZwJky0adg/5XDiB6plo9gAgAAYLoCAAAOHAA==
Date: Tue, 23 Feb 2021 14:37:24 +0000
Message-ID: <YDUTJJaimtbbFwHL@korppu>
References: <60430e1e-0c5d-9cc4-5496-a6f4152ec976@cybernetics.com>
 <YDT75mK/tmGXsl+z@korppu>
 <17d2c7cd-3c2c-23d3-bb23-efa99a2d7765@cybernetics.com>
In-Reply-To: <17d2c7cd-3c2c-23d3-bb23-efa99a2d7765@cybernetics.com>
Accept-Language: en-US, de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <5F8F1380DF2280489307B984440B1DE9@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 23, 2021 at 09:24:47AM -0500, Claude Bing wrote:
> I mentioned that we remove that directory, and it does indeed solve a
> lot of problems.  Not sure that it was clear from the original message,
> but whenever we get a random error on the first build after the upgrade
> we run a "bitbake -c cleanall" on that package, and everything works
> great. The errors do not show up again.

Yes, we're talking about the same thing :)

A lot of yocto things don't work well if major changes happen and WORKDIR
isn't completely cleaned in between. With various BSP layers things
can be even worse and they may actively break both work directory and
sstate caches.

For any major changes in open source or other meta layers, I wipe build/tmp
completely to avoid random problems. In our CI this is the default.
Only download cache and sstate mirror are re-used between builds.
After this, I don't see many problems and build failures which are not
real bugs in either our changes or in upstream, e.g. race conditions
in build scripts.

Cheers,

-Mikko=
