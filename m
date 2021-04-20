Received: from esa14.hc324-48.eu.iphmx.com (esa14.hc324-48.eu.iphmx.com [207.54.69.24])
 by mx.groups.io with SMTP id smtpd.web12.8699.1618915070280960663
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Apr 2021 03:37:51 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@bmw.de header.s=mailing1 header.b=gCdrChf0;
 spf=pass (domain: bmw.de, ip: 207.54.69.24, mailfrom: prvs=737acabf9=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1618915070; x=1650451070;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=qflV0/JSfmJMwaHDcnCRshMCkP+Z2+rbtfWXFLWR0DE=;
  b=gCdrChf0iULern2z8g3r1Sf6vQz/YuGaIeevibkvrJQhUneecwHQCGpF
   U1IeCyprrtoDJ3IgGk5uO9S+tR9lZCtJrzEsa/ATl7ajDJqbaoaAqhtJC
   iNRaDvSx2gprpiGy1i+aNOfMOS+tYIMn6ayluNYeglnrZcxF8nKq0vGDr
   Q=;
Received: from esagw3.bmwgroup.com (HELO esagw3.muc) ([160.46.252.35]) by
 esa14.hc324-48.eu.iphmx.com with ESMTP/TLS; 20 Apr 2021 12:37:46 +0200
Received: from esabb3.muc ([160.50.100.30])  by esagw3.muc with ESMTP/TLS;
 20 Apr 2021 12:37:46 +0200
Received: from smucm33k.bmwgroup.net (HELO smucm33k.europe.bmw.corp) ([160.46.167.67])
 by esabb3.muc with ESMTP/TLS; 20 Apr 2021 12:37:46 +0200
Received: from smucm33l.europe.bmw.corp (160.46.167.68) by smucm33k.europe.bmw.corp
 (160.46.167.67) with Microsoft SMTP Server (TLS;
 Tue, 20 Apr 2021 12:37:45 +0200
Received: from smucm33l.europe.bmw.corp ([160.46.167.68]) by
 smucm33l.europe.bmw.corp ([160.46.167.68]) with mapi id 15.00.1497.015; Tue,
 20 Apr 2021 12:37:46 +0200
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <anthony.marchand@navocap.com>
CC: <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Yocto Dunfell: u-boot-fw-utils ERROR #yocto #dunfell #swupdtae #libubootenv #imx6
Thread-Topic: [yocto] Yocto Dunfell: u-boot-fw-utils ERROR #yocto #dunfell
 #swupdtae #libubootenv #imx6
Thread-Index: AQHXNc9fbmuR3BvPmEK6qPR/29vmoqq9FUCA
Date: Tue, 20 Apr 2021 10:37:46 +0000
Message-ID: <YH6u+RDEf0uxFWNy@korppu>
References: <i5eY.1618914265035644273.UGev@lists.yoctoproject.org>
In-Reply-To: <i5eY.1618914265035644273.UGev@lists.yoctoproject.org>
Accept-Language: en-US, de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <4B3831F21AFD4745AB95EB03C2E991C5@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Apr 20, 2021 at 03:24:25AM -0700, anthony.marchand@navocap.com wro=
te:
> Hello,
> I'm actually migrating a yocto project zeus version to dunfell LTS to bu=
ild my imx6 Linux system on this LTS release.
>=20
> Almost all works fine except the following message I try to understand w=
hen I try to compile the image:
>=20
> ------------------------------------------------------------------------=
---------------------------------------------------------------------------=
------
> ERROR: Multiple .bb files are due to be built which each provide u-boot-=
fw-utils:=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| ETA:=A0 0:00:01
> Dunfell/build/../meta-mymeta/recipes-bsp/u-boot/u-boot-fw-utils_2018.09.=
bb
> Dunfell/build/../openembedded-core/meta/recipes-bsp/u-boot/libubootenv_0=
.3.1.bb
> A list of tasks depending on these providers is shown and may help expla=
in where the dependency comes from.
> Dunfell/build/../meta-mymeta/recipes-bsp/u-boot/u-boot-fw-utils_2018.09.=
bb has unique dependees:
>=20
> Dunfell/build/../openembedded-core/meta/recipes-bsp/u-boot/libubootenv_0=
.3.1.bb has unique dependees:
> Dunfell/build/../meta-swupdate/recipes-support/swupdate/swupdate_2020.11=
.bb:do_build
> Dunfell/build/../meta-swupdate/recipes-support/swupdate/swupdate_2020.11=
.bb:do_package
> Dunfell/build/../meta-swupdate/recipes-support/swupdate/swupdate_2020.11=
.bb:do_prepare_recipe_sysroot
> It could be that one recipe provides something the other doesn't and sho=
uld. The following provider and runtime provider differences may be helpful=
.
> Dunfell/build/../meta-mymeta/recipes-bsp/u-boot/u-boot-fw-utils_2018.09.=
bb has unique provides:
>=20
> Dunfell/build/../meta-mymeta/recipes-bsp/u-boot/u-boot-fw-utils_2018.09.=
bb has unique rprovides:
> u-boot-fw-utils-dev
> u-boot-fw-utils-locale
> u-boot-fw-utils-dbg
> u-boot-fw-utils-staticdev
> u-boot-fw-utils-doc
> ^u-boot-fw-utils-locale-.*
> u-boot-fw-utils-src
> Dunfell/build/../openembedded-core/meta/recipes-bsp/u-boot/libubootenv_0=
.3.1.bb has unique provides:
> libubootenv
> Dunfell/build/../openembedded-core/meta/recipes-bsp/u-boot/libubootenv_0=
.3.1.bb has unique rprovides:
> libubootenv
> libubootenv-src
> libubootenv-bin
> libubootenv-dbg
> libubootenv-doc
> ^libubootenv-locale-.*
> libubootenv-locale
> libubootenv-dev
> libubootenv-staticdev
> ------------------------------------------------------------------------=
---------------------------------------------------------------------------=
------
> Does someone already meet this problem? Do you know what I should look i=
n for to solve it?

Multiple ways to fix this. One is to switch to using dunfell branches for =
the
BSP SW stack, if they are available. Alternatively you can use the old
zeus based BSP SW stack but for that you need to copy the files which
BSP SW stack depends on poky side from zeus branch to the BSP SW meta laye=
r.

Then things will work out with minor bug fixes or API changes.

For IMX*, I copied the old u-boot recipe files from poky zeus branch over =
to
the BSP so that meta-freescale* and meta-imx find them and prefer over
the newer u-boot version from poky dunfell branch.

Hope this helps,

-Mikko

> Thanks by advance, best reguards.

>=20
>=20
>=20
