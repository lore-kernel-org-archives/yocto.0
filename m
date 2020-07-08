Received: from esa14.hc324-48.eu.iphmx.com (esa14.hc324-48.eu.iphmx.com [207.54.69.24])
 by mx.groups.io with SMTP id smtpd.web10.12458.1594220259244766020
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Jul 2020 07:57:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bmw.de header.s=mailing1 header.b=mT/0akXQ;
 spf=pass (domain: bmw.de, ip: 207.54.69.24, mailfrom: prvs=45173159e=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1594220259; x=1625756259;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=MDNBLtWlZD0fjBtpmCriLkeU4msSxibTdTl0mW/c/eI=;
  b=mT/0akXQHlOhNYjVDlBwWEik1EcvcpFgqzlFwRnaGUnA/fvq4HkXUFJ1
   PJ2tK2OhakBcgvCiFThsUUBtEfEoJ2J8+brndYc6ojCdD7lzf9stvPa8F
   XyVMwyVwwfP9Ot9jKwGwLwwu/zxkRremJOuXexbREV8OmxKuGD1BgfMx5
   Q=;
Received: from esagw3.bmwgroup.com (HELO esagw3.muc) ([160.46.252.35]) by
 esa14.hc324-48.eu.iphmx.com with ESMTP/TLS; 08 Jul 2020 16:57:37 +0200
Received: from esabb6.muc ([160.50.100.50])  by esagw3.muc with ESMTP/TLS;
 08 Jul 2020 16:57:36 +0200
Received: from smucm10m.bmwgroup.net (HELO smucm10m.europe.bmw.corp) ([160.48.96.49])
 by esabb6.muc with ESMTP/TLS; 08 Jul 2020 16:57:35 +0200
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by smucm10m.europe.bmw.corp
 (160.48.96.49) with Microsoft SMTP Server (TLS;
 Wed, 8 Jul 2020 16:57:35 +0200
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
 smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1497.006; Wed, 8
 Jul 2020 16:57:35 +0200
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <pankaj.vj@exaleapsemi.com>
CC: <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] ERROR: iso-codes-4.4-r0
Thread-Topic: [yocto] ERROR: iso-codes-4.4-r0
Thread-Index: AQHWVTd8OkBv+bEzxE+3NKxjAtbxk6j9pEGA
Date: Wed, 8 Jul 2020 14:57:35 +0000
Message-ID: <20200708145733.GE108868@korppu>
References: <9C9o.1594219950238454277.qCPQ@lists.yoctoproject.org>
In-Reply-To: <9C9o.1594219950238454277.qCPQ@lists.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <CC97C628EC43EB4CA6E89F4FF40890DB@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jul 08, 2020 at 07:52:30AM -0700, Pankaj  Vinadrao Joshi wrote:
> I am trying to build yocto image for RPI4 but i am getting following erro=
r
>=20
> pankaj@exaleap-Inspiron-3584:~/raspberrypi4_image$ bitbake core-image-sat=
o
> Parsing recipes: 100% |##################################################=
###########################################################################=
#########################################| Time: 0:09:59
> Parsing of 2198 .bb files complete (0 cached, 2198 parsed). 3282 targets,=
 147 skipped, 0 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
>=20
> Build Configuration:
> BB_VERSION=A0 =A0 =A0 =A0 =A0 =A0=3D "1.46.0"
> BUILD_SYS=A0 =A0 =A0 =A0 =A0 =A0 =3D "x86_64-linux"
> NATIVELSBSTRING=A0 =A0 =A0 =3D "universal"
> TARGET_SYS=A0 =A0 =A0 =A0 =A0 =A0=3D "arm-poky-linux-gnueabi"
> MACHINE=A0 =A0 =A0 =A0 =A0 =A0 =A0 =3D "raspberrypi4"
> DISTRO=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=3D "poky"
> DISTRO_VERSION=A0 =A0 =A0 =A0=3D "3.1"
> TUNE_FEATURES=A0 =A0 =A0 =A0 =3D "arm vfp cortexa7 neon vfpv4 thumb callc=
onvention-hard"
> TARGET_FPU=A0 =A0 =A0 =A0 =A0 =A0=3D "hard"
> meta
> meta-poky
> meta-yocto-bsp=A0 =A0 =A0 =A0=3D "dunfell:9c8049068406532c3dd5d8906c59521=
8b0fefd40"
> meta-oe
> meta-python
> meta-networking
> meta-multimedia=A0 =A0 =A0 =3D "dunfell:e413c1ef621688e69bb7830bb3151ed23=
b30b73e"
> meta-raspberrypi=A0 =A0 =A0=3D "master:5ac6f013339b0b1ab2d71f9f6af48a186e=
126c19"
>=20
> Initialising tasks: 100% |###############################################=
###########################################################################=
#########################################| Time: 0:00:18
> Sstate summary: Wanted 1395 Found 0 Missed 1395 Current 1738 (0% match, 5=
5% complete)
> NOTE: Executing Tasks
> WARNING: iso-codes-4.4-r0 do_fetch: Failed to fetch URL git://salsa.debia=
n.org/iso-codes-team/iso-codes.git;protocol=3Dhttp, attempting MIRRORS if a=
vailable
> ERROR: iso-codes-4.4-r0 do_fetch: Fetcher failure: Unable to find revisio=
n 38edb926592954b87eb527124da0ec68d2a748f3 in branch master even from upstr=
eam
> ERROR: iso-codes-4.4-r0 do_fetch: Fetcher failure for URL: 'git://salsa.d=
ebian.org/iso-codes-team/iso-codes.git;protocol=3Dhttp'. Unable to fetch UR=
L from any source.
> ERROR: Logfile of failure stored in: /home/pankaj/raspberrypi4_image/tmp/=
work/all-poky-linux/iso-codes/4.4-r0/temp/log.do_fetch.24501
> ERROR: Task (/home/pankaj/Yocto-practice/poky/meta/recipes-support/iso-co=
des/iso-codes_4.4.bb:do_fetch) failed with exit code '1'
>=20
> can someone help me how i can resolve this error?

Debian developers changed branch names in their repository.

Fixed in latest master and dunfell branches so either update or cherry-pick=
 the
changes:

https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=3Ddunfell&id=3Dc2=
53fd28ad26b4996666b0794dfee1d59c14e3ca

https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D75e91b8e52ec77=
398e6b0fc09456e971662d9d7e

Cheers,

-Mikko=
