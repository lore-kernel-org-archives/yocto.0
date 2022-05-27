Return-Path: <mikko.rapeli@bmw.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD81FC433EF
	for <webhook@archiver.kernel.org>; Fri, 27 May 2022 15:24:09 +0000 (UTC)
Received: from esa4.hc324-48.eu.iphmx.com (esa4.hc324-48.eu.iphmx.com
 [207.54.71.48])
 by mx.groups.io with SMTP id smtpd.web10.4933.1653665043145702488
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 May 2022 08:24:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bmw.de header.s=mailing1 header.b=RgZxce8q;
 spf=pass (domain: bmw.de, ip: 207.54.71.48,
 mailfrom: prvs=139699e56=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1653665043; x=1685201043;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=GM3Q39kam7JvVXPQKP9DIIIdLVkkYaSJ7SiJWCWpObM=;
  b=RgZxce8qmutCV9rYFrCDn/Cf3nkZ8iVAotdo498LgPUAByz89Wfks2Ox
   ntQwkkTIsw4UUC7rTkSKO0n0tB4JbV/ZWy71PLgu5LTITmvaTtwhVOeBX
   Wv/BmOxMubbjTsVuHq6nLLMx9tJ3WzsGDuk1ykhaHIoqwWP1irafr0BlC
   c=;
Received: from esagw5.bmwgroup.com (HELO esagw5.muc) ([160.46.252.46]) by
 esa4.hc324-48.eu.iphmx.com with ESMTP/TLS; 27 May 2022 17:23:59 +0200
Received: from esabb1.muc ([160.50.100.31])  by esagw5.muc with ESMTP/TLS;
 27 May 2022 17:23:55 +0200
Received: from smucm14j.bmwgroup.net (HELO smucm14j.europe.bmw.corp)
 ([160.48.96.62])
 by esabb1.muc with ESMTP/TLS; 27 May 2022 17:23:56 +0200
Received: from SMUCMP08F.europe.bmw.corp (10.30.13.72) by
 smucm14j.europe.bmw.corp
 (160.48.96.62) with Microsoft SMTP Server (TLS;
 Fri, 27 May 2022 17:23:55 +0200
Received: from SMUCMP08E.europe.bmw.corp (10.30.13.71) by
 SMUCMP08F.europe.bmw.corp
 (10.30.13.72) with Microsoft SMTP Server (version=TLS;
 Fri, 27 May 2022 17:23:55 +0200
Received: from SMUCMP08E.europe.bmw.corp ([10.30.13.71]) by
 SMUCMP08E.europe.bmw.corp ([10.30.13.71]) with mapi id 15.02.0922.027; Fri,
 27 May 2022 17:23:55 +0200
From: <Mikko.Rapeli@bmw.de>
To: <dan@engineeredarts.co.uk>
CC: <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] host file contamination with recipes using cmake and
 find_package
Thread-Topic: [yocto] host file contamination with recipes using cmake and
 find_package
Thread-Index: AQHYcdubyXwGeq/xqESPtKZpydbiNa0ytk4A
Date: Fri, 27 May 2022 15:23:54 +0000
Message-ID: <YpDtCghBbiV8fiZO@korppu>
References: <VDCD.1653664077949368330.uKFK@lists.yoctoproject.org>
In-Reply-To: <VDCD.1653664077949368330.uKFK@lists.yoctoproject.org>
Accept-Language: en-US, de-DE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <B3E0B20B1FC44B49BA73121F4AF6785C@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 May 2022 15:24:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57202

Hi,

On Fri, May 27, 2022 at 08:07:57AM -0700, Daniel Squires wrote:
> Hi,
> We have an internal source tree, I'll call it libA for brevity here, whic=
h uses cmake and find_package to build against openssl as follows:
>=20
> find_package(OpenSSL REQUIRED)
>=20
> The recipe for this source runs fine but some subsequent ones that depend=
 on it (libB, libC etc) fail on some systems saying that a library file (li=
bcrypto.so.1.1) required by libA cannot be found. Now it seems that the bui=
ld for libA is managing to find and link against=A0libcrypto.so.1.1 from th=
e host libraries found under /usr. I have seen issues like this many years =
ago but not experienced any such issues since then until recently.
>=20
> Do we need to do something special in the recipe to prevent this happenin=
g? At first I thought I was going to find some hardcoded=A0 absolute paths =
in the CMakeLists.txt file of libA as I have in the past but there is nothi=
ng like that.

Usually the problem is that the application CMakeLists.txt or other custom =
CMake
snippet code is not obeying the bitbake generated toolchain.cmake file and =
the
variables set there. I presume your application recipe is doing "inherit cm=
ake".
The application side can for example overwrite the various variables which =
set
the cross compiler sysroot.

Cheers,

-Mikko=

