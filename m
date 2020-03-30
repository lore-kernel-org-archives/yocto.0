Received: from esa3.bmw.c3s2.iphmx.com (esa3.bmw.c3s2.iphmx.com [68.232.133.150])
 by mx.groups.io with SMTP id smtpd.web10.45068.1585551494741026419
 for <yocto@lists.yoctoproject.org>;
 Sun, 29 Mar 2020 23:58:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bmw.de header.s=mailing1 header.b=SjWdgNqo;
 spf=pass (domain: bmw.de, ip: 68.232.133.150, mailfrom: prvs=3511a2862=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1585551495; x=1617087495;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=mboAfVmdXAAaJDbV/oTapECVYDGOmUMY6zpBAc16IKQ=;
  b=SjWdgNqohI9QFkQMFMp1CT4jR/WoQ42AergxtDXcMdCgt9OEc7BOg2cZ
   8RTOd9JQQbC6/ktYugK14RrFlrfPgbs4hMLowBVvcN1ihZ/kcuAPnP3hc
   xh9m+ou7WePhFdk7VJziCNaEhr6PHn3LFHzsbGdiJN66cOkEPRb0sOoz5
   U=;
Received: from esagw4.bmwgroup.com (HELO esagw4.muc) ([160.46.252.39]) by
 esa3.bmw.c3s2.iphmx.com with ESMTP/TLS; 30 Mar 2020 08:58:13 +0200
Received: from esabb3.muc ([160.50.100.30])  by esagw4.muc with ESMTP/TLS;
 30 Mar 2020 08:58:10 +0200
Received: from smucm10l.bmwgroup.net (HELO smucm10l.europe.bmw.corp) ([160.48.96.48])
 by esabb3.muc with ESMTP/TLS; 30 Mar 2020 08:57:50 +0200
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by smucm10l.europe.bmw.corp
 (160.48.96.48) with Microsoft SMTP Server (TLS;
 Mon, 30 Mar 2020 08:57:50 +0200
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
 smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1473.005; Mon,
 30 Mar 2020 08:57:50 +0200
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <ajama@hcl.com>
CC: <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Fw: Reducing rootfs size in yocto
Thread-Topic: [yocto] Fw: Reducing rootfs size in yocto
Thread-Index: AQHWBQOpsr5y8icioEWpKGlX+EE4S6hd/pa9gAKW5gA=
Date: Mon, 30 Mar 2020 06:57:50 +0000
Message-ID: <20200330065748.GS104502@korppu>
References: <HK0PR04MB29144DAFD598E96154278145B4CD0@HK0PR04MB2914.apcprd04.prod.outlook.com>
 <HK0PR04MB291491325C57709CD3461BB9B4CD0@HK0PR04MB2914.apcprd04.prod.outlook.com>
In-Reply-To: <HK0PR04MB291491325C57709CD3461BB9B4CD0@HK0PR04MB2914.apcprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <661131961C22AD4E92AEB566614F228F@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

Hi,

Generic approaches for reducing yocto target image size where buildhistory
is an important source of information:

 * review and minimize distro features, enable only what you need
   https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#re=
f-features-distro

 * review and minimize image recipe, install only those image features and =
packages
   which you need
   https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#re=
f-features-image

 * review the needed binary packages: traverse the tree of dependencies wha=
t you need,
   review every single recipe and change PACKAGECONFIG or build flags to re=
move
   features which you do not need. This it may be possible to remove large =
set
   of dependencies from images, e.g. language bindings, debug tools. In som=
e cases
   one just needs a single binary executable or shared library but it is bu=
ndled
   in a larger binary package with more complex dependencies. For these cas=
es
   add a bbappend to custom layers to change the packaging to only include =
what
   you need.
   https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#va=
r-PACKAGECONFIG

 * change compiler flags from default O2 to Os optimization. This can work =
for
   some recipes which are not prerformance critical or to the whole build. =
Note
   that many SW components break this in their own build scripts by adding
   O2 or even O3 by default. Check from buildhistory that binary sizes go s=
maller
   after switch from O2 to Os and review every important recipe which did n=
ot.
   You may be able to save up to 15% in rootfs size this way, but all depen=
ds
   on the details of SW components and image contents.
   see poky/meta/conf/bitbake.conf

I've followed this for multiple products and found out that poky is nice to=
 work with
but BSP layers add or depend on all kinds of extra things that products do =
not need.
Thus I have ended by BBMASK'ing away large parts of BSP layer recipes in di=
stro
configs. This with multiple x86 and ARM BSP layers from various SoC vendors=
.

Also, RTFM :)

https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#build=
ing-a-tiny-system

Hope this helps,

-Mikko=
